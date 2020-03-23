-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local rules = {
  require "game.rules.start_turn.advance_turn_counter",
  require "game.rules.start_turn.advance_moon",
  require "game.rules.start_turn.pick_quests"
}


return function(game_state)
  assert(game_state)
  for _, rule in ipairs(rules) do
    rule(game_state)
  end
end
