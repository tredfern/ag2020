-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.settings", function()
  require "game.ui"
  local settings_screen
  local apply_button
  before_each(function()
    settings_screen = moonpie.ui.components.settings_screen()
    settings_screen:set("800 x 600", "Off")
    apply_button = settings_screen:find_by_id("btn_apply")
    mock(love)
  end)

  it("registers the component", function()
    assert.not_nil(moonpie.ui.components.settings_screen)
  end)

  it("has an id of settings_screen", function()
    assert.equals("settings_screen", settings_screen.id)
  end)

  it("can change the resolution of the screen", function()
    local resolutions = settings_screen:find_by_id("resolutions")
    resolutions:select("1600 x 900")

    apply_button:click()
    assert.spy(love.window.setMode).was.called_with(1600,900, { fullscreen = false, fullscreentype = "desktop" })
  end)

  it("can cancel the dialog and return to title screen", function()
    local cancel = settings_screen:find_by_id("btn_cancel")
    cancel:click()
    assert.not_nil(moonpie.ui.current.find_by_id("title_screen"))
  end)

  it("can set the full screen mode", function()
    local fullscreen = settings_screen:find_by_id("full_screen_mode")
    fullscreen:select("Borderless")
    apply_button:click()
    assert.spy(love.window.setMode).was.called_with(800,600, { fullscreen = true, fullscreentype = "desktop" })
  end)
end)