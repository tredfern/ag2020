-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("moon_display", function(props)
  return moonpie.ui.components.text {
    text = props.moon:get_state().description
  }
end)