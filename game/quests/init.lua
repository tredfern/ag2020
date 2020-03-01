-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local quests = {
  require "game.quests.guild_rats",
  require "game.quests.explore_cave"
}


return {
  get_available = function()
    return moonpie.utility.tables.map(quests, function(q)
      return q.create()
    end)
  end
}