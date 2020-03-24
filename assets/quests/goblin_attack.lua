-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local quest = require "game.entities.quest"

return quest:new{
  title = "Goblin Attack",
  description = "Goblins are attacking the inn! We need to fend them off",
  image = "ext/moonpie/moonpie/assets/icons/delapouite/goblin-camp.png",
  prerequisites = function(gs)
    local dun = require "assets.quests.explore_dungeon"
    return moonpie.utility.tables.any(gs.completed_quests, function(q) return q.source == dun end)
  end,
  goals = {
    turns = 5
  },
  rewards = {
    xp = 250,
    money = 500
  }}