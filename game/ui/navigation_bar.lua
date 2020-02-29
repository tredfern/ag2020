-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("navigation_bar", function()
  local app = require "game.app"
  return moonpie.ui.components.button_group{
    style = "align-right align-middle",
    buttons = {
      moonpie.ui.components.button{
        id = "hero_roster_btn",
        moonpie.ui.components.icon({ style = "icon-medium", icon = "person" }),
        click = function()
          app.transitions.hero_roster()
        end
      },
      moonpie.ui.components.button{
        id = "guild_btn",
        moonpie.ui.components.icon({ style = "icon-medium", icon = "house" }),
        click = function()
          app.transitions.guild()
        end
      },
      moonpie.ui.components.button{
        id = "quest_btn",
        moonpie.ui.components.icon({ style = "icon-medium", icon = "treasure-map" }),
        click = function()
          app.transitions.show_quest({ hero = app.guild.hero_roster[1]})
        end
      },
      moonpie.ui.components.button{
        id = "world_map_btn",
        moonpie.ui.components.icon({ style = "icon-medium", icon = "compass" }),
        click = function()
          app.transitions.world_screen()
        end
      },
    }
  }
end)