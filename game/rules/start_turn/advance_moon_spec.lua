-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.rules.start_turn.advance_moon", function()
  local game_state = require "game.game_state":new()
  local rule = require "game.rules.start_turn.advance_moon"
  local moon = require "game.entities.moon"

  it("sets the moon to the next phase", function()
    game_state:get_moon():set_first_quarter()
    rule(game_state)
    assert.equals(moon.phases.full_moon, game_state:get_moon():get_state())
  end)
end)