local __dynHelper = Ext.Require("Server/DynamicSpells/DynamicHelper.lua")

local Interrupts = {}

local function interrupt(spellID, spellStat)
    local cached = Ext.Stats.GetCachedSpell(spellID)
    return string.format(
[[new entry "Spellbinder_Bound_Armor_%s"
type "InterruptData"
using "Spellbinder_Bound_Armor_BaseInterrupt"
data "Properties" "UseSpell(SWAP,Target_Spellbinder_Bound_%s,true,true,true,,true);ApplyStatus(OBSERVER_OBSERVER,STATUS_SPELLBINDER_BOUND_ARMOR_REMOVER,100,0)"
data "DisplayName" "%s;%s"
data "Icon" "%s"]],
    spellID, spellID,
    cached.Description.DisplayName.Handle.Handle,
    cached.Description.DisplayName.Handle.Version,
    spellStat.Icon)
end

---@param spellID string
---@param spellStat SpellData
---@return string
Interrupts.CreateInterrupt = function(spellID, spellStat)
    return interrupt(spellID, spellStat)
end

return Interrupts
