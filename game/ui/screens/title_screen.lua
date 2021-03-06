-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local app = require "game.app"

moonpie.ui.components("title_screen", function()
  return {
    id = "title_screen",
    style = "title_screen",
    moonpie.ui.components.screen_title({ title = "Welcome to Fairhaven" }),
    moonpie.ui.components.section({
      id = "menu",
      style = "main_menu align-center",
      moonpie.ui.components.button({
        id = "btn_new_game",
        caption = "New Game",
        style = "button-primary menu_button",
        click = app.transitions.new_game
      }),
      moonpie.ui.components.button({ id = "btn_continue_game", caption = "Continue", style = "menu_button" }),
      moonpie.ui.components.button({
        id = "btn_settings",
        caption = "Settings",
        style = "menu_button",
        click = app.transitions.settings
      }),
      moonpie.ui.components.button({ id = "btn_quit", caption = "Quit", style = "menu_button", click = app.quit })
    }),
    moonpie.ui.components.version({ style = "align-right align-bottom" }),
  }
end)