-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local components = moonpie.ui.components

local function hero_view(hero, number)
  return {
    id = "hero_view_" .. number,
    hero = hero,
    style = "hero_view",
    { components.h2({ text = "{{name}}", style = "align-center", name = hero.name }) },
    components.p("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec mauris at massa ultrices" ..
      "elementum sed at orci. Sed id turpis quis lectus faucibus ornare ut eu turpis. Etiam imperdiet elit nec " ..
      "tempus volutpat. Fusce arcu magna, consectetur quis mi at, tempus scelerisque nunc. In hac habitasse platea "),
    components.button({
      id = "btn_select_hero_" .. number,
      components.icon({ icon = "scroll-unfurled", style = "icon-medium"}),
      style = "align-center",
      click = function()
        local app = require "game.app"
        app.guild.hero_roster:add(hero)
        app.transitions.hero_roster()
      end
    })
  }
end

components("select_hero", function()
  return {
    id = "select_hero_screen",
    moonpie.ui.components.screen_title({ title = "Choose a Hero" }),
    moonpie.ui.components.section({
      id = "welcome_letter",
      style = "story_message align-center align-middle",
      hero_view({ name = "Steve" }, 1),
      hero_view({ name = "Clare" }, 2),
      hero_view({ name = "Janine" }, 3)
    })
  }
end)