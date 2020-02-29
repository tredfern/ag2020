-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.screen.adventure_guild", function()
  require "game.ui"
  local ag = require "game.entities.adventure_guild"

  local guild = ag:new()
  local screen = moonpie.ui.components.guild_screen({ guild = guild })

  it("shows a list of rooms", function()
    local rooms = screen:find_by_id("room_list")
    assert.equals(rooms.rooms, guild.rooms)
  end)
end)