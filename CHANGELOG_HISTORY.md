## 1.10.1

- Added missing dungeons identifers for Arcatraz and Shattered Halls

## 1.10.0

**Technical info:** This release jumps to version number 1.10.0 to better reflect past changes. Many new features have been added that should have resulted in an increase in the minor version number rather than the patch level.

**Functional changes in this release:**

- Players guild names are now shown in info / popup dialog
- Added arena 2vs2, 3vs3 and 5vs5 for PvP category
- Added new dungeon identifiers for COT1 and Shadow Lab.
- Possibility to add dungeons that will be released in a future phase. These dungeons will then be shown once the phase is live.
- Changed internal dungeon indexes. **If any LUA errors occur, please delete 'LFG_MatchMaker_TBC.lua' in your Account directory.**

**What's next?**\
I can't make any promises at this point, but I will try to include role selection for the LFG and LFM tab for one of the next versions.

## v1.0.4d-tbc

- Minor Bugfixes (primary for testing automated deployments to curseforge)

## v1.0.4c-tbc

- Added more dungeon identifiers

## v1.0.4b-tbc

- Fix for HC filter fix :-)
- Added more HC and boost filter identifiers

## v1.0.4a-tbc

- Bugfix: The HC filter should now work a little more accurately.

## v1.0.4-tbc

- Added mode filter to TBC dungeons (available modes are: none, Heroic, Normal)
  Important: Filtering for specific modes is only available for LFG / LFM tab. In addition, the filter is not yet 100% accurate, which means that one or the other message is not displayed as a match. I will try to improve the filter for future versions. For the search for raids the filter should be deactivated (Mode: none).

## v1.0.3a-tbc

- Bugfix: Changed French LFG channel name from "RechercheGroupe" to "RechercheDeGroupe"

## v1.0.3-tbc

- Popup Window: Changed button text from "Ignore" to "Ignore request"
- Added French dungeon identifiers

## v1.0.2-tbc

- Core
  - Improved accuracy of boost filter
  - Improved accuracy of german dungeon identifiers
- LFG Tab, List Tab
  - Added separate dropdown lists (Vanilla, Burning Crusade, PvP)
- LFM Tab
  - Added pre-filtering for dungeon selection (Vanilla, Buring Crusade, PvP)
- Settings Tab
  - Removed "Hide PvP" Option
- Broadcast window
  - Fixed missing texture
- Invite Received Popup
  - Added close button

## v1.0.1-tbc

- Added boost filter for LFG and LFM tab (english and german)

## v1.0.0-tbc

- Added support for TBC Classic
- Added TBC dungeons and raids
