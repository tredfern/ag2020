-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.turn_counter", function()
  require "game.ui"

  it("displays the current turn for the game", function()
    local tc = moonpie.ui.components.turn_counter{ turn_number = 12 }
    assert.equals("Week: 12", tc.text)
  end)
end)