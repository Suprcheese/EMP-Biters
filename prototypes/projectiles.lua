-- Vanilla
local EMP_acid_projectile_big = util.table.deepcopy(data.raw["projectile"]["acid-projectile-purple"])
local EMP_acid_projectile_behemoth = util.table.deepcopy(data.raw["projectile"]["acid-projectile-purple"])
local EMP_acid_projectile_worm = util.table.deepcopy(data.raw["projectile"]["acid-projectile-purple"])

EMP_acid_projectile_big.name = "EMP-acid-projectile-big"
EMP_acid_projectile_big.action.action_delivery.target_effects[2].entity_name = "EMP-acid-splash-purple-big"
EMP_acid_projectile_big.action.action_delivery.target_effects[2].trigger_created_entity = "true"

EMP_acid_projectile_behemoth.name = "EMP-acid-projectile-behemoth"
EMP_acid_projectile_behemoth.action.action_delivery.target_effects[2].entity_name = "EMP-acid-splash-purple-behemoth"
EMP_acid_projectile_behemoth.action.action_delivery.target_effects[2].trigger_created_entity = "true"

EMP_acid_projectile_worm.name = "EMP-acid-projectile-worm"
EMP_acid_projectile_worm.action.action_delivery.target_effects[2].entity_name = "EMP-acid-splash-purple-worm"
EMP_acid_projectile_worm.action.action_delivery.target_effects[2].trigger_created_entity = "true"

local EMP_acid_splash_big = util.table.deepcopy(data.raw["corpse"]["acid-splash-purple"])
local EMP_acid_splash_behemoth = util.table.deepcopy(data.raw["corpse"]["acid-splash-purple"])
local EMP_acid_splash_worm = util.table.deepcopy(data.raw["corpse"]["acid-splash-purple"])

EMP_acid_splash_big.name = "EMP-acid-splash-purple-big"
EMP_acid_splash_behemoth.name = "EMP-acid-splash-purple-behemoth"
EMP_acid_splash_worm.name = "EMP-acid-splash-purple-worm"

data:extend({EMP_acid_projectile_big, EMP_acid_projectile_behemoth, EMP_acid_projectile_worm, EMP_acid_splash_big, EMP_acid_splash_behemoth, EMP_acid_splash_worm})

data.raw["unit"]["big-spitter"].attack_parameters.ammo_type.action.action_delivery.projectile = "EMP-acid-projectile-big"
data.raw["unit"]["behemoth-spitter"].attack_parameters.ammo_type.action.action_delivery.projectile = "EMP-acid-projectile-behemoth"

if not data.raw["projectile"]["area-acid-projectile-purple"] then -- Bob's Enemies already edits the Big Worm
	data.raw["turret"]["big-worm-turret"].attack_parameters.ammo_type.action.action_delivery.projectile = "EMP-acid-projectile-worm"
end


-- Bob's Enemies

if data.raw["projectile"]["area-acid-projectile-purple"] then -- Bob's big worm
	data.raw["projectile"]["area-acid-projectile-purple"].action.action_delivery.target_effects[1] = {
		type = "create-entity",
		entity_name = "EMP-acid-splash-purple-worm",
		trigger_created_entity = "true"
	}
end

if data.raw["projectile"]["explosive-spit-projectile"] then -- "bob-bigger-spitter" and "bob-big-explosive-worm-turret"
	local EMP_acid_splash_explode = util.table.deepcopy(data.raw["corpse"]["acid-splash-purple"])
	EMP_acid_splash_explode.name = "EMP-acid-splash-explosive"
	table.insert(data.raw["projectile"]["explosive-spit-projectile"].action.action_delivery.target_effects, {
		type = "create-entity",
		entity_name = "EMP-acid-splash-explosive",
		trigger_created_entity = "true"
	})
	data:extend({EMP_acid_splash_explode})
end

if data.raw["projectile"]["fire-spit-projectile"] then -- "bob-biggest-spitter" and "bob-big-fire-worm-turret"
	local EMP_acid_splash_fire = util.table.deepcopy(data.raw["corpse"]["acid-splash-purple"])
	EMP_acid_splash_fire.name = "EMP-acid-splash-fire"
	table.insert(data.raw["projectile"]["fire-spit-projectile"].action.action_delivery.target_effects, {
		type = "create-entity",
		entity_name = "EMP-acid-splash-fire",
		trigger_created_entity = "true"
	})
	data:extend({EMP_acid_splash_fire})
end

if data.raw["projectile"]["poison-spit-projectile"] then -- "bob-poison-spitter" and "bob-big-poison-worm-turret"
	local EMP_acid_splash_poison = util.table.deepcopy(data.raw["corpse"]["acid-splash-purple"])
	EMP_acid_splash_poison.name = "EMP-acid-splash-poison"
	table.insert(data.raw["projectile"]["poison-spit-projectile"].action.action_delivery.target_effects, {
		type = "create-entity",
		entity_name = "EMP-acid-splash-poison",
		trigger_created_entity = "true"
	})
	data:extend({EMP_acid_splash_poison})
end

if data.raw["projectile"]["titan-spit-projectile"] then -- "bob-titan-spitter"
	local EMP_acid_splash_titan = util.table.deepcopy(data.raw["corpse"]["acid-splash-purple"])
	EMP_acid_splash_titan.name = "EMP-acid-splash-titan"
	table.insert(data.raw["projectile"]["titan-spit-projectile"].action.action_delivery.target_effects, {
		type = "create-entity",
		entity_name = "EMP-acid-splash-titan",
		trigger_created_entity = "true"
	})
	data:extend({EMP_acid_splash_titan})
end

if data.raw["projectile"]["behemoth-spit-projectile"] then -- "bob-behemoth-spitter"
	local EMP_acid_splash_behemoth = util.table.deepcopy(data.raw["corpse"]["acid-splash-purple"])
	EMP_acid_splash_behemoth.name = "EMP-acid-splash-behemoth"
	table.insert(data.raw["projectile"]["behemoth-spit-projectile"].action.action_delivery.target_effects, {
		type = "create-entity",
		entity_name = "EMP-acid-splash-behemoth",
		trigger_created_entity = "true"
	})
	data:extend({EMP_acid_splash_behemoth})
end

-- Dytech War

if data.raw["projectile"]["berserker-projectile"] then -- All Berzerker-type spitters
	local EMP_acid_splash_berserker = util.table.deepcopy(data.raw["corpse"]["acid-splash-purple"])
	EMP_acid_splash_berserker.name = "EMP-acid-splash-berserker"
	table.insert(data.raw["projectile"]["berserker-projectile"].action.action_delivery.target_effects, {
		type = "create-entity",
		entity_name = "EMP-acid-splash-berserker",
		trigger_created_entity = "true"
	})
	data:extend({EMP_acid_splash_berserker})
end

if data.raw["projectile"]["elder-projectile"] then -- All Elder-type spitters
	local EMP_acid_splash_elder = util.table.deepcopy(data.raw["corpse"]["acid-splash-purple"])
	EMP_acid_splash_elder.name = "EMP-acid-splash-elder"
	table.insert(data.raw["projectile"]["elder-projectile"].action.action_delivery.target_effects, {
		type = "create-entity",
		entity_name = "EMP-acid-splash-elder",
		trigger_created_entity = "true"
	})
	data:extend({EMP_acid_splash_elder})
end

if data.raw["projectile"]["king-projectile"] then -- All King-type spitters
	local EMP_acid_splash_king = util.table.deepcopy(data.raw["corpse"]["acid-splash-purple"])
	EMP_acid_splash_king.name = "EMP-acid-splash-king"
	table.insert(data.raw["projectile"]["king-projectile"].action.action_delivery.target_effects, {
		type = "create-entity",
		entity_name = "EMP-acid-splash-king",
		trigger_created_entity = "true"
	})
	data:extend({EMP_acid_splash_king})
end

-- Natural Evolution Enemies

if data.raw["projectile"]["Infected-Projectile"] then -- "big-spitter-Mk2"
	local EMP_acid_splash_infected = util.table.deepcopy(data.raw["corpse"]["acid-splash-purple"])
	EMP_acid_splash_infected.name = "EMP-acid-splash-infected"
	table.insert(data.raw["projectile"]["Infected-Projectile"].action.action_delivery.target_effects, {
		type = "create-entity",
		entity_name = "EMP-acid-splash-infected",
		trigger_created_entity = "true"
	})
	data:extend({EMP_acid_splash_infected})
end

if data.raw["projectile"]["Mutated-Projectile"] then -- "big-spitter-Mk3"
	local EMP_acid_splash_mutated = util.table.deepcopy(data.raw["corpse"]["acid-splash-purple"])
	EMP_acid_splash_mutated.name = "EMP-acid-splash-mutated"
	data.raw["projectile"]["Mutated-Projectile"].action.action_delivery.target_effects[2] = {
		type = "create-entity",
		entity_name = "EMP-acid-splash-mutated",
		trigger_created_entity = "true"
	}
	data:extend({EMP_acid_splash_mutated})
end
