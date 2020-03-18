-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.rules.start_turn.pick_quests", function()
  local quest = require "game.entities.quest"
  local quest_db
  local pick_quests = require "game.rules.start_turn.pick_quests"
  local game_state

  before_each(function()
    game_state = require "game.game_state":new()
    quest_db = {
      quest:new{},
      quest:new{},
      quest:new{}
    }
  end)

  it("picks quests that are available this turn", function()
    pick_quests(game_state, quest_db)
    assert.not_equals(0, #game_state.quests)
  end)
end)