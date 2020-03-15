-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local moon = {}
moon.phases = {
  new_moon = { description = "New Moon" },
  first_quarter = { description = "First Quarter" },
  full_moon = { description = "Full Moon" },
  last_quarter = { description = "Last Quarter" }
}

moon.phase_sequence = {
  moon.phases.new_moon,
  moon.phases.first_quarter,
  moon.phases.full_moon,
  moon.phases.last_quarter
}

function moon:constructor()
  self.cycle = moonpie.collections.iterators.cycle(moon.phase_sequence)
  self:set_first_quarter()
  self.is_moon = true
end

function moon:get_state()
  return self.cycle.current()
end

function moon:set_new_moon()
  self.cycle.set_current(moon.phases.new_moon)
end

function moon:set_first_quarter()
  self.cycle.set_current(moon.phases.first_quarter)
end

function moon:set_full_moon()
  self.cycle.set_current(moon.phases.full_moon)
end

function moon:set_last_quarter()
  self.cycle.set_current(moon.phases.last_quarter)
end

function moon:advance()
  self.cycle()
end

return moonpie.class(moon)