-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local icon_style = "icon-small"
moonpie.ui.components("navigation_bar", function()
  local app = require "game.app"
  return {
    moonpie.ui.components.button_group{
      buttons = {
        moonpie.ui.components.button{
          id = "hero_roster_btn",
          moonpie.ui.components.icon({ style = icon_style, icon = "person" }),
          click = function()
            app.transitions.hero_roster()
          end
        },
        moonpie.ui.components.button{
          id = "guild_btn",
          moonpie.ui.components.icon({ style = icon_style, icon = "house" }),
          click = function()
            app.transitions.guild()
          end
        },
        moonpie.ui.components.button{
          id = "quest_btn",
          moonpie.ui.components.icon({ style = icon_style, icon = "treasure-map" }),
          click = function()
            app.transitions.show_quest()
          end
        },
        moonpie.ui.components.button{
          id = "world_map_btn",
          moonpie.ui.components.icon({ style = icon_style, icon = "compass" }),
          click = function()
            app.transitions.world_screen()
          end
        },
      }
    },
    {
      display = "inline",
      style = "align-right",
      moonpie.ui.components.moon_display{ moon = app.game_state:get_moon() },
      moonpie.ui.components.turn_counter{ turn_number = app.game_state:get_turn_counter() },
      moonpie.ui.components.button{
        id = "btn_end_turn",
        style = "button-danger",
        moonpie.ui.components.icon{
          style = icon_style,
          icon = "confirmed"
        },
        click = function()
          app:end_turn()
        end
      }
    }
  }
end)
