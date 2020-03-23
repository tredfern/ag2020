-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local rules = require "game.rules"
local app = require "game.app"

moonpie.ui.components("assign_hero_list", function(props)
  return {
    id = "hero_list",
    moonpie.utility.tables.map(props.heroes, function(hero, index)
      return {
        id = "hero_" .. index,
        moonpie.ui.components.text{ text = "{{name}}", name = hero.name },
        moonpie.ui.components.button {
          id = "btn_assign_hero_" .. index,
          caption = "Assign",
          click = function()
            rules.assign_hero_to_quest(hero, props.quest)
            app.transitions.show_quest()
          end
        }
      }
    end)
  }
end)

moonpie.ui.components("assign_hero_screen", function(props)
  return {
    id = "assign_hero_screen",
    quest = props.quest,
    moonpie.ui.components.game_screen_layout{
      title = props.quest.title,
      content = {
        {
          moonpie.ui.components.image{ src = props.quest.image },
          moonpie.ui.components.text{ text = props.quest.description },
        },
        {
          moonpie.ui.components.assign_hero_list{ heroes = props.heroes, quest = props.quest }
        }
      }
    }
  }

end)