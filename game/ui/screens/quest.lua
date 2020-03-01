-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("quest", function(props)
  return {
    id = "quest_screen",
    moonpie.ui.components.game_screen_layout({
      title = "Quests",
      content = {
        id = "quest_screen",
        moonpie.ui.components.quest_view(props)
      }
    })
  }
end)