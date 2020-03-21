-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local quest = require "game.entities.quest"

return quest:new{
  title = "Deliver the Stuff",
  description = "You can take it over there!",
  image = "assets/images/gold-coins.png",
  prerequisites = quest.prerequisites.turn_counter(2)
}