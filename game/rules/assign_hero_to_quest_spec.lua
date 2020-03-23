-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.rules.assign_hero_to_quest", function()
  local rules = require "game.rules"
  local quest = require "game.entities.quest"
  local hero = require "game.entities.hero"

  local dungeon_quest = quest:new {
    title = "Clear Dungeon"
  }
  local fighter = hero:new{
    name = "Bob"
  }
  rules.assign_hero_to_quest(fighter, dungeon_quest)

  it("sets the hero on the quest to the new hero", function()
    assert.equals(fighter, dungeon_quest.hero)
  end)

  it("must have a hero and quest", function()
    assert.has_errors(function() rules.assign_hero_to_quest() end)
  end)
end)