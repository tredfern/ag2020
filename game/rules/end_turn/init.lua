-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local rules = {
  require "game.rules.end_turn.update_quest_status"
}

return function(game_state)
  for _, rule in ipairs(rules) do
    rule(game_state)
  end
end