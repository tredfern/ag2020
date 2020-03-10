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
    local generated_hero = hero.generate()
    it("roles up a character with a name", function()
      assert.not_nil(generated_hero.name)
      assert.not_nil(generated_hero.name.first_name)
      assert.not_nil(generated_hero.name.last_name)
    end)

    it("picks a class for the character", function()
      assert.not_nil(generated_hero.class)
    end)

    it("chooses a race for the hero", function()
      assert.not_nil(generated_hero.race)
    end)

    it("choose a gender for the hero", function()
      assert.not_nil(generated_hero.gender)
    end)

    it("starts at zero XP", function()
      assert.equals(0, generated_hero.xp)
    end)

    it("starts at level 1", function()
      assert.equals(1, generated_hero.level)
    end)
  end)
end)