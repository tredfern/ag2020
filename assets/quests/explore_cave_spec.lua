-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("assets.quests.explore_cave", function()
  local cave = require "assets.quests.explore_cave"

  it("can create a quest entity", function()
    local q = cave:clone()
    assert.not_nil(q)
    assert.not_nil(q.title)
    assert.not_nil(q.description)
    assert.file_exists(q.image)
  end)

  it("is available turn 1 on", function()
    local gs = require "game.game_state":new()
    assert.is_false(cave:check_prerequisites(gs))
    gs.turn_counter = 1
    assert.is_true(cave:check_prerequisites(gs))
  end)
end)