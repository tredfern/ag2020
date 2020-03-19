-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

return function(game_state, quests)
  quests = quests or require "game.quests"

  game_state.quests = moonpie.collections.list:new()
  for _, v in ipairs(quests) do
    if v:check_prerequisites(game_state) then
      game_state.quests:add(v:clone())
    end
  end
end