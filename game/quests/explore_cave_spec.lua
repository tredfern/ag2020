-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.quests.explore_cave", function()
  local cave = require "game.quests.explore_cave"

  it("can create a quest entity", function()
    local q = cave:clone()
    assert.not_nil(q)
    assert.not_nil(q.title)
    assert.not_nil(q.description)
    assert.file_exists(q.image)
  end)
end)