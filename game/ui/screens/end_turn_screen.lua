-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT


moonpie.ui.components("end_turn_screen", function(props)
  return moonpie.ui.components.game_screen_layout{
    title = "End Turn Results",
    content = {
      id = "end_turn_screen",
      moonpie.utility.tables.map(props.messages, function(v, i)
        return moonpie.ui.components.end_turn_message{ id = "message_" .. i, message = v }
      end)
    }
  }
end)

moonpie.ui.components("end_turn_message", function(props)
  return moonpie.ui.components.text{
    id = props.id,
    text = props.message
  }
end)