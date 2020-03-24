-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

return function(game_state, quests)
  quests = quests or require "assets.quests"

  for _, v in ipairs(quests) do
    if v:check_prerequisites(game_state) then
      if moonpie.utility.tables.all(game_state.quests, function(q) return q.source ~= v end) then
        game_state.quests:add(v:clone())
      end
    end
  end
end