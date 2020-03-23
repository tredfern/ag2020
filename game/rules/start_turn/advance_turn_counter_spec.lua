-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.rules.start_turn.advance_turn_counter", function()
  local game_state = require "game.game_state":new()
  local rule = require "game.rules.start_turn.advance_turn_counter"

  it("increments the turn count", function()
    local current = game_state:get_turn_counter()
    rule(game_state)
    assert.equals(current + 1, game_state:get_turn_counter())
  end)
end)