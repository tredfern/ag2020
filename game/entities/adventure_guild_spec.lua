-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.entitites.adventure_guild", function()
  local adventure_guild = require "game.entities.adventure_guild"

  it("has a roster of heros", function()
    local ag = adventure_guild:new()
    assert.not_nil(ag.hero_roster)
  end)
end)