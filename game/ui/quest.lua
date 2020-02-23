-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT


moonpie.ui.components("quest", function(props)
  return {
    id = "quest_screen",
    moonpie.ui.components.message_layout({
      title = "Quest - Rats in the Adventure Guild!",
      content = {
        id = "quest_screen",
        moonpie.ui.components.section({
          moonpie.ui.components.text({ text = "Oh No!", style = "message_title align-center" }),
          moonpie.ui.components.text({
            text = "Rats have infested the adventure guild. Send your hero to clear them out!"
          })
        }),
        moonpie.ui.components.button({
          id = "btn_send",
          caption = "Send {{name}} to clear them out",
          style = "menu_button button-primary",
          name = props.hero.name,
          click = function()
            local app = require "game.app"
            app.transitions.game_over()
          end
        })

      }
    })
  }
end)