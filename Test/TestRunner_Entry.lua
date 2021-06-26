-- Mock required objects
LOCALIZED_CLASS_NAMES_MALE = {}
CLASS_ICON_TCOORDS = {}

require("LFGMM_Variables")
require("Test/TestRunner_Core")
require("Test/VANILLA_Dungeon_Tests")
require("Test/TBC_Dungeon_Tests")
require("Test/TBC_PvP_Tests")

runTests(LFGMM_GLOBAL.DUNGEONS, VANILLA_Dungeon_Tests, { "EN", "DE", "FR" })
runTests(LFGMM_GLOBAL.DUNGEONS, TBC_Dungeon_Tests, { "EN", "DE", "FR" })
runTests(LFGMM_GLOBAL.DUNGEONS, TBC_PvP_Tests, { "EN", "DE", "FR" })
