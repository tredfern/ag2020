-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local quests = require "game.quests"

return function(game_state)
  game_state.quests:add(quests.get_available())
end