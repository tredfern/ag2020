-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.quest", function()
  require "game.ui"
  local quest = moonpie.ui.components.quest({
    hero = { name = "Bob" }
  })

  it("has an id of quest_screen", function()
    assert.equals("quest_screen", quest.id)
  end)

  it("can receive a hero that shows the name to be the one that clears it out", function()
    local btn = quest:find_by_id("btn_send")
    assert.contains("Bob", btn.caption)
  end)

  it("sends the game to the guild screen after clicking on the quest", function()
    local btn = quest:find_by_id("btn_send")
    btn:click()
    assert.not_nil(moonpie.ui.current.find_by_id("guild_screen"))
  end)
end)