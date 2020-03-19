-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.rules.start_turn", function()
  local start_turn = require "game.rules.start_turn"

  it("requires a game state to execute", function()
    assert.has_error(function() start_turn() end)
  end)

  it("runs all the rules assigned to the rules list", function()
    local game_state = require "game.game_state":new()
    start_turn.rules = {
      spy.new(function() end),
      spy.new(function() end)
    }

    start_turn(game_state)
    assert.spy(start_turn.rules[1]).was.called_with(game_state)
    assert.spy(start_turn.rules[2]).was.called_with(game_state)
  end)

end)