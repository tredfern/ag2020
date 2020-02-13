-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.app", function()
  local app = require "game.app"

  it("can render components to moonpie", function()
    moonpie.render = spy.new(function() end)
    local s = {}
    app:render(s)
    assert.spy(moonpie.render).was.called_with("ui", s)
  end)
end)