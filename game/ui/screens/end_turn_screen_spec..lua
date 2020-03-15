-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.end_turn_screen", function()
  require "game.ui"

  it("presents any updates that occurred", function()
    local turn = moonpie.ui.components.end_turn_screen{
      messages = {
        "Quest Completed!"
      }
    }

    local message_one = turn:find_by_id("message_1")
    assert.equals("Quest Completed!", message_one.text)
  end)
end)