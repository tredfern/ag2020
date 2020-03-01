-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("quest_item", function(props)
  return {
    style = "quest-view",
    { moonpie.ui.components.text{
        id = "quest_title",
        text = props.quest.title, style = "quest-title align-center"
      }
    },
    {
      moonpie.ui.components.image{
        id = "quest_image",
        src = props.quest.image
      },
      moonpie.ui.components.text{
        id = "quest_description",
        text = props.quest.description,
        style = "quest-content"
      },
    }, {
      moonpie.ui.components.button{
        style = "align-center",
        id = "btn_send", caption = "Send {{name}}",
        name = props.hero.name,
        click = function()
          local app = require "game.app"
          app.transitions.guild()
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