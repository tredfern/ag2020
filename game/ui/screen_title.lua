-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("screen_title", function(props)
  return {
    id = "screen_title",
    moonpie.ui.components.h1({
      text = props.title,
      id = "screen_title_heading",
      style = "menu_screen_title align-center"
    })
  }
end)