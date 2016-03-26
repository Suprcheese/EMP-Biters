data:extend({ -- Clouds of sparks
	{
		type = "smoke-with-trigger",
		name = "disabling-EMP-cloud-1",
		flags = {"not-on-map"},
		show_when_smoke_off = true,
		animation =
		{
		  filename = "__EMP Biters__/graphics/EMP-cloud-1.png",
		  priority = "high",
		  width = 74,
		  height = 70,
		  frame_count = 16,
		  scale = 0.9,
		  animation_speed = 0.25
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = 60 * 30,
		fade_away_duration = 2 * 60,
		spread_duration = 10,
		color = { r = 0, g = 0.5, b = 1.0, a = 0.5 },
	},
	{
		type = "smoke-with-trigger",
		name = "disabling-EMP-cloud-2",
		flags = {"not-on-map"},
		show_when_smoke_off = true,
		animation =
		{
		  filename = "__EMP Biters__/graphics/EMP-cloud-2.png",
		  priority = "high",
		  width = 74,
		  height = 70,
		  frame_count = 16,
		  scale = 0.9,
		  animation_speed = 0.25
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = 60 * 30,
		fade_away_duration = 2 * 60,
		spread_duration = 10,
		color = { r = 0, g = 0.5, b = 1.0, a = 0.5 },
	},
	{
		type = "smoke-with-trigger",
		name = "disabling-EMP-cloud-3",
		flags = {"not-on-map"},
		show_when_smoke_off = true,
		animation =
		{
		  filename = "__EMP Biters__/graphics/EMP-cloud-3.png",
		  priority = "high",
		  width = 74,
		  height = 70,
		  frame_count = 16,
		  scale = 0.9,
		  animation_speed = 0.25
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = 60 * 30,
		fade_away_duration = 2 * 60,
		spread_duration = 10,
		color = { r = 0, g = 0.5, b = 1.0, a = 0.5 },
	},
	{
		type = "smoke-with-trigger",
		name = "disabling-EMP-cloud-4",
		flags = {"not-on-map"},
		show_when_smoke_off = true,
		animation =
		{
		  filename = "__EMP Biters__/graphics/EMP-cloud-4.png",
		  priority = "high",
		  width = 74,
		  height = 70,
		  frame_count = 16,
		  scale = 0.9,
		  animation_speed = 0.25
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = 60 * 30,
		fade_away_duration = 2 * 60,
		spread_duration = 10,
		color = { r = 0, g = 0.5, b = 1.0, a = 0.5 },
	},
-- Sound effects
	{
		type = "explosion",
		name = "EMP-disabled-sound-1",
		flags = {"not-on-map"},
		animations =
		{
			{
				filename = "__EMP Biters__/graphics/null.png",
				priority = "low",
				width = 32,
				height = 32,
				frame_count = 1,
				line_length = 1,
				animation_speed = 1
			},
		},
		light = {intensity = 0, size = 0},
		sound =
		{
		  {
			filename = "__EMP Biters__/sound/Disabled-1.ogg",
			volume = 0.5
		  },
		},
	},
	{
		type = "explosion",
		name = "EMP-disabled-sound-2",
		flags = {"not-on-map"},
		animations =
		{
			{
				filename = "__EMP Biters__/graphics/null.png",
				priority = "low",
				width = 32,
				height = 32,
				frame_count = 1,
				line_length = 1,
				animation_speed = 1
			},
		},
		light = {intensity = 0, size = 0},
		sound =
		{
		  {
			filename = "__EMP Biters__/sound/Disabled-2.ogg",
			volume = 0.5
		  },
		},
	},
	{
		type = "explosion",
		name = "EMP-disabled-sound-3",
		flags = {"not-on-map"},
		animations =
		{
			{
				filename = "__EMP Biters__/graphics/null.png",
				priority = "low",
				width = 32,
				height = 32,
				frame_count = 1,
				line_length = 1,
				animation_speed = 1
			},
		},
		light = {intensity = 0, size = 0},
		sound =
		{
		  {
			filename = "__EMP Biters__/sound/Disabled-3.ogg",
			volume = 0.5
		  },
		},
	},
	{
		type = "explosion",
		name = "EMP-disabled-sound-4",
		flags = {"not-on-map"},
		animations =
		{
			{
				filename = "__EMP Biters__/graphics/null.png",
				priority = "low",
				width = 32,
				height = 32,
				frame_count = 1,
				line_length = 1,
				animation_speed = 1
			},
		},
		light = {intensity = 0, size = 0},
		sound =
		{
		  {
			filename = "__EMP Biters__/sound/Disabled-4.ogg",
			volume = 0.5
		  },
		},
	},
-- Blue EMP Blasts
	{
		type = "explosion",
		name = "EMP-blast-small",
		flags = {"not-on-map"},
		animations =
		{
			{
			filename = "__EMP Biters__/graphics/EMP-blast.png",
			priority = "high",
			width = 200,
			height = 200,
			scale = 1,
			frame_count = 20,
			line_length = 5,
			shift = {0, 0},
			animation_speed = 0.75
			},
		},
		light = {intensity = 2, size = 5},
		sound =
		{
		  {
			filename = "__EMP Biters__/sound/EMP.ogg",
			volume = 1.0
		  },
		},
	},
	{
		type = "explosion",
		name = "EMP-blast-medium",
		flags = {"not-on-map"},
		animations =
		{
			{
			filename = "__EMP Biters__/graphics/EMP-blast.png",
			priority = "high",
			width = 200,
			height = 200,
			scale = 2,
			frame_count = 20,
			line_length = 5,
			shift = {0, 0},
			animation_speed = 0.75
			},
		},
		light = {intensity = 2, size = 10},
		sound =
		{
		  {
			filename = "__EMP Biters__/sound/EMP.ogg",
			volume = 1.5
		  },
		},
	},
	{
		type = "explosion",
		name = "EMP-blast-large",
		flags = {"not-on-map"},
		animations =
		{
			{
			filename = "__EMP Biters__/graphics/EMP-blast.png",
			priority = "high",
			width = 200,
			height = 200,
			scale = 3,
			frame_count = 20,
			line_length = 5,
			shift = {0, 0},
			animation_speed = 0.75
			},
		},
		light = {intensity = 2, size = 15},
		sound =
		{
		  {
			filename = "__EMP Biters__/sound/EMP.ogg",
			volume = 1.5
		  },
		},
	},
	{
		type = "explosion",
		name = "EMP-blast-huge",
		flags = {"not-on-map"},
		animations =
		{
			{
			filename = "__EMP Biters__/graphics/EMP-blast.png",
			priority = "high",
			width = 200,
			height = 200,
			scale = 4,
			frame_count = 20,
			line_length = 5,
			shift = {0, 0},
			animation_speed = 0.75
			},
		},
		light = {intensity = 2, size = 20},
		sound =
		{
		  {
			filename = "__EMP Biters__/sound/EMP.ogg",
			volume = 1.5
		  },
		},
	},
})