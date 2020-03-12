-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("turn_counter", function()
  local app = require "game.app"

  return {
    moonpie.ui.components.text{
      id = "txt_turn_number",
      text = "Week: {{turnnumber}}",
      turnnumber = app.game_state.turn_counter,
      style = "turn_counter_number align-middle"
    }
  }
end)