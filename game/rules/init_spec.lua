-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.rules", function()
  local rules = require "game.rules"

  it("has rules for the start of the turn", function()
    assert.is_table(rules.start_turn)
    assert.is_function(rules.start_turn.execute)
  end)
end)