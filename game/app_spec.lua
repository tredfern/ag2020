-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.app", function()
  local app = require "game.app"
  require "game.ui"

  it("can render components to moonpie", function()
    mock(moonpie)
    local s = { id = "test-component" }
    app.render(s)
    local n = moonpie.ui.current.find_by_id("test-component")
    assert.not_nil(n)
  end)

  it("can quit the game", function()
    mock(love.event)
    app.quit()
    assert.spy(love.event.quit).was.called()
  end)

  it("sets up a hot key that binds escape to going back to the title screen", function()
    moonpie.keyboard:keypressed("escape")
    assert.not_nil(moonpie.ui.current.find_by_id("title_screen"))
  end)

  describe("game.app.transitions.new_game", function()
    it("creates a new game_state", function()
      app.game_state.turn_counter = 16
      local og = app.game_state.guild
      app.transitions.new_game()
      assert.equals(0, app.game_state.turn_counter)
      assert.not_equal(og, app.game_state.guild)
    end)
  end)

  describe("game.app.end_turn", function()
    it("increment the turn counter", function()
      local current_turn = app.game_state:get_turn_counter()
      app.end_turn()
      assert.equals(current_turn + 1, app.game_state:get_turn_counter())
    end)

    it("shows the end turn processing screen", function()
      app.end_turn()
      assert.not_nil(moonpie.ui.current.find_by_id("end_turn_screen"))
    end)

    it("advances the moon to the next phase", function()
      local moon = app.game_state:get_moon():get_state()
      app.end_turn()
      assert.not_equal(moon, app.game_state:get_moon():get_state())
    end)
  end)
end)