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

  it("choosing a hero assigns that hero to the adventure guild roster", function()
    local sh = moonpie.ui.components.select_hero()
    local hero_view = sh:find_by_id("hero_view_2")
    local btn = sh:find_by_id("btn_select_hero_2")
    btn:click()

    local app = require "game.app"
    assert.greater_than(0, #app.guild.hero_roster)
    assert.is_true(app.guild.hero_roster:contains(hero_view.hero))
  end)

  it("after selecting a hero it switches to the roster view", function()
    assert.not_nil(moonpie.ui.current.find_by_id("hero_roster_screen"))
  end)
end)