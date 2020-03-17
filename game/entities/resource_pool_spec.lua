-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.entities.resource_pool", function()
  local resource_pool = require "game.entities.resource_pool"

  it("tracks money", function()
    local rp = resource_pool:new()
    assert.equals(0, rp.money)
  end)
end)