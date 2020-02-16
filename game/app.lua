-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

require "assets.stylesheet"

local app = {}

function app.render(scene)
  moonpie.render("ui",
    moonpie.ui.components.body(scene)
  )
end

function app.quit()
  love.event.quit()
end

return app