-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local quest = require "game.entities.quest"

return quest:new{
  title = "Goblin Attack",
  description = "Goblins are attacking the inn! We need to fend them off",
  image = "ext/moonpie/moonpie/assets/icons/delapouite/goblin-camp.png",
  prerequisites = quest.prerequisites.turn_counter(5)
}