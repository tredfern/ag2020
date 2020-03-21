-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("assets.quests.guild_rats", function()
  local rats = require "assets.quests.guild_rats"

  it("can create a quest entity", function()
    local q = rats:clone()
    assert.not_nil(q)
    assert.not_nil(q.title)
    assert.not_nil(q.description)
    assert.file_exists(q.image)
  end)

  it("is available on the turn 0", function()
    local gs = require "game.game_state":new()
    assert.is_true(rats:check_prerequisites(gs))
  end)

  it("is not available after turn 0", function()
    local gs = require "game.game_state":new()
    gs.turn_counter = 1
    assert.is_false(rats:check_prerequisites(gs))
  end)
end)