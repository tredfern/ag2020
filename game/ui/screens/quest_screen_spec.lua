-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.quest", function()
  require "game.ui"
  local quest = require "game.entities.quest"
  local image = "assets/images/dire-rat.png"
  local quests = {
    quest:new{ title = "Quest Title", description = "Quest Description", image = image },
    quest:new{ title = "Quest 2", description = "Quest 2 Desc", image = image }
  }

  local quest_screen = moonpie.ui.components.quest_screen({ quests = quests })

  it("has an id of quest_screen", function()
    assert.equals("quest_screen", quest_screen.id)
  end)

  it("shows multiple quests", function()
    local q2 = quest_screen:find_by_id(tostring(quests[2]))
    assert.not_nil(q2)
  end)
end)