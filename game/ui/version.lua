-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("version", function()
  local v = love.filesystem.read("version.txt")
  return moonpie.ui.components.text{
    text = v
  }
end)