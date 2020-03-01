-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local quest = {}

function quest:constructor(props)
  self.title = props.title
  self.description = props.description
  self.image = props.image
end

function quest:assign(hero)
  self.assigned_hero = hero
end

return moonpie.class(quest)