-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.layouts.game_screen_layout", function()
  require "game.ui"

  local game_screen
  before_each(function()
    game_screen = moonpie.ui.components.game_screen_layout{
      title = "A screen",
      content = {
        id = "some-internal-content"
      }
    }
  end)

  it("is a component that is instantiated", function()
    assert.not_nil(game_screen)
  end)

  it("has a title", function()
    local title = game_screen:find_by_id("screen_title")
    assert.equals("A screen", title.text)
  end)

  it("supports rendering out content", function()
    assert.not_nil(game_screen:find_by_id("some-internal-content"))
  end)
end)