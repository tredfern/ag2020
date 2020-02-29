-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("room_row", function(props)
  return {
    id = "room_" .. props.room_number,
    moonpie.ui.components.text({ text = props.room, style = "room_name" }),
    style = "room_row"
  }
end)

moonpie.ui.components("room_list", function(props)
  return {
    rooms = props.rooms,
    moonpie.utility.tables.map(
      props.rooms,
      function(r, i)
        return moonpie.ui.components.room_row({ room = r, room_number = i })
      end
    ),
    style = "room_table"
  }
end)