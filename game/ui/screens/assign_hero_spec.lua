-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.screens.assign_hero", function()
  require "game.ui"
  local quest = require "game.entities.quest"
  local example = quest:new{
    title = "Sample",
    description = "Some view",
    image = "an image"
  }

  it("tracks the quest associated with the view", function()
    local view = moonpie.ui.components.assign_hero_screen{
      quest = example
    }

    assert.equals(example, view.quest)
  end)
end)