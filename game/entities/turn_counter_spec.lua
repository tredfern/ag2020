-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.entities.turn_counter", function()
  local turn_counter = require "game.entities.turn_counter"

  it("tracks the number of turns passed", function()
    local tc = turn_counter:new()
    assert.equals(0, tc.count)
  end)
end)