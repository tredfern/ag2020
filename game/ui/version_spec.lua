-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.version", function()
  require "game.ui"

  it("grabs the version file and displays the text", function()
    local v = moonpie.ui.components.version()
    local f = io.open("version.txt", "r")
    local r = f:read("*all")
    f:close()
    assert.equals(r, v.text)
  end)
end)