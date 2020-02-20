-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.select_hero", function()
  require "game.ui"

  it("is a component", function()
    assert.not_nil(moonpie.ui.components.select_hero())
  end)

  it("displays three heros you can select", function()
    local sh = moonpie.ui.components.select_hero()
    assert.not_nil(sh:find_by_id("btn_select_hero_1"))
    assert.not_nil(sh:find_by_id("btn_select_hero_2"))
    assert.not_nil(sh:find_by_id("btn_select_hero_3"))
  end)
end)