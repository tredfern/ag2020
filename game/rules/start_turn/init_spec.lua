-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.rules.start_turn", function()
  local start_turn = require "game.rules.start_turn"

  it("requires a game state to execute", function()
    assert.has_error(function() start_turn() end)
  end)
end)