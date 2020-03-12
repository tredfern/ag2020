-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.turn_counter", function()
  require "game.ui"
  local app = require "game.app"

  it("displays the current turn for the game", function()
    app.game_state.turn_counter = 15

    local tc = moonpie.ui.components.turn_counter{}
    local txt = tc:find_by_id("txt_turn_number")
    assert.equals("Week: 15", txt.text)
  end)
end)