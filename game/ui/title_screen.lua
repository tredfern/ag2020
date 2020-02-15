-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local title_screen = moonpie.ui.components.body({
  moonpie.ui.components.section({
    padding = 30,
    moonpie.ui.components.h1({ text = "Welcome to Fairhaven", style = "title align-center" }),
  }),
  moonpie.ui.components.section({
    id = "menu",
    style = "main_menu align-center align-middle",
    moonpie.ui.components.button({ caption = "New Game", width = "100%" }),
    moonpie.ui.components.button({ caption = "Continue", width = "100%" }),
    moonpie.ui.components.button({ caption = "Settings", width = "100%" }),
    moonpie.ui.components.button({ caption = "Quit", width = "100%", click = function() love.event.quit() end })
  })
})

return title_screen