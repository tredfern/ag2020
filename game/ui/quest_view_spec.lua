-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.quest_view", function()
  require "game.ui"

  local quest = require("game.quests.guild_rats"):clone()
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
end)