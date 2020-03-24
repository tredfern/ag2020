-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local quest = require "game.entities.quest"

return quest:new{
  title = "Rats in the Guild!",
  description = "There are rats in the guild! You need to clean them out to start your business.",
  image = "assets/images/dire-rat.png",
  prerequisites = function(gs) return gs:get_turn_counter() == 0 end,
  goals = {
    turns = 5
  },
  rewards = {
    xp = 250,
    money = 500
  }
}