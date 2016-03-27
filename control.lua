require "util"
require "defines"
require ("config")

script.on_init(function() On_Init() end)
script.on_configuration_changed(function() On_Init() end)
script.on_load(function() On_Load() end)

function On_Init()
	if not global.tick then
		global.tick = game.tick
	end
	global.clouds = global.clouds or {}
	if not global.evoFactorFloor then
		if game.evolution_factor > 0.995 then
			global.evoFactorFloor = 10
		else
			global.evoFactorFloor = math.floor(game.evolution_factor * 10)
		end
		global.tick = global.tick + 1800
	end
end

function On_Load()
	if global.disabledEntities then
		script.on_event(defines.events.on_tick, process_tick)
	end
end

function findEntity(entity)
	for i,t in ipairs(global.disabledEntities) do
		if t[1] == entity then
			return i
		end
	end
	return false
end

function entityRemoved(entity)
	local z = findEntity(entity)
	if z then
		table.remove(global.disabledEntities, z)
		local cloud = global.clouds[entity.position.x .. "_" .. entity.position.y]
		if cloud then
			cloud.destroy()
		end
	end
end

function process_tick()
	for i = #global.disabledEntities, 1, -1 do -- Loop over table backwards because some entries get removed within the loop
		local disabled = global.disabledEntities[i]
		local entity = disabled[1]
		if disabled[2] == game.tick then
			if entity then
				entity.active = true
			end
			local cloud = global.clouds[entity.position.x .. "_" .. entity.position.y]
			if cloud then
				cloud.destroy()
			end
			global.clouds[entity.position.x .. "_" .. entity.position.y] = nil
			table.remove(global.disabledEntities, i)
		else
			if entity and math.random(210) == 7 then
				entity.surface.create_entity{name = "EMP-disabled-sound-" .. math.random(4), position = entity.position}
			end
		end
	end
	if #global.disabledEntities == 0 then
		global.disabledEntities = nil
		script.on_event(defines.events.on_tick, nil)
	end
end

function disableEntities(entities, min_duration, max_duration)
	for i, entity in ipairs(entities) do
		if not global.clouds[entity.position.x .. "_" .. entity.position.y] and entity.health > 0 then
			local cloud = entity.surface.create_entity{name = "disabling-EMP-cloud-" .. math.random(4), position = entity.position}
			global.clouds[entity.position.x .. "_" .. entity.position.y] = cloud
			entity.active = false
			table.insert(global.disabledEntities, {entity, game.tick + math.random(min_duration, max_duration)})
		end
	end
end

function EMPBlast(location, surface, size, min_duration, max_duration)
	if size <= 5 then
		surface.create_entity{name = "EMP-blast-small", position = location}
	elseif size <= 10 then
		surface.create_entity{name = "EMP-blast-medium", position = location}
	elseif size <= 15 then
		surface.create_entity{name = "EMP-blast-large", position = location}
	else
		surface.create_entity{name = "EMP-blast-huge", position = location}
	end
	local EMP_area = {{location.x - size, location.y - size}, {location.x + size, location.y + size}}
	local gun_turrets = surface.find_entities_filtered{area = EMP_area, type="ammo-turret"}
	local laser_turrets = surface.find_entities_filtered{area = EMP_area, type="electric-turret"}
	local logistics_bots = surface.find_entities_filtered{area = EMP_area, type="logistic-robot"}
	local construction_bots = surface.find_entities_filtered{area = EMP_area, type="construction-robot"}
	local radars = surface.find_entities_filtered{area = EMP_area, type="radar"}
	if #gun_turrets == 0 and #laser_turrets == 0 and #logistics_bots == 0 and #construction_bots == 0 and #radars == 0 then
		return
	else
		global.disabledEntities = global.disabledEntities or {}
		disableEntities(gun_turrets, min_duration / 2, max_duration / 2)
		disableEntities(laser_turrets, min_duration, max_duration)
		disableEntities(logistics_bots, min_duration, max_duration)
		disableEntities(construction_bots, min_duration, max_duration)
		disableEntities(radars, min_duration, max_duration)
		script.on_event(defines.events.on_tick, process_tick)
	end
end

script.on_event(defines.events.on_entity_died, function(event)
	if global.tick < event.tick then
		if game.evolution_factor > 0.995 then
			global.evoFactorFloor = 10
		else
			global.evoFactorFloor = math.floor(game.evolution_factor * 10)
		end
		global.tick = global.tick + 1800
	end
	if EMPBiterTable[event.entity.name] then
		local percentChance = EMPBiterTable[event.entity.name][2]
		if math.random() < (global.evoFactorFloor / (1000 / percentChance)) then
			local EMP_size = EMPBiterTable[event.entity.name][1]
			local EMP_min_duration = EMPBiterTable[event.entity.name][3]
			local EMP_max_duration = EMPBiterTable[event.entity.name][4]
			EMPBlast(event.entity.position, event.entity.surface, EMP_size, EMP_min_duration, EMP_max_duration)
		end
	end
	if not global.disabledEntities then
		return
	end
	if event.entity.type == "ammo-turret" or event.entity.type == "electric-turret" or event.entity.type == "logistic-robot" or event.entity.type == "construction-robot" then
		event.entity.active = true
		entityRemoved(event.entity)
	end
end)

script.on_event(defines.events.on_preplayer_mined_item, function(event)
	if not global.disabledEntities then return end
	if event.entity.type == "ammo-turret" or event.entity.type == "electric-turret" or event.entity.type == "logistic-robot" or event.entity.type == "construction-robot" then
		entityRemoved(event.entity)
	end
end)

script.on_event(defines.events.on_robot_pre_mined, function(event)
	if not global.disabledEntities then return end
	if event.entity.type == "ammo-turret" or event.entity.type == "electric-turret" then
		entityRemoved(event.entity)
	end
end)

script.on_event(defines.events.on_trigger_created_entity, function(event) -- This handles spitter spit
	if EMPSpitterTable[event.entity.name] then
		local percentChance = EMPSpitterTable[event.entity.name][2]
		if math.random() < (global.evoFactorFloor / (1000 / percentChance)) then
			local EMP_size = EMPSpitterTable[event.entity.name][1]
			local EMP_min_duration = EMPSpitterTable[event.entity.name][3]
			local EMP_max_duration = EMPSpitterTable[event.entity.name][4]
			EMPBlast(event.entity.position, event.entity.surface, EMP_size, EMP_min_duration, EMP_max_duration)
		end
	end
end)
