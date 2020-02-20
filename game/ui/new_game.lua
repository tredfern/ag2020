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
      id = "welcome_letter",
      style = "story_message align-center align-middle",
      moonpie.ui.components.section({
        style = "story_message_internal align-center",
        {
          moonpie.ui.components.text({ text = "Congratulations!", style = "message_title align-center" }),
        },
        {
          moonpie.ui.components.text({
            text = "You have been selected for the opportunity of a LIFETIME!",
            style = "message_sub_title align-center"
          }),
        },
        moonpie.ui.components.hr({ margin = 4 }),
        moonpie.ui.components.text({
          text = "Your accomplishments at the Fairhaven Business Management Institute have qualified you for the "
          .. "newest role of restoring the Fairhaven Guild of Adventurers and Magicians to it's former glory!",
          margin = { bottom = 5 },
          style = "message_text"
        }),
        moonpie.ui.components.text({
          text = "Of course, you'll have to take care of the rats that are in the kitchen. They are a little bigger "
          .. "than your normal rats. But you are in luck! We have a selection of fine candidates that want to be "
          .. "your first member!",
          margin = { bottom = 5 },
          style = "message_text"
        }),
      }),
      moonpie.ui.components.button({
        id = "btn_start_game",
        caption = "Start Game",
        style = "button_primary menu_button",
        click = app.transitions.start_game }),
    })
  }
end)