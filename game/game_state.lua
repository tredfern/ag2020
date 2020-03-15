-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local game_state = {}


function game_state:constructor()
  local ag = require "game.entities.adventure_guild"
  self.world = moonpie.ecs.world:new()
  self.guild = ag:new()
  self.turn_counter = 0
end

function game_state:get_guild()
  return self.guild
end

function game_state:get_turn_counter()
  return self.turn_counter
end

return moonpie.class(game_state)