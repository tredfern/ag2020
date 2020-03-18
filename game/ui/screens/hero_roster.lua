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
        {
          moonpie.ui.components.button{
            caption = "Hire",
            id = "btn_hire",
            style = "align-right",
            click = app.transitions.hire_heroes
          }
        },
        {
          moonpie.utility.tables.map(
            props.heros,
            function(h, i)
              return moonpie.ui.components.hero_row({ hero = h, row_number = i })
            end)
        }
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
      text = "({{race}} Level {{level}} {{class}})",
      race = props.hero.race,
      class = props.hero.class,
      level = props.hero.level,
      style = "hero-row-name align-middle"
    },
    moonpie.ui.components.text{
      text = "XP({{xp}})",
      xp = props.hero.xp,
      style = "hero-row-name align-middle"
    }
  }
end)