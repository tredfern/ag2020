-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("game_screen_layout", function(props)
  return {
    {
      id = "header",
      style = "game-screen-header",
      moonpie.ui.components.text{ id = "screen_title", style = "game-screen-title", text = props.title } ,
    },
    {
      id = "content",
      style = "game-screen-content",
      props.content
    }
  }
end)