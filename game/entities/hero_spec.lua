-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.entities.hero", function()
  local hero = require "game.entities.hero"

  it("can be named", function()
    local h = hero:new{ name = "Steve" }
    assert.equals("Steve", h.name)
  end)
end)