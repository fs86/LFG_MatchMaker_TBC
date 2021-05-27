require "Test/PatternTest_Data"

---@diagnostic disable-next-line: lowercase-global
function values(t)
    local i = 0
    return function() i = i + 1; return t[i] end
end

for dungeon in values(Dungeons) do
    local matchCount = 0
    print("• " .. dungeon.Name)

    for test in values(dungeon.Tests) do
      local isMatch = false

      for identifier in values(dungeon.Identifiers) do
        isMatch = string.match(test, identifier) ~= nil
        if isMatch then
          matchCount = matchCount + 1
          break
        end
      end

      local icon = isMatch and "✔️" or "❌"
      print("  " .. icon .. " " .. test)
    end

    local icon = matchCount == #dungeon.Tests and "😎" or "😰"
    print("  ⇒ " .. icon .. " " .. matchCount .. "/" .. #dungeon.Tests .. " successful")
    print("")
end