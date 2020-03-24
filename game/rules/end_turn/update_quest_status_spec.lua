-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.rules.end_turn.update_quest_status", function()
  local rule = require "game.rules.end_turn.update_quest_status"
  local quest = require "game.entities.quest"
  local hero = require "game.entities.hero"
  local game_state = require "game.game_state"

  it("it increments the turn count of the life of the quest", function()
    local gs = game_state:new()
    local q = quest:new { }:clone()
    gs.quests:add(q)

    rule(gs)

    assert.equals(1, q.turn_counter)
  end)

  it("increments the progress of the quest if hero is assigned", function()
    local gs = game_state:new()
    local q = quest:new { }:clone()
    local h = hero:new { }
    q.hero = h

    gs.quests:add(q)
    rule(gs)

    assert.equals(1, q.progress.turn_counter)
  end)

  describe("completed quests", function()
    local comp_quest, comp_gs, comp_hero
    before_each(function()
      comp_quest = quest:new {
        goals = {
          turns = 3
        },
        rewards = {
          xp = 30,
          money = 21
        }
      }:clone()
      comp_gs = game_state:new()
      comp_hero = hero:new { }
      comp_quest.hero = comp_hero
      comp_quest.progress.turn_counter = 3
      comp_gs.quests:add(comp_quest)
    end)

    it("marks the quest completed", function()
      rule(comp_gs)
      assert.is_true(comp_quest.completed)
    end)

    it("rewards assigned hero xp if quest completes", function()
      rule(comp_gs)
      assert.equals(30, comp_hero.xp)
    end)

    it("rewards the guild with more money from the quest", function()
      rule(comp_gs)
      assert.equals(21, comp_gs:get_resource_pool().money)
    end)

    it("moves the quest to the completed quest list", function()
      rule(comp_gs)
      assert.not_array_includes(comp_quest, comp_gs.quests)
      assert.array_includes(comp_quest, comp_gs.completed_quests)
    end)
  end)

end)