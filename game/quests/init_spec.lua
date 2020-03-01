-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("games.quests", function()
  local quests = require "game.quests"

  it("can return quests that are available", function()
    local q = quests.get_available()
    assert.greater_than(0, #q)
  end)
end)