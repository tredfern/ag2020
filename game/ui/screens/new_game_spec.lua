-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.new_game", function()
  require "game.ui"

  it("is registers a component for new_game", function()
    assert.not_nil(moonpie.ui.components.new_game)
  end)

  it("is id is new_game_screen", function()
    local ng = moonpie.ui.components.new_game()
    assert.equals("new_game_screen", ng.id)
  end)

  it("Clicking start transitions to the select hero screen", function()
    local ng = moonpie.ui.components.new_game()
    local btn = ng:find_by_id("btn_start_game")
    btn:click()
    assert.not_nil(moonpie.ui.current.find_by_id("select_hero_screen"))
  end)
end)