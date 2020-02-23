-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.game_over", function()
  require "game.ui"

  local game_over = moonpie.ui.components.game_over()

  it("has an id of game_over_screen", function()
    assert.equals("game_over_screen", game_over.id)
  end)

  it("clicking Main Menu sends back to title screen", function()
    local btn = game_over:find_by_id("btn_main_menu")
    btn:click()
    assert.not_nil(moonpie.ui.current.find_by_id("title_screen"))
  end)
end)