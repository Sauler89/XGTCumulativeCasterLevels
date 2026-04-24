-- M_XGTCCL.lua — XGT Cumulative Caster Levels (EEex)
--
-- Replaces opcode 191 (last-wins) with opcode 402 (Invoke Lua).
-- Each effect calls this function, which additively accumulates
-- the caster level bonus into the derived stats.

function XGTCLMOD(op402, sprite)
  local param2 = op402.m_dWFlags
  local stats = sprite.m_derivedStats
  if param2 == 0 then
    stats.m_nCastingLevelBonusMage = stats.m_nCastingLevelBonusMage + op402.m_effectAmount
  elseif param2 == 1 then
    stats.m_nCastingLevelBonusCleric = stats.m_nCastingLevelBonusCleric + op402.m_effectAmount
  end
end
