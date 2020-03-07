-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local resolutions = {
  { 800, 600 },
  { 1024, 768 },
  { 1280, 962 },
  { 1440, 900 },
  { 1600, 900 },
  { 1920, 1080 }
}

moonpie.ui.components("settings_screen", function()
  local component
  component = {
    id = "settings_screen",
    moonpie.ui.components.section({
      moonpie.ui.components.h1({ text = "Settings", style = "menu_screen_title align-center" })
    }),
    moonpie.ui.components.section({
      style = "settings-dialog align-center",
      {
        moonpie.ui.components.text({
          text = "Resolution: ",
          style = "label align-middle"
        }),
        moonpie.ui.components.cycle_list({
          id = "resolutions",
          list = moonpie.utility.tables.map(
            resolutions,
            function(res) return string.format("%d x %d", res[1], res[2]) end
          )
        })
      },
      moonpie.ui.components.section({
        style = "dialog-controls align-bottom",
        moonpie.ui.components.button{
          id = "btn_apply",
          style = "button-primary",
          caption = "Apply",
          click = function()
            local v = moonpie.utility.string.split(component:find_by_id("resolutions"):get_selected(), " x ")
            love.window.setMode(tonumber(v[1]), tonumber(v[2]), { fullscreen = false })
            moonpie.resize(tonumber(v[1]), tonumber(v[2]))
          end
        },
        moonpie.ui.components.button{
          id = "btn_cancel",
          caption = "Cancel",
          click = function()
            local app = require "game.app"
            app.transitions.title_screen()
          end
        }
      })
    })
  }
  return component
end)