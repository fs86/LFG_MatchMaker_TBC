function LFGMM_TBC_PhaseHelper_Time(date)
  local timeFn = time or os.time;

  if date ~= nil then
    return timeFn(date);
  end

  return timeFn();
end

function LFGMM_TBC_PhaseHelper_Difftime(t2, t1)
  local difftimeFn = difftime or os.difftime;
  return difftimeFn(t2, t1);
end

TBC_PHASES = {
  PHASE_1 = "PHASE_1",  -- TBC release, Karazhan, Gruul's Lair, Magtheridon's Lair
  PHASE_2 = "PHASE_2",  -- Serpentshrine Cavern, Tempest Keep
  PHASE_3 = "PHASE_3",  -- Hyjal, Black Temple
  PHASE_4 = "PHASE_4",  -- Zul'aman
  PHASE_5 = "PHASE_5"   -- Sunwell Plateau
}

TBC_PHASE_RELEASE_DATES = {
  [TBC_PHASES.PHASE_1] = LFGMM_TBC_PhaseHelper_Time({ month = 2, day = 5, year = 2026 }),
  -- [TBC_PHASES.PHASE_2] = LFGMM_TBC_PhaseHelper_Time({ month = ???, day = ???, year = 2026 }),
  -- [TBC_PHASES.PHASE_3] = LFGMM_TBC_PhaseHelper_Time({ month = ???, day = ???, year = 2026 }),
  -- [TBC_PHASES.PHASE_4] = LFGMM_TBC_PhaseHelper_Time({ month = ???, day = ???, year = 2026 }),
  -- [TBC_PHASES.PHASE_5] = LFGMM_TBC_PhaseHelper_Time({ month = ???, day = ???, year = 2026 }),
}

function LFGMM_TBC_PhaseHelper_EnableFor(tbcPhase)
  local releaseDate = TBC_PHASE_RELEASE_DATES[tbcPhase];

  if (releaseDate == nil) then
    return false;
  end

  local diffInDays = LFGMM_TBC_PhaseHelper_Difftime(LFGMM_TBC_PhaseHelper_Time(), releaseDate) / (24 * 60 * 60);
  return diffInDays < 0 and false or true;
end
