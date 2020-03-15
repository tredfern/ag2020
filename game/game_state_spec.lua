-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.game_state", function()
  local game_state = require "game.game_state"

  it("settings up a new game", function()
    local gs = game_state:new()
    assert.not_nil(gs:get_guild())
    assert.equals(0, gs:get_turn_counter())
  end)

  it("has a world for adding entities", function()
    local gs = game_state:new()
    assert.not_nil(gs.world)
  end)
end)