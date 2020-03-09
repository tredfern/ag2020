-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local app = require "game.app"

moonpie.ui.components("hero_roster", function(props)
  return {
    id = "hero_roster_screen",
    moonpie.ui.components.game_screen_layout({
      title = "Hero Roster",
      content = {
        moonpie.utility.tables.map(
          props.heros,
          function(h, i)
            return moonpie.ui.components.hero_row({ hero = h, row_number = i })
          end)
      }
    })
  }
end)

moonpie.ui.components("hero_row", function(props)
  return {
    id = "hero_row_" .. props.row_number,
    style = "hero-row",
    moonpie.ui.components.icon{ icon = props.hero.gender, style = "icon-medium" },
    moonpie.ui.components.text({ text = tostring(props.hero.name), style = "hero-row-name align-middle" }),
    moonpie.ui.components.text{
      text = "({{race}} {{class}})",
      race = props.hero.race,
      class = props.hero.class,
      style = "hero-row-name align-middle"
    },
    moonpie.ui.components.button({
      id = "hero_row_quest_" .. props.row_number,
      caption = "Quest!",
      style = "button-warning align-right align-middle",
      click = function()
        app.transitions.show_quest(props.hero)
      end
    })
  }
end)