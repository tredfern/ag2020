-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.rules", function()
  local rules = require "game.rules"

  it("has rules for the start of the turn", function()
    assert.is_function(rules.start_turn)
  end)

  it("has rules for the end of the turn", function()
    assert.is_function(rules.end_turn)
  end)

  it("has rules for assigning hero to quest", function()
    assert.is_function(rules.assign_hero_to_quest)
  end)
end)