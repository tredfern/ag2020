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
    { components.h2({ id = "hero_name_" .. number, text = tostring(hero.name), style = "align-center" }) },
    { components.h3({ id = "hero_class_" .. number, text = hero.class, style = "align-center" }) },
    { components.image({ src = "assets/images/hero-avatar.jpg", style = "align-center" }) },
    components.button({
      id = "btn_select_hero_" .. number,
      components.icon({ icon = "shaking-hands", style = "icon-medium"}),
      style = "align-center",
      click = function()
        local app = require "game.app"
        app.game_state.guild.hero_roster:add(hero)
        app.transitions.hero_roster()
      end
    })
  }
end

components("select_hero", function(props)
  return {
    id = "select_hero_screen",
    moonpie.ui.components.game_screen_layout({
      title = "Choose a Hero",
      content = {
        moonpie.ui.components.section({
          id = "welcome_letter",
          moonpie.utility.tables.map(props.heroes, function(h, i) return hero_view(h, i) end)
        })
      }
    })
  }
end)