-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.layouts.message_layout", function()
  require "game.ui"

  it("is takes a title and internal content for rendering", function()
    local layout = moonpie.ui.components.message_layout({
      title = "An important event!",
      content = {
        { id = "some-internal-thing" }
      }
    })

    assert.equals("An important event!", layout:find_by_id("screen_title_heading").text)
    assert.not_nil(layout:find_by_id("some-internal-thing"))
  end)
end)