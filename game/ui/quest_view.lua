-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local function quest_status(quest)
  if quest.hero then
    return moonpie.ui.components.text{
      style = "align-center quest-view-status",
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

local function quest_rewards(quest)
  if quest.rewards == nil then return end
  local result = moonpie.collections.list:new()

  if quest.rewards.xp then
    result:add(moonpie.ui.components.text {
      id = "txt_rewards_xp",
      text = "XP: {{xp}}",
      xp = quest.rewards.xp,
      style = "quest-reward"
    })
  end
  if quest.rewards.money then
    result:add(moonpie.ui.components.text {
      id = "txt_rewards_money",
      text = "$$: {{money}}",
      money = quest.rewards.money,
      style = "quest-reward"
    })
  end

  return result
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
      quest_rewards(props.quest)
    },{
      quest_status(props.quest)
    }
  }
end)