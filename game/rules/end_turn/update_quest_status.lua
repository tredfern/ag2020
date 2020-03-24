-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT


return function(game_state)
  for _, q in ipairs(game_state:get_quests()) do
    q.turn_counter = q.turn_counter + 1
    if q.hero then
      q.progress.turn_counter = q.progress.turn_counter + 1
    end
  end
end