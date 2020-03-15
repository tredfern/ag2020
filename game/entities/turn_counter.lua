-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local turn_counter = {}

function turn_counter:constructor()
  self.count = 0
end


return moonpie.class(turn_counter)