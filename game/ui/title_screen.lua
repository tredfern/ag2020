-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local app = require "game.app"

local function new_game()
  app.render(moonpie.ui.components.new_game())
end

moonpie.ui.components("title_screen", function()
  return {
    moonpie.ui.components.section({
      moonpie.ui.components.h1({ text = "Welcome to Fairhaven", style = "title align-center" }),
    }),
    moonpie.ui.components.section({
      id = "menu",
      style = "main_menu align-center align-middle",
      moonpie.ui.components.button({
        id = "btn_new_game",
        caption = "New Game",
        style = "button_primary menu_button",
        click = new_game }),
      moonpie.ui.components.button({ id = "btn_continue_game", caption = "Continue", style = "menu_button" }),
      moonpie.ui.components.button({ id = "btn_settings", caption = "Settings", style = "menu_button" }),
      moonpie.ui.components.button({ id = "btn_quit", caption = "Quit", style = "menu_button", click = app.quit })
    })
  }
end)