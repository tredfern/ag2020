-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.title_screen", function()
  require "game.ui"
  local title_screen
  before_each(function()
    title_screen = moonpie.ui.components.title_screen()
  end)

  it("it registers the component", function()
    assert.not_nil(moonpie.ui.components.title_screen)
  end)

  it("is identified by title_screen", function()
    assert.equals("title_screen", title_screen.id)
  end)

  describe("menu options", function()
    it("has a new game option", function()
      assert.not_nil(title_screen:find_by_id("btn_new_game"))
    end)

    it("has a continue game option", function()
      assert.not_nil(title_screen:find_by_id("btn_continue_game"))
    end)

    it("has a settings option", function()
      assert.not_nil(title_screen:find_by_id("btn_settings"))
    end)

    it("has a quit option", function()
      assert.not_nil(title_screen:find_by_id("btn_quit"))
    end)
  end)

  it("it can transition to the new game screen", function()
    local btn = title_screen:find_by_id("btn_new_game")
    btn:click()
    assert.not_nil(moonpie.ui.current.find_by_id("new_game_screen"))
  end)

  it("can transition to the settings screen", function()
    local btn = title_screen:find_by_id("btn_settings")
    btn:click()
    assert.not_nil(moonpie.ui.current.find_by_id("settings_screen"))
  end)
end)