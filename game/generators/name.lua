-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local generator = {}


function generator:create(options)
  return setmetatable({
    first_name = moonpie.utility.tables.pick_random(generator[options.race][options.gender]),
    last_name = moonpie.utility.tables.pick_random(generator[options.race].last)
  }, {
    __tostring = function(name)
      return name.first_name .. " " .. name.last_name
    end
  })
end

local function flatten_csv(file)
  local content = moonpie.utility.csv.open(file)
  local output = {}
  for fields in content:lines() do
    for _, v in ipairs(fields) do
      output[#output + 1] = v
    end
  end
  return output
end

generator.dwarf = {
  female = flatten_csv("assets/data/names/female-first-names/dwarf.csv"),
  last = flatten_csv("assets/data/names/last-name/dwarves.csv"),
  male = flatten_csv("assets/data/names/male-first-names/dwarf.csv"),
}
generator.elf = {
  female = flatten_csv("assets/data/names/female-first-names/elf.csv"),
  last = flatten_csv("assets/data/names/last-name/elves.csv"),
  male = flatten_csv("assets/data/names/male-first-names/elf.csv"),
}
generator.gnome = {
  female = flatten_csv("assets/data/names/female-first-names/gnome.csv"),
  last = flatten_csv("assets/data/names/last-name/halflings-gnomes.csv"),
  male = flatten_csv("assets/data/names/male-first-names/gnome.csv"),
}
generator.halfling = {
  female = flatten_csv("assets/data/names/female-first-names/halfling.csv"),
  last = flatten_csv("assets/data/names/last-name/halflings-gnomes.csv"),
  male = flatten_csv("assets/data/names/male-first-names/halfling.csv"),
}
generator.human = {
  female = flatten_csv("assets/data/names/female-first-names/human.csv"),
  last = flatten_csv("assets/data/names/last-name/humans.csv"),
  male = flatten_csv("assets/data/names/male-first-names/human.csv"),
}

return setmetatable(
  generator,
  { __call = generator.create }
)