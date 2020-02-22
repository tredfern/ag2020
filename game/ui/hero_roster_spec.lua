-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.hero_roster", function()
  require "game.ui"
  local hero_roster = {
    { name = "Bob" },
    { name = "Jane" },
    { name = "Oskar" }
  }

  it("is a component that can be created", function()
    assert.not_nil(moonpie.ui.components.hero_roster)
  end)

  it("has an id of hero_roster_screen", function()
    local hr = moonpie.ui.components.hero_roster({ heros = hero_roster })
    assert.equals("hero_roster_screen", hr.id)
  end)

  it("displays a list of entries for each hero", function()
    local hr = moonpie.ui.components.hero_roster({
      heros = hero_roster
    })

    assert.not_nil(hr:find_by_id("hero_row_1"))
    assert.not_nil(hr:find_by_id("hero_row_2"))
    assert.not_nil(hr:find_by_id("hero_row_3"))
  end)
end)