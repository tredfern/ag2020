-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.screens.assign_hero", function()
  require "game.ui"
  local quest = require "game.entities.quest"
  local hero = require "game.entities.hero"
  local example = quest:new{
    title = "Sample",
    description = "Some view",
    image = "assets/images/dire-rat.png"
  }

  local heroes = {
    hero:new{ name = "Hero 1" },
    hero:new{ name = "Hero 2" }
  }
  local view = moonpie.ui.components.assign_hero_screen{
    quest = example,
    heroes = heroes
  }

  it("tracks the quest associated with the view", function()
    assert.equals(example, view.quest)
  end)

  it("Shows the heros for choosing what who to assign", function()
    local hero_list = view:find_by_id("hero_list")
    assert.not_nil(hero_list:find_by_id("hero_1"))
    assert.not_nil(hero_list:find_by_id("hero_2"))
  end)

  it("Assigns a hero to a quest by executing the assign rules", function()
    local rules = require "game.rules"
    stub(rules, "assign_hero_to_quest")

    local btn = view:find_by_id("btn_assign_hero_1")
    btn:click()
    assert.spy(rules.assign_hero_to_quest).was.called()
    assert.spy(rules.assign_hero_to_quest).was.called_with(heroes[1], example)
    rules.assign_hero_to_quest:revert()
  end)

  it("transitions back to the quest screen", function()
    local btn = view:find_by_id("btn_assign_hero_1")
    btn:click()
    assert.not_nil(moonpie.ui.current.find_by_id("quest_screen"))
  end)
end)