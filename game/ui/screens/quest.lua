-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("quest_item", function(props)
  return {
    style = "quest-view",
    { moonpie.ui.components.text{ text = "Rats in the Guild", style = "quest-title align-center" } },
    {
      moonpie.ui.components.image{
        src = "assets/images/dire-rat.png"
      },
      moonpie.ui.components.text{
        text = "There are rats in the guild! You need to clean them out to start your business.",
        style = "quest-content"
      },
    }, {
      moonpie.ui.components.button{
        style = "align-center",
        id = "btn_send", caption = "Send {{name}}",
        name = props.hero.name,
        click = function()
          local app = require "game.app"
          app.transitions.game_over()
        end
      }
    }
  }
end)

moonpie.ui.components("quest", function(props)
  return {
    id = "quest_screen",
    moonpie.ui.components.game_screen_layout({
      title = "Quests",
      content = {
        id = "quest_screen",
        moonpie.ui.components.quest_item(props)
      }
    })
  }
end)