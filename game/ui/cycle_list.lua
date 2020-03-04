-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("cycle_list", function(props)
  local cycle_list = moonpie.collections.iterators.cycle(props.list)
  local display = moonpie.ui.components.text({ id = "cycle_text", style = "cycle_list_display" })

  local component
  component = { 
    moonpie.ui.components.button{ 
      id = "previous_btn", 
      caption = "<<",
      style = "cycle_list_button",
      click = function()
        component:select(cycle_list.previous())
      end
    },
    display,
    moonpie.ui.components.button{
      id = "next_btn",
      caption = ">>",
      style = "cycle_list_button",
      click = function()
        component:select(cycle_list.next())
      end
    }
  }

  function component.select(self, item)
    self.selected = item
    display:update{ text = self.selected }
  end

  function component:get_selected()
    return self.selected
  end

  component:select(cycle_list())

  return component
end)