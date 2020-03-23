-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local function quest_status(quest)
  if quest.hero then
    return moonpie.ui.components.text{
      style = "align-center",
      id = "quest_status",
      text = "Hero {{name}} assigned.",
      name = quest.hero.name
    }
  else
    return moonpie.ui.components.button{
      style = "align-center",
      id = "btn_assign_hero",
      caption = "Assign Hero",
      click = function()
        local app = require "game.app"
        app.transitions.assign_hero(quest)
      end
    }
  end
end

moonpie.ui.components("quest_view", function(props)
  return {
    id = tostring(props.quest),
    quest = props.quest,
    style = "quest-view",
    {
      moonpie.ui.components.text{
        id = "quest_title",
        text = props.quest.title, style = "quest-title align-center"
      }
    }, {
      moonpie.ui.components.image{
        id = "quest_image",
        style = "quest-image align-center",
        src = props.quest.image,
        background_color = "main"
      },
      moonpie.ui.components.text{
        id = "quest_description",
        text = props.quest.description,
        style = "quest-content"
      },
    }, {
      quest_status(props.quest)
    }
  }
end)