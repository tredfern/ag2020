-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local hero = {}

function hero:constructor(props)
  self.name = props.name
  self.class = props.class
end

function hero.generate()
  local names = { "Steve", "Martha", "Mary", "Joseph", "Oskar", "Scanlan" }
  local class = { "Fighter", "Cleric", "Rogue", "Wizard", "Bard", "Ranger" }
  return hero:new({
    name = moonpie.utility.tables.pick_random(names),
    class = moonpie.utility.tables.pick_random(class)
  })
end


return moonpie.class(hero)