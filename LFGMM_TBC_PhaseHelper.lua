TBC_PHASES = {
  PHASE_1 = "PHASE_1",  -- TBC release, Karazahn, Gruul's Lair, Magtheridon's Lair
  PHASE_2 = "PHASE_2",  -- Serpentshrine Cavern, Tempest Keep
  PHASE_3 = "PHASE_3",  -- Hyjal, Black Temple
  PHASE_4 = "PHASE_4",  -- Zul'aman
  PHASE_5 = "PHASE_5"   -- Sunwell Plateau
}

TBC_PHASE_RELEASE_DATES = {
  [TBC_PHASES.PHASE_1] = os.time { month = 6, day = 1, year = 2021 },
  [TBC_PHASES.PHASE_2] = nil,
  [TBC_PHASES.PHASE_3] = nil,
  [TBC_PHASES.PHASE_4] = nil,
  [TBC_PHASES.PHASE_5] = nil,
}

function LFGMM_TBC_PhaseHelper_EnableFor(tbcPhase)
  local releaseDate = TBC_PHASE_RELEASE_DATES[tbcPhase];

  if (releaseDate == nil) then
    return false;
  end

  local diffInDays = os.difftime(os.time(), releaseDate) / (24 * 60 * 60);
  return diffInDays < 0 and false or true;
end