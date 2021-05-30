-- Mock required objects
LOCALIZED_CLASS_NAMES_MALE = {}
CLASS_ICON_TCOORDS = {}

require("LFGMM_Variables")
require("Test/TestRunner_Core")
require("Test/VANILLA_TestData")
require("Test/TBC_TestData")

runTests(LFGMM_GLOBAL.DUNGEONS, VANILLA_TESTS, { "EN", "DE" })
runTests(LFGMM_GLOBAL.DUNGEONS, TBC_TESTS, { "EN", "DE" })
