-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.generators.name", function()
  local name_generator = require "game.generators.name"

  it("can return a name", function()
    local n = name_generator()
    assert.not_nil(n)
    assert.is_table(n)
    assert.not_nil(n.first_name)
    assert.not_nil(n.last_name)
    assert.is_string(n.first_name)
    assert.is_string(n.last_name)
  end)

  it("returns a first name that is included in the human first name list", function()
    local n = name_generator()
    assert.array_includes(n.first_name, name_generator.human.male)
    assert.array_includes(n.last_name, name_generator.human.last)
  end)

  it("provides a name that easily formats into string", function()
    local n = name_generator()
    assert.equals(n.first_name .. " " .. n.last_name, tostring(n))
  end)
end)