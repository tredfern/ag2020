-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT


moonpie.ui.components("hero_roster", function(props)
  return {
    id = "hero_roster_screen",
    moonpie.ui.components.screen_title({ title = "Hero Roster" }),
    moonpie.ui.components.section(
      moonpie.utility.tables.map(
        props.heros,
        function(h, i)
          return moonpie.ui.components.hero_row({ hero = h, row_number = i })
        end)
    )
  }
end)

moonpie.ui.components("hero_row", function(props)
  return {
    id = "hero_row_" .. props.row_number,
    moonpie.ui.components.text({ text = props.hero.name })
  }
end)