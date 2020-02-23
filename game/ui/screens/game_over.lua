-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("game_over", function()
  return {
    id = "game_over_screen",
    moonpie.ui.components.message_layout({
      title = "Game Over",
      content = {
        moonpie.ui.components.section({
          { moonpie.ui.components.text({ text = "Hooray!", style = "message_title align-center" }) },
          moonpie.ui.components.text({ text = "You won the game! Great work! "})
        }),
        moonpie.ui.components.button({
          id = "btn_main_menu",
          caption = "Back to Main Menu",
          style = "button-primary menu_button",
          click = function()
            local app = require "game.app"
            app.transitions.title_screen()
          end
        })
      }
    })
  }
end)