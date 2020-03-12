-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.game_state", function()
  local game_state = require "game.game_state"

  it("settings up a new game", function()
    local gs = game_state:new()
    assert.not_nil(gs.guild)
    assert.equals(0, gs.turn_counter)
  end)
end)