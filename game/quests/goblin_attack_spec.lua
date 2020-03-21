-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.quests.goblin_attack", function()
  local goblin_attack = require "game.quests.goblin_attack"

  it("has the primary attributes", function()
    local ga = goblin_attack:clone()
    assert.not_nil(ga.title)
    assert.not_nil(ga.description)
    assert.not_nil(ga.image)
    assert.not_nil(ga.prerequisites)
  end)
end)