-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("games.quests", function()
  local quests = require "game.quests"

  it("has some quests", function()
    assert.greater_than(0, #quests)
  end)
end)