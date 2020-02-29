-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("guild_screen", function(props)
  return {
    id = "guild_screen",
    moonpie.ui.components.game_screen_layout({
      title = "Guild",
      content = {
        {
          moonpie.ui.components.h1({ text = "Rooms" }),
          {
            moonpie.ui.components.room_list({
              id = "room_list",
              rooms = props.guild.rooms
            })
          }
        }
      }
    })
  }
end)