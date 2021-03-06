-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local game_state = {}


function game_state:constructor()
  local ag = require "game.entities.adventure_guild"
  self.world = moonpie.ecs.world:new()
  self.guild = ag:new()
  self.moon = require "game.entities.moon":new()
  self.quests = moonpie.collections.list:new()
  self.completed_quests = moonpie.collections.list:new()
  self.resource_pool = require "game.entities.resource_pool":new()
  self.turn_counter = 0
end

function game_state:get_guild()
  return self.guild
end

function game_state:get_turn_counter()
  return self.turn_counter
end

function game_state:get_moon()
  return self.moon
end

function game_state:get_quests()
  return self.quests
end

function game_state:get_resource_pool()
  return self.resource_pool
end


return moonpie.class(game_state)