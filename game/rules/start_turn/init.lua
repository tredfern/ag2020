-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local start_turn = {

}

function start_turn:execute(game_state)
  assert(game_state)

end


return setmetatable(start_turn, {
  __call = start_turn.execute
})