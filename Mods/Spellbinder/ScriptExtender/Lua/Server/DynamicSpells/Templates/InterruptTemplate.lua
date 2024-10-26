local __dynHelper = Ext.Require("Server/DynamicSpells/DynamicHelper.lua")

local Interrupts = {}

local function interruptArmorTemplate()
    return
[[new entry "Spellbinder_Bound_Armor_%s"
type "InterruptData"
data "InterruptContext" "OnPostRoll"
data "InterruptContextScope" "Nearby"
data "Container" "YesNoDecision"
data "Conditions" "IsAbleToReact(context.Observer) and Self(context.Observer, context.Target) and IsMeleeAttack()"
data "Properties" "UseSpell(SWAP,%s_Projectile_Spellbinder_Bound_%s,true,true,true,,true);ApplyStatus(OBSERVER_OBSERVER,STATUS_SPELLBINDER_BOUND_ARMOR_REMOVER,100,0)"
data "DisplayName" "%s;%s"
data "Description" "h9ccacd6cf5fd4f57ae2fc7fa17b444b7eab8"
data "Cost" "ReactionActionPoint:1"
data "InterruptDefaultValue" "Ask;Enabled"
data "Icon" "%s"]]
    -- SpellID
    -- Spell Level
    -- SpellID
    -- Original Display Name Handle
    -- Original Display Name Version
    -- original spell icon
end

---@param spellID string
---@param spellStat SpellData
---@return string
Interrupts.CreateInterrupt = function(spellID, spellStat)
    local level = spellStat.Level
    local cached = Ext.Stats.GetCachedSpell(spellID)
    if spellStat.PowerLevel ~= 0 then level = spellStat.PowerLevel end
    return string.format(interruptArmorTemplate(),
        spellID,
        level,
        spellID,
        cached.Description.DisplayName.Handle.Handle,
        cached.Description.DisplayName.Handle.Version,
        spellStat.Icon
    )
end

return Interrupts
