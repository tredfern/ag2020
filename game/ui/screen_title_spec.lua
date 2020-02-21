-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.screen_title", function()
  require "game.ui"

  it("uses the title property to set the name of the view", function()
    local t = moonpie.ui.components.screen_title({ title = "Hello World!" })
    local heading = t:find_by_id("screen_title_heading")
    assert.equals("Hello World!", heading.text)
  end)
end)