-- Copyright (c) 2019 Redfern, Trevor <trevorredfern@gmail.com>
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT
package.path = package.path .. ";ext/?.lua;ext/?/init.lua;ext/moonpie/?.lua;ext/moonpie/?/init.lua;"
function love.conf(t)
  t.window.title = "Moonpie Demo"
  t.window.height = 768
  t.window.width = 1024
  t.window.vsync = 1
  t.window.fullscreen = false
  t.console = true
end

