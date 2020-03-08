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

  describe("Generating Heroes", function()
    it("roles up a character with a name", function()
      local h = hero.generate()
      assert.not_nil(h.name)
      assert.not_nil(h.name.first_name)
      assert.not_nil(h.name.last_name)
    end)

    it("picks a class for the character", function()
      local h = hero.generate()
      assert.not_nil(h.class)
    end)
  end)
end)