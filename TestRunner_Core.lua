---@diagnostic disable: lowercase-global

function values(t)
  local i = 0
  return function() i = i + 1; return t[i] end
end

function getNormalizedDungeonArray(dungeons, languages)
  local patternArray = {}
  for dungeon in values(dungeons) do
    local entry = { Name = dungeon.Name, Identifiers = {} }
    for lng in pairs(dungeon.Identifiers) do
      if languages == nil or hasValue(languages, lng) then
        if (#dungeon.Identifiers[lng] > 0) then
          for pattern in values(dungeon.Identifiers[lng]) do
            table.insert(entry.Identifiers, pattern)
          end
        end
      end
    end
    table.insert(patternArray, entry)
  end

  return patternArray
end

function hasValue(tab, val)
  for value in values(tab) do
    if value == val then
      return true
    end
  end
  return false
end

function runTests(addonName, languages)
  require("Test/" .. addonName .. "_Dungeons")
  require("Test/" .. addonName .. "_TestData")

  local testResults = {}
  for test in values(Tests) do
    for testDefinition in values(test.TestDefinitions) do
      local testResultEntry = {
        TestDefinition = testDefinition,
        ExpectedDungeonMatch = test.DungeonName,
        MatchesOnDungeons = {}
      }

      for dungeon in values(getNormalizedDungeonArray(Dungeons, languages)) do
        for identifier in values(dungeon.Identifiers) do
          local isMatch = (
            string.find(testDefinition, "^"     .. identifier .. "[%W]+") ~= nil or
            string.find(testDefinition, "^"     .. identifier .. "$") ~= nil or
            string.find(testDefinition, "[%W]+" .. identifier .. "[%W]+") ~= nil or
            string.find(testDefinition, "[%W]+" .. identifier .. "$") ~= nil)

          if isMatch and hasValue(testResultEntry.MatchesOnDungeons, dungeon.Name) == false then
            table.insert(testResultEntry.MatchesOnDungeons, dungeon.Name)
          end
        end
      end
      table.insert(testResults, testResultEntry)
    end
  end

  for result in values(testResults) do
    if #result.MatchesOnDungeons == 0 then
      print(  "❌ '" .. result.TestDefinition .. "' \27[31m➟ NO MATCHES\27[0m \27[32mEXPECTED\27[0m " .. result.ExpectedDungeonMatch)
    end
    for dungeonMatch in values(result.MatchesOnDungeons) do
      if dungeonMatch == result.ExpectedDungeonMatch then
        print(  "✔️ '" .. result.TestDefinition .. "' \27[32mMATCHES DUNGEON\27[0m " .. dungeonMatch)
      else
        print(  "❌ '" .. result.TestDefinition .. "' \27[31mMATCHES DUNGEON\27[0m " .. dungeonMatch .. " \27[32mEXPECTED\27[0m " .. result.ExpectedDungeonMatch)
      end
    end
  end
end