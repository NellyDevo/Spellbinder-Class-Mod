local __dynHelper = Ext.Require("Server/DynamicSpells/DynamicHelper.lua")

local Interrupts = {}

local function interrupt(spellID, spellStat)
    local cached = Ext.Stats.GetCachedSpell(spellID)
    return string.format(
[[new entry "Spellbinder_Bound_Armor_%s"
type "InterruptData"
data "InterruptContext" "OnPostRoll"
data "InterruptContextScope" "Nearby"
data "Container" "YesNoDecision"
data "Conditions" "IsAbleToReact(context.Observer) and Self(context.Observer, context.Target) and IsMeleeAttack()"
data "Properties" "UseSpell(SWAP,Target_Spellbinder_Bound_%s,true,true,true,,true);ApplyStatus(OBSERVER_OBSERVER,STATUS_SPELLBINDER_BOUND_ARMOR_REMOVER,100,0)"
data "DisplayName" "%s;%s"
data "Description" "h9ccacd6cf5fd4f57ae2fc7fa17b444b7eab8"
data "Cost" "ReactionActionPoint:1"
data "InterruptDefaultValue" "Ask;Enabled"
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
