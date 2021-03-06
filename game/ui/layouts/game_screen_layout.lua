-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("game_screen_layout", function(props)
  local app = require "game.app"
  return {
    id = "game_screen_layout",
    style = "game-screen",
    moonpie.ui.components.navigation_bar{
      id = "navigation_bar"
    },
    {
      id = "header",
      style = "game-screen-header",
      moonpie.ui.components.text{ id = "screen_title", style = "game-screen-title", text = props.title } ,
    },
    {
      id = "content",
      style = "game-screen-content",
      props.content
    },
    {
      style = "game-screen-footer align-bottom align-right",
      moonpie.ui.components.resource_pool_display {
        resource_pool = app.game_state:get_resource_pool()
      }
    }
  }
end)