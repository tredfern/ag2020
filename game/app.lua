-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

require "assets.stylesheet"
local ecs = require "moonpie.ecs"
local adventure_guild = require "game.entities.adventure_guild"

local app = {
  transitions = {},
  world = ecs.world:new(),
  guild = adventure_guild:new()
}

function app.render(scene)
  moonpie.render("ui",
    moonpie.ui.components.body(scene)
  )
end

function app.quit()
  love.event.quit()
end

function app.transitions.title_screen()
  app.render(moonpie.ui.components.title_screen())
end

function app.transitions.new_game()
  app.render(moonpie.ui.components.new_game())
end

function app.transitions.settings()
  app.render(moonpie.ui.components.settings_screen())
end

function app.transitions.start_game()
  app.render(moonpie.ui.components.select_hero())
end

function app.transitions.show_quest()
  app.render(moonpie.ui.components.quest())
end


function app.transitions.hero_roster()
  app.render(moonpie.ui.components.hero_roster( { heros = app.guild.hero_roster }))
end
-- bind hot keys
moonpie.keyboard:hotkey("escape", app.transitions.title_screen)

return app