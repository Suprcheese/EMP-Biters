-- This is the lookup table for EMP biters. Rather than add its own custom biters, this mod gives certain extant biters a chance to cause an EMP blast and disable nearby turrets.
-- Only biters that have an entry in this table are eligible to give off an EMP blast on death.

-- The format for entries is: 							{size, maxChance, minDuration, maxDuration}

-- Size is in tiles. This is the "radius" (it's a square region actually) of the area of effect around the dying biter for the EMP blast.

-- MaxChance is in percent. This is the maximum chance that a biter will trigger an EMP blast when it dies.
-- The chance starts out a bit lower and increases up to the maximum chance as the evolution factor rises.

-- Durations are in ticks (60 ticks per second).
-- The exact duration of the EMP disabling is randomized between the minimum and maximum values.

EMPBiterTable = {}

-- Vanilla Biters
EMPBiterTable["big-biter"] = 							{10, 15,  180, 300}
EMPBiterTable["behemoth-biter"] = 						{15, 25,  240, 600}

-- Bob's Enemies
EMPBiterTable["bob-bigger-biter"] =						{10, 20,  300, 600}
EMPBiterTable["bob-biggest-biter"] =					{12, 25,  360, 900}
EMPBiterTable["bob-fire-biter"] =						{14, 30,  420, 900}
EMPBiterTable["bob-titan-biter"] =						{16, 35,  600, 1200}
EMPBiterTable["bob-behemoth-biter"] =					{18, 40,  600, 1500}

-- Dytech War
EMPBiterTable["teen-berserk-biter"] = 					{10, 10,  180, 300}
EMPBiterTable["teen-elder-biter"] = 					{11, 15,  180, 240}
EMPBiterTable["teen-king-biter"] = 						{12, 20,  300, 600}
EMPBiterTable["teen-queen-biter"] = 					{13, 20,  300, 600}
EMPBiterTable["adult-berserk-biter"] = 					{14, 20,  300, 720}
EMPBiterTable["adult-elder-biter"] = 					{15, 25,  420, 900}
EMPBiterTable["adult-king-biter"] = 					{20, 50,  600, 900}
EMPBiterTable["adult-queen-biter"] = 					{25, 100, 600, 1200}

EMPBiterTable["dyzilla-unit-1"] = 						{20, 100, 600, 900}
EMPBiterTable["dyzilla-unit-2"] = 						{25, 100, 600, 1200}
EMPBiterTable["dyzilla-unit-3"] = 						{40, 100, 900, 1200}
EMPBiterTable["dyzilla-unit-4"] = 						{50, 100, 900, 1800}

-- Natural Evolution Enemies
EMPBiterTable["big-biter-Mk2"] = 						{12, 20,  240, 420}
EMPBiterTable["big-biter-Mk3"] = 						{14, 20,  300, 600}


-- This is the lookup table for EMP spitters & worms. Rather than add its own custom spitters, this mod gives certain extant spitters a chance to disable a turret when they hit it with their spit.
-- Big worms have a 100% chance to cause an EMP blast, to make turret creep more challenging.

-- The format is the same as above:						{size, maxChance, minDuration, maxDuration}

EMPSpitterTable = {}

-- Vanilla Spitters
EMPSpitterTable["EMP-acid-splash-purple-big"] =			{1,  20,  180, 300}
EMPSpitterTable["EMP-acid-splash-purple-behemoth"] =	{2,  25,  240, 600}

-- Vanilla Big Worm
EMPSpitterTable["EMP-acid-splash-purple-worm"] =		{20, 100, 600, 1200} -- Suck it, turret creep!

-- Bob's Enemies
EMPSpitterTable["EMP-acid-splash-explosive"] =			{1,  20,  180, 300}  -- "bob-bigger-spitter" and "bob-big-explosive-worm-turret"
EMPSpitterTable["EMP-acid-splash-fire"] =				{2,  20,  240, 420}  -- "bob-biggest-spitter" and "bob-big-fire-worm-turret"
EMPSpitterTable["EMP-acid-splash-poison"] =				{3,  20,  420, 600}  -- "bob-poison-spitter" and "bob-big-poison-worm-turret"
EMPSpitterTable["EMP-acid-splash-titan"] =				{4,  25,  540, 900}  -- "bob-titan-spitter"
EMPSpitterTable["EMP-acid-splash-behemoth"] =			{5,  25,  600, 1200} -- "bob-behemoth-spitter"

-- Dytech War
EMPSpitterTable["EMP-acid-splash-berserker"] =			{2,  25,  180, 420}  -- All Berzerker-type spitters
EMPSpitterTable["EMP-acid-splash-elder"] =				{3,  40,  300, 600}  -- All Elder-type spitters
EMPSpitterTable["EMP-acid-splash-king"] =				{5,  50,  300, 900}  -- All King-type spitters

-- Natural Evolution Enemies
EMPSpitterTable["EMP-acid-splash-infected"] =			{2,  25,  180, 420}  -- "big-spitter-Mk2"
EMPSpitterTable["EMP-acid-splash-mutated"] =			{2,  25,  180, 600}  -- "big-spitter-Mk3"
