-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local app = require "game.app"

moonpie.ui.components("new_game", function()
  return {
    id = "new_game_screen",
    moonpie.ui.components.section({
      moonpie.ui.components.h1({ text = "New Game", style = "menu_screen_title align-center" })
    }),
    moonpie.ui.components.section({
      id = "menu",
      style = "main_menu align-center align-middle",
      moonpie.ui.components.button({
        id = "btn_start_game",
        caption = "Start Game",
        style = "button_primary menu_button",
        click = app.transitions.start_game }),
    })
  }
end)