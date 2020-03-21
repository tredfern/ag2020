-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("assets.quests.deliver_the_stuff", function()
  local delivery = require "assets.quests.deliver_the_stuff"

  it("is a valid quest", function()
    local d = delivery:clone()
    assert.not_nil(d.title)
    assert.not_nil(d.description)
    assert.not_nil(d.image)
  end)
end)