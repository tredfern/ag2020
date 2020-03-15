-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.moon_display", function()
  require "game.ui"
  local moon = require "game.entities.moon"

  it("displays the text of the current state", function()
    local m = moon:new()
    m:set_last_quarter()
    local moon_dis = moonpie.ui.components.moon_display{
      moon = m
    }

    assert.equals("Last Quarter", moon_dis.text)
  end)
end)