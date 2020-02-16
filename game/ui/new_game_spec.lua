-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.new_game", function()
  require "game.ui.new_game"

  it("is registers a component for new_game", function()
    assert.not_nil(moonpie.ui.components.new_game)
  end)

  it("is id is new_game_screen", function()
    local ng = moonpie.ui.components.new_game()
    assert.equals("new_game_screen", ng.id)
  end)
end)