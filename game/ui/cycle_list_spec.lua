-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.ui.cycle_list", function()
  require "game.ui"

  local list = { 1, 2, 3, 4 }
  local cycle = moonpie.ui.components.cycle_list({
    list = list
  })

  before_each(function()
    cycle:select(1)
  end)

  it("can select a matching item to be the current", function()
    cycle:select(3)
    assert.equals(3, cycle:get_selected())
  end)

  it("displays the selected item", function()
    local txt = cycle:find_by_id("cycle_text")
    assert.equals(1, txt.text)
  end)

  it("has a button that selects the next item", function()
    local next_btn = cycle:find_by_id("next_btn")
    next_btn:click()
    assert.equals(2, cycle:get_selected())

    local txt = cycle:find_by_id("cycle_text")
    assert.equals(2, txt.text)
  end)

  it("has a button that selects the previous item", function()
    assert.equals(1, cycle:get_selected())
    local prev_btn = cycle:find_by_id("previous_btn")
    prev_btn:click()
    prev_btn:click()
    assert.equals(4, cycle:get_selected())

    local txt = cycle:find_by_id("cycle_text")
    assert.equals(4, txt.text)
  end)
end)