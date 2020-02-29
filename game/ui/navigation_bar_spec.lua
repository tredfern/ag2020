-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.navigation_bar", function()
  require "game.ui"
  local bar = moonpie.ui.components.navigation_bar()

  it("can show the hero_roster", function()
    local roster_btn = bar:find_by_id("hero_roster_btn")
    roster_btn:click()
    assert.not_nil(moonpie.ui.current.find_by_id("hero_roster_screen"))
  end)

  it("can show the adventure guild", function()
    local guild_btn = bar:find_by_id("guild_btn")
    guild_btn:click()
    assert.not_nil(moonpie.ui.current.find_by_id("guild_screen"))
  end)

  it("can show the quest screen", function()
    local quest_btn = bar:find_by_id("quest_btn")
    quest_btn:click()
    assert.not_nil(moonpie.ui.current.find_by_id("quest_screen"))
  end)

  it("can show the world map", function()
    local world_btn = bar:find_by_id("world_map_btn")
    world_btn:click()
    assert.not_nil(moonpie.ui.current.find_by_id("world_screen"))
  end)
end)