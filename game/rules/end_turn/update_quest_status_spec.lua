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
end)