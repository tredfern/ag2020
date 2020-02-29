-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.screen.adventure_guild", function()
  require "game.ui"

  it("can be instantiated", function()
    local ag = moonpie.ui.components.guild_screen()
    assert.not_nil(ag)
  end)
end)