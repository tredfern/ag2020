-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local adventure_guild = {}

function adventure_guild:constructor()
  self.hero_roster = moonpie.collections.list:new()
end


return moonpie.class(adventure_guild)

