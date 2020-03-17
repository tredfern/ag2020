-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.ui.components("resource_pool_display", function(props)
  return {
    moonpie.ui.components.text{
      id = "txt_money",
      text = "${{money}}",
      money = props.resource_pool.money
    }
  }
end)