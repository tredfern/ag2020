-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.resource_pool_display", function()
  require "game.ui"
  local resource_pool = require "game.entities.resource_pool"

  it("displays the money available", function()
    local rp = resource_pool:new()
    rp.money = 4823

    local display = moonpie.ui.components.resource_pool_display{
      resource_pool = rp
    }

    local money = display:find_by_id("txt_money")
    assert.string_contains("4823", money.text)
  end)
end)