-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local name_generator = require "game.generators.name"
local hero = {}

function hero:constructor(props)
  self.name = props.name
  self.class = props.class
  self.gender = props.gender
  self.race = props.race
  self.xp = 0
  self.level = 1
end

function hero.generate()
  local class = { "Fighter", "Cleric", "Rogue", "Wizard", "Bard", "Ranger" }
  local race = { "dwarf", "elf", "gnome", "halfling", "human" }
  local gender = { "female", "male" }

  local h = hero:new({
    class = moonpie.utility.tables.pick_random(class),
    race = moonpie.utility.tables.pick_random(race),
    gender = moonpie.utility.tables.pick_random(gender)
  })
  h.name = name_generator(h)
  return h
end


return moonpie.class(hero)