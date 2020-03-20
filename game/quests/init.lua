-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local quest_files = moonpie.utility.files.find("game/quests/", "lua$", "_spec.lua$")
local quests = moonpie.collections.list:new()

for _, v in ipairs(quest_files) do
  if string.find(v, "init.lua") == nil then
    local rp = string.gsub(v, "%.lua", "")
    quests:add(require(rp))
  end
end

return quests