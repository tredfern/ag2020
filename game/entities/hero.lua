-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local name_generator = require "game.generators.name"
local hero = {}

function hero:constructor(props)
  self.name = props.name
  self.class = props.class
end

function hero.generate()
  local class = { "Fighter", "Cleric", "Rogue", "Wizard", "Bard", "Ranger" }
  return hero:new({
    name = name_generator(),
    class = moonpie.utility.tables.pick_random(class)
  })
end


return moonpie.class(hero)