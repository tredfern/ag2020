-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.settings", function()
  require "game.ui"

  it("registers the component", function()
    assert.not_nil(moonpie.ui.components.settings_screen)
  end)

  it("has an id of settings_screen", function()
    local ss = moonpie.ui.components.settings_screen()
    assert.equals("settings_screen", ss.id)
  end)

  it("can change the resolution of the screen", function()
    mock(love)
    local ss = moonpie.ui.components.settings_screen()
    local resolutions = ss:find_by_id("resolutions")
    resolutions:select("1600 x 900")

    local apply = ss:find_by_id("btn_apply")
    apply:click()
    assert.spy(love.window.setMode).was.called_with(1600,900, { fullscreen = false })
  end)

  it("can cancel the dialog and return to title screen", function()
    local ss = moonpie.ui.components.settings_screen()
    local cancel = ss:find_by_id("btn_cancel")
    cancel:click()
    assert.not_nil(moonpie.ui.current.find_by_id("title_screen"))
  end)
end)