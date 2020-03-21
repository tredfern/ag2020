-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local quest = require "game.entities.quest"

return quest:new{
  title = "Explore Dungeon",
  description = "A dungeon has been found nearby. We are worried that monsters might be coming out.",
  image = "ext/moonpie/moonpie/assets/icons/delapouite/dungeon-gate.png",
  prerequisites = quest.prerequisites.turn_counter(5)
}