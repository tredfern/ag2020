-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local hero = {}

function hero:constructor(props)
  self.name = props.name
end


return moonpie.class(hero)