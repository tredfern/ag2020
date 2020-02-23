-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.quest", function()
  require "game.ui"

  it("has an id of quest_screen", function()
    local quest = moonpie.ui.components.quest()
    assert.equals("quest_screen", quest.id)
  end)
end)