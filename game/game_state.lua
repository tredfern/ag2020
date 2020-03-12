-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local game_state = {}

function game_state:constructor()
  local ag = require "game.entities.adventure_guild"
  self.guild = ag:new()
  self.turn_counter = 0
end


return moonpie.class(game_state)