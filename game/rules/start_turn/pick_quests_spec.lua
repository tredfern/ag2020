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
      quest:new{ title = "not-available", prerequisites = function() return false end},
      quest:new{ title = "available 1", prerequisites = function() return true end },
      quest:new{ title = "available 2", prerequisites = function() return true end }
    }
  end)

  it("picks quests that are available this turn", function()
    pick_quests(game_state, quest_db)
    assert.equals(2, #game_state.quests)
    assert.equals("available 1", game_state.quests[1].title)
    assert.equals("available 2", game_state.quests[2].title)
  end)

  it("defaults the database to the entire quest database", function()
    assert.has_no_errors(function() pick_quests(game_state) end)
  end)
end)