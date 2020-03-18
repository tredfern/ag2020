-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.entities.quest", function()
  local quest = require "game.entities.quest"

  local example = quest:new{
    title = "Defend against goblins!",
    description = "Goblins are attacking...",
    image = "some-image-file",
    prerequisites = function(gs) return gs:get_turn_counter() > 5 end
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

  it("provides a mechanism for checking if available that defaults to false", function()
    local gs = require "game.game_state"
    gs.turn_counter = 3
    assert.is_false(example:check_prerequisites(gs))
    gs.turn_counter = 7
    assert.is_true(example:check_prerequisites(gs))
  end)

  it("can clone a copy of the quest", function()
    local copy = example:clone()
    assert.not_equal(example, copy)
    assert.equals(example.title, copy.title)
    assert.equals(example.image, copy.image)
    assert.equals(example.description, copy.description)
    assert.equals(example.prerequisites, copy.prerequisites)
  end)
end)