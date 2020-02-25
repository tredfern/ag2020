-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("message_layout", function(props)
  return {
    moonpie.ui.components.screen_title({
      id = "title",
      title = props.title
    }),
    moonpie.ui.components.section({
      id = "welcome_letter",
      style = "story_message align-center align-middle",
      {
        style = "story_message_internal align-center",
        props.content
      }
    }), {
      id = "message-actions",
      props.actions
    }
  }
end)