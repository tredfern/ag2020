-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.entities.quest", function()
  local quest = require "game.entities.quest"

  local example = quest:new{
    title = "Defend against goblins!",
    description = "Goblins are attacking...",
    image = "some-image-file"
  }

  it("Has a title for the quest", function()
    assert.equals("Defend against goblins!", example.title)
  end)

  it("has a description", function()
    assert.equals("Goblins are attacking...", example.description)
  end)

  it("can have a hero assigned to the quest", function()
    local hero = require "game.entities.hero"
    local h = hero:new{}
    example:assign(h)
    assert.equals(h, example.assigned_hero)
  end)

  it("has an image representing the quest", function()
    assert.not_nil(example.image)
  end)
end)