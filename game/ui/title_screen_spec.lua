-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.title_screen", function()
  local title_screen = require "game.ui.title_screen"

  it("it is a table", function()
    assert.is_table(title_screen)
  end)
end)