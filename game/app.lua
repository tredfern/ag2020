-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

require "assets.stylesheet"
local game_state = require "game.game_state"

local app = {
  transitions = {},
  game_state = game_state:new()
}

function app.render(scene)
  moonpie.render("ui",
    moonpie.ui.components.body(scene)
  )
end

function app.quit()
  love.event.quit()
end

function app.transitions.game_over()
  app.render(moonpie.ui.components.game_over())
end

function app.transitions.title_screen()
  app.render(moonpie.ui.components.title_screen())
end

function app.transitions.new_game()
  app.game_state = game_state:new()
  app.render(moonpie.ui.components.new_game())
end

function app.transitions.settings()
  app.render(moonpie.ui.components.settings_screen())
end

function app.transitions.start_game()
  app.transitions.hire_heroes()
end

function app.transitions.hire_heroes()
  local hero = require "game.entities.hero"
  app.render(moonpie.ui.components.select_hero({
    heroes = { hero.generate(), hero.generate(), hero.generate() }
  }))
end

function app.transitions.show_quest()
  local quests = require "game.quests"
  app.render(moonpie.ui.components.quest_screen({ quests = quests.get_available() }))
end

function app.transitions.guild()
  app.render(moonpie.ui.components.guild_screen({ guild = app.game_state.guild }))
end

function app.transitions.hero_roster()
  app.render(moonpie.ui.components.hero_roster( { heros = app.game_state.guild.hero_roster }))
end

function app.transitions.world_screen()
  app.render(moonpie.ui.components.world_screen())
end
-- bind hot keys
moonpie.keyboard:hotkey("escape", app.transitions.title_screen)

return app