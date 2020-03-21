-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.quests.creepy_graveyard", function()
  local creepy_graveyard = require "game.quests.creepy_graveyard"

  it("has the primary attributes", function()
    local cg = creepy_graveyard:clone()
    assert.not_nil(cg.title)
    assert.not_nil(cg.description)
    assert.not_nil(cg.image)
    assert.not_nil(cg.prerequisites)
  end)
end)