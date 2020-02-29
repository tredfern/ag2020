-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.room_list", function()
  require "game.ui"

  it("can takes a list of rooms and makes a list of them", function()
    local rooms = { "Dining Room", "Kitchen", "Dog House" }
    local room_list = moonpie.ui.components.room_list({ rooms = rooms })

    assert.not_nil(room_list:find_by_id("room_1"))
    assert.not_nil(room_list:find_by_id("room_2"))
    assert.not_nil(room_list:find_by_id("room_3"))
  end)
end)