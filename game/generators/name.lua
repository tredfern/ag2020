-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local generator = {}


function generator:create()
  return setmetatable({
    first_name = moonpie.utility.tables.pick_random(generator.human.male),
    last_name = moonpie.utility.tables.pick_random(generator.human.last)
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

generator.human = {
  female = flatten_csv("assets/data/names/female-first-names/human.csv"),
  last = flatten_csv("assets/data/names/last-name/humans.csv"),
  male = flatten_csv("assets/data/names/male-first-names/human.csv"),
}

return setmetatable(
  generator,
  { __call = generator.create }
)