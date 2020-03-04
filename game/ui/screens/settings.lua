-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("settings_screen", function()
  return {
    id = "settings_screen",
    moonpie.ui.components.section({
      moonpie.ui.components.h1({ text = "Settings", style = "menu_screen_title align-center" })
    }),
    moonpie.ui.components.section({
      moonpie.ui.components.text({ text = "Resolution: "}),
      moonpie.ui.components.cycle_list({
        id = "resolutions",
        list = {
          "800 x 600",
          "1024 x 768",
          "1280 x 962",
          "1440 x 900",
          "1600 x 900",
          "1920 x 1080"
        }
      })
    }),
    moonpie.ui.components.section({
      moonpie.ui.components.button{ id = "btn_apply", click = function() end }
    })

  }
end)