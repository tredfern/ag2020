-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("assets.quests.explore_dungeon", function()
  local explore_dungeon = require "assets.quests.explore_dungeon"

  it("has the primary attributes", function()
    local ed = explore_dungeon:clone()
    assert.not_nil(ed.title)
    assert.not_nil(ed.description)
    assert.not_nil(ed.image)
    assert.not_nil(ed.prerequisites)
  end)
end)