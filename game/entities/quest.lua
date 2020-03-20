-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local quest = {}

function quest:constructor(props)
  self.title = props.title
  self.description = props.description
  self.image = props.image
  self.prerequisites = props.prerequisites
end

function quest:assign(hero)
  self.assigned_hero = hero
end

function quest:check_prerequisites(game_state)
  if self.prerequisites then return self.prerequisites(game_state) end
end

function quest:clone()
  return quest.new{
    title = self.title,
    description = self.description,
    image = self.image,
    prerequisites = self.prerequisites
  }
end

local prereqs = {
  turn_counter = function(min)
    return function(gs)
      return gs:get_turn_counter() >= min
    end
  end
}

quest.prerequisites = prereqs

return moonpie.class(quest)