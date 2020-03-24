-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local quest = require "game.entities.quest"
return quest:new{
  title = "Explore a Cave",
  description = "There is a cave on the property that has some bones out front. What's going on?",
  image = "assets/images/unicorn.png",
  prerequisites = function(gs) return gs:get_turn_counter() >= 1 end,
  goals = {
    turns = 5
  },
  rewards = {
    xp = 250,
    money = 500
  }
}
