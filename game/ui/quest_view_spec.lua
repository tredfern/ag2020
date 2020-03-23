-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.quest_view", function()
  require "game.ui"

  local quest = require("assets.quests.guild_rats"):clone()
  local quest_view = moonpie.ui.components.quest_view({ quest = quest })

  it("tracks the quest in question", function()
    assert.equals(quest, quest_view.quest)
  end)

  it("accepts a quest to define the attributes of the quests", function()
    local title = quest_view:find_by_id("quest_title")
    assert.equals(quest.title, title.text)

    local description = quest_view:find_by_id("quest_description")
    assert.equals(quest.description, description.text)

    local image = quest_view:find_by_id("quest_image")
    assert.equals(quest.image, image.src)
  end)

  it("has an id that matches the quest table", function()
    assert.equals(quest_view.id, tostring(quest))
  end)

  it("sends you to the assign hero screen", function()
    local app = require "game.app"
    mock(app.transitions)
    local btn = quest_view:find_by_id("btn_assign_hero")
    btn:click()
    assert.spy(app.transitions.assign_hero).was.called_with(quest)
  end)

  describe("hero assigned to quest", function()
    local hero = require "game.entities.hero":new { }
    local hq = require("assets.quests.guild_rats"):clone()
    hq.hero = hero
    local assigned_quest = moonpie.ui.components.quest_view { quest = hq }

    it("Hides the button and says the hero is on the quest", function()
      assert.is_nil(assigned_quest:find_by_id("btn_assign_hero"))
    end)
  end)
end)