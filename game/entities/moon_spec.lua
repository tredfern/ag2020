-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.entities.moon", function()
  local moon
  before_each(function()
    moon = require("game.entities.moon"):new()
  end)

  it("is flagged as the moon for entity filter", function()
    assert.is_true(moon.is_moon)
  end)

  it("has a new moon state", function()
    moon:set_new_moon()
    assert.equals(moon.phases.new_moon, moon:get_state())
    assert.equals("New Moon", moon:get_state().description)
  end)

  it("has a first quarter state", function()
    moon:set_first_quarter()
    assert.equals(moon.phases.first_quarter, moon:get_state())
    assert.equals("First Quarter", moon:get_state().description)
  end)

  it("has a full moon state", function()
    moon:set_full_moon()
    assert.equals(moon.phases.full_moon, moon:get_state())
    assert.equals("Full Moon", moon:get_state().description)
  end)

  it("has a last quarter", function()
    moon:set_last_quarter()
    assert.equals(moon.phases.last_quarter, moon:get_state())
    assert.equals("Last Quarter", moon:get_state().description)
  end)

  it("starts as a first quarter", function()
    assert.equals(moon.phases.first_quarter, moon:get_state())
  end)

  it("advances through each state", function()
    assert.equals(moon.phases.first_quarter, moon:get_state())
    moon:advance()
    assert.equals(moon.phases.full_moon, moon:get_state())
    moon:advance()
    assert.equals(moon.phases.last_quarter, moon:get_state())
    moon:advance()
    assert.equals(moon.phases.new_moon, moon:get_state())
    moon:advance()
    assert.equals(moon.phases.first_quarter, moon:get_state())
  end)
end)