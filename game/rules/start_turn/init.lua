-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local start_turn = {
  rules = {
    require "game.rules.start_turn.pick_quests"
  }
}

function start_turn:execute(game_state)
  assert(game_state)
  for _, rule in ipairs(start_turn.rules) do
    rule(game_state)
  end
end


return setmetatable(start_turn, {
  __call = start_turn.execute
})