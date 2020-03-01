-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.quests.guild_rats", function()
  local rats = require "game.quests.guild_rats"

  it("can create a quest entity", function()
    local q = rats.create()
    assert.not_nil(q)
    assert.not_nil(q.title)
    assert.not_nil(q.description)
    assert.file_exists(q.image)
  end)
end)