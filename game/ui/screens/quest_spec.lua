-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.quest", function()
  require "game.ui"
  local quest = require "game.entities.quest"
  local quest_demo = quest:new{
    title = "Quest Title",
    description = "Quest Description",
    image = "some-image"
  }

  local quest_screen = moonpie.ui.components.quest({
    hero = { name = "Bob" },
    quest = quest_demo
  })

  it("has an id of quest_screen", function()
    assert.equals("quest_screen", quest_screen.id)
  end)

  it("sends the game to the guild screen after clicking on the quest", function()
    local btn = quest_screen:find_by_id("btn_send")
    btn:click()
    assert.not_nil(moonpie.ui.current.find_by_id("guild_screen"))
  end)
end)