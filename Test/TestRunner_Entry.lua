-- Mock required objects
LOCALIZED_CLASS_NAMES_MALE = {}
CLASS_ICON_TCOORDS = {}

require("Libs/UTF8/utf8data")
require("Libs/UTF8/utf8")
require("LFGMM_TBC_PhaseHelper")
require("LFGMM_Utility")
require("LFGMM_Variables")
require("Test/TestRunner_Core")
require("Test/VANILLA_Dungeon_Tests_DE")
require("Test/TBC_Dungeon_Tests_DE")
require("Test/TBC_Dungeon_Tests_EN")
require("Test/TBC_Dungeon_Tests_FR")
require("Test/TBC_Dungeon_Tests_RU")
require("Test/TBC_PvP_Tests_EN")

runTests(LFGMM_GLOBAL.DUNGEONS, TBC_Dungeon_Tests_DE, { "EN", "DE" }, true)
--runTests(LFGMM_GLOBAL.DUNGEONS, TBC_Dungeon_Tests_EN, { "EN" }, true)
--runTests(LFGMM_GLOBAL.DUNGEONS, TBC_Dungeon_Tests_FR, { "EN", "FR" }, true)
--runTests(LFGMM_GLOBAL.DUNGEONS, TBC_Dungeon_Tests_RU, { "EN", "RU" }, false)

--runTests(LFGMM_GLOBAL.DUNGEONS, TBC_PvP_Tests_EN, { "EN" })