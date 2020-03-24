-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local function increment_quest_progress(q)
  if q.hero then
    q.progress.turn_counter = q.progress.turn_counter + 1
  end
end

local function check_quest_completed(q)
  if q.goals then
    return q.goals.turns <= q.progress.turn_counter
  end
end

local function complete_quest(quest, game_state)
  quest.completed = true
  game_state.quests:remove(quest)
  game_state.completed_quests:add(quest)
end

local function process_rewards(quest, game_state)
  if quest.rewards then
    quest.hero.xp = quest.hero.xp + quest.rewards.xp

    local rp = game_state:get_resource_pool()
    rp.money = rp.money + quest.rewards.money
  end
end

return function(game_state)
  for _, q in ipairs(game_state:get_quests()) do
    q.turn_counter = q.turn_counter + 1
    increment_quest_progress(q)
    if check_quest_completed(q) then
      complete_quest(q, game_state)
      process_rewards(q, game_state)
    end
  end
end