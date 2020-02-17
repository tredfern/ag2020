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
  }
end)