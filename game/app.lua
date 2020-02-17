-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

require "assets.stylesheet"

local app = {
  transitions = {}
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
  require "game.ui.title_screen"
  app.render(moonpie.ui.components.title_screen())
end

function app.transitions.new_game()
  require "game.ui.new_game"
  app.render(moonpie.ui.components.new_game())
end

function app.transitions.settings()
  require "game.ui.settings"
  app.render(moonpie.ui.components.settings_screen())
end

-- bind hot keys
moonpie.keyboard:hotkey("escape", app.transitions.title_screen)

return app