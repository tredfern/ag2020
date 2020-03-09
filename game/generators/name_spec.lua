-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.generators.name", function()
  local name_generator = require "game.generators.name"

  it("returns a first name that is included in the human first name list", function()
    local n = name_generator{ race = "human", gender = "male" }
    assert.array_includes(n.first_name, name_generator.human.male)
    assert.array_includes(n.last_name, name_generator.human.last)
  end)

  it("provides a name that easily formats into string", function()
    local n = name_generator{ race = "human", gender = "male" }
    assert.equals(n.first_name .. " " .. n.last_name, tostring(n))
  end)

  describe("validate generators", function()
    it("has dwarf generators", function()
      local female = name_generator{ gender = "female", race = "dwarf" }
      local male = name_generator{ gender = "male", race = "dwarf" }
      assert.array_includes(female.first_name, name_generator.dwarf.female)
      assert.array_includes(female.last_name, name_generator.dwarf.last)
      assert.array_includes(male.first_name, name_generator.dwarf.male)
      assert.array_includes(male.last_name, name_generator.dwarf.last)
    end)

    it("has elf generators", function()
      local female = name_generator{ gender = "female", race = "elf" }
      local male = name_generator{ gender = "male", race = "elf" }
      assert.array_includes(female.first_name, name_generator.elf.female)
      assert.array_includes(female.last_name, name_generator.elf.last)
      assert.array_includes(male.first_name, name_generator.elf.male)
      assert.array_includes(male.last_name, name_generator.elf.last)
    end)

    it("has gnome generators", function()
      local female = name_generator{ gender = "female", race = "gnome" }
      local male = name_generator{ gender = "male", race = "gnome" }
      assert.array_includes(female.first_name, name_generator.gnome.female)
      assert.array_includes(female.last_name, name_generator.gnome.last)
      assert.array_includes(male.first_name, name_generator.gnome.male)
      assert.array_includes(male.last_name, name_generator.gnome.last)
    end)

    it("has halfling generators", function()
      local female = name_generator{ gender = "female", race = "halfling" }
      local male = name_generator{ gender = "male", race = "halfling" }
      assert.array_includes(female.first_name, name_generator.halfling.female)
      assert.array_includes(female.last_name, name_generator.halfling.last)
      assert.array_includes(male.first_name, name_generator.halfling.male)
      assert.array_includes(male.last_name, name_generator.halfling.last)
    end)

    it("has human generators", function()
      local female = name_generator{ gender = "female", race = "human" }
      local male = name_generator{ gender = "male", race = "human" }
      assert.array_includes(female.first_name, name_generator.human.female)
      assert.array_includes(female.last_name, name_generator.human.last)
      assert.array_includes(male.first_name, name_generator.human.male)
      assert.array_includes(male.last_name, name_generator.human.last)
    end)
  end)
end)