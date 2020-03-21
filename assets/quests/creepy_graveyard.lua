-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local quest = require "game.entities.quest"

return quest:new{
  title = "Creepy Graveyard",
  description = "There is an old graveyard nearby. There have been reports of bright flashes and sounds at night.",
  image = "ext/moonpie/moonpie/assets/icons/delapouite/graveyard.png",
  prerequisites = quest.prerequisites.turn_counter(10)
}