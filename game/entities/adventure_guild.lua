-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local adventure_guild = {}

function adventure_guild:constructor()
  self.hero_roster = moonpie.collections.list:new()
  self.rooms = moonpie.collections.list:new()
  self.rooms:add("Entry Hall", "Kitchen", "Dining Room", "Workers' Quarters")
end


return moonpie.class(adventure_guild)

