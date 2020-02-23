-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("quest", function()
  return {
    id = "quest_screen",
    moonpie.ui.components.message_layout({
      title = "Quest - Rats in the Adventure Guild!",
      content = {
        id = "quest_screen"
      }
    })
  }
end)