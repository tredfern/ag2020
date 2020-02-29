-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.screens.world", function()
  require "game.ui"
  local world_screen = moonpie.ui.components.world_screen()

  it("is instantiable", function()
    assert.not_nil(world_screen)
  end)
end)