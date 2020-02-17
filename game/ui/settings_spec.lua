-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.settings", function()
  require "game.ui.settings"

  it("registers the component", function()
    assert.not_nil(moonpie.ui.components.settings_screen)
  end)

  it("has an id of settings_screen", function()
    local ss = moonpie.ui.components.settings_screen()
    assert.equals("settings_screen", ss.id)
  end)
end)