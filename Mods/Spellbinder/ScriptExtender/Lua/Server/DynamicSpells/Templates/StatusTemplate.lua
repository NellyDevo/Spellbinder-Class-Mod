local __dynHelper = Ext.Require("Server/DynamicSpells/DynamicHelper.lua")
local VFX = Ext.Require("Server/DynamicSpells/Templates/VisualEffectHandler.lua")

local Statuses = {}

local statusUnlockTemplate =
[[new entry "SPELLBINDER_UNLOCK_BIND_%s"
type "StatusData"
data "StatusType" "BOOST"
data "StackId" "SPELLBINDER_UNLOCK_BIND_%s"
data "StatusGroups" "SG_RemoveOnRespec"
data "StatusPropertyFlags" "DisableOverhead;DisableCombatlog;DisablePortraitIndicator;IgnoreResting"
data "Boosts" "UnlockSpell(Shout_Spellbinder_Bind_%s %s)"]]
-- Original Spell Id x3
-- if cantrip, "", else the string ",,d136c5d9-0ff0-43da-ceac-4aa7f807bfd6"

local statusFirstChargeTemplate = [[%s

new entry "TAGBOUNDSPELL_1_%s_Projectile_Spellbinder_Bound_%s"
type "StatusData"
data "StatusType" "BOOST"
data "StackId" "SPELLBINDER_BOUND_SPELL"
data "StatusPropertyFlags" "IgnoreResting;DisableCombatlog;ApplyToDead;DisableOverhead"
data "Passives" "Spellbinder_Bound_Spell_%s"
data "Icon" "%s"
%s
data "StatusGroups" "SG_RemoveOnRespec"
data "DisplayName" "%s;%s"
data "Description" "%s;%s"
data "StackType" "Overwrite"]]
-- Current Generation Progress
-- Spell Level
-- Original Spell Id
-- Original Spell Id
-- Orignal Spell Icon
-- VFX handler return
-- DisplayNameHandle
-- DisplayNameVersion
-- DescriptionHandle
-- DescriptionVersion

local statusChargesTemplate = [[%s

new entry "TAGBOUNDSPELL_%s_%s_Projectile_Spellbinder_Bound_%s"
type "StatusData"
data "StatusType" "BOOST"
using "TAGBOUNDSPELL_1_%s_Projectile_Spellbinder_Bound_%s"
data "DisplayName" "%s"
data "OnRemoveFunctors" "ApplyStatus(TAGBOUNDSPELL_%s_%s_Projectile_Spellbinder_Bound_%s,100,context.Target.TAGBOUNDSPELL_%s_%s_Projectile_Spellbinder_Bound_%s.Duration)"]]
-- Current Generation Progress
-- Charge Count
-- Spell Level
-- Original Spell ID
-- Spell Level
-- Original Spell ID
-- GENERATE a new handle for: "OriginalSpellName - ChargeCount Charges"
-- Charge Count Minus 1
-- Spell Level
-- Original spell ID
-- Charge Count
-- Spell Level
-- Original spell ID

---@param spellID string
---@param spellStat SpellData
---@return string
Statuses.CreateStatuses = function(spellID, spellStat, locaOutput)
    local cached = Ext.Stats.GetCachedSpell(spellID)
    local charges = __dynHelper.DetermineChargesForSpell(spellStat)
    local level = spellStat.Level
    local resourceGuid = ",,d136c5d9-0ff0-43da-ceac-4aa7f807bfd6"
    if level == 0 then resourceGuid = "" end
    if spellStat.PowerLevel > level then level = spellStat.PowerLevel end
    local retVal = string.format(statusUnlockTemplate,
        spellID, spellID, spellID,
        resourceGuid
    )
    retVal = string.format(statusFirstChargeTemplate,
        retVal,
        level,
        spellID,
        spellID,
        spellStat.Icon,
        VFX.GetVFXFor(spellID, spellStat),
        cached.Description.DisplayName.Handle.Handle,
        cached.Description.DisplayName.Handle.Version,
        cached.Description.Description.Handle.Handle,
        cached.Description.Description.Handle.Version
    )
    if charges > 1 then
        for i=2,charges,1 do
            local handle = __dynHelper.GenerateTranslationEntry(Ext.Loca.GetTranslatedString(cached.Description.DisplayName.Handle.Handle, tostring(cached.Description.DisplayName.Handle.Version)) .. " - " .. i .. " Charges", locaOutput)
            retVal = string.format(statusChargesTemplate,
                retVal,
                i,
                level,
                spellID,
                level,
                spellID,
                handle,
                i - 1,
                level,
                spellID,
                i,
                level,
                spellID
            )
        end
    end
    return retVal
end

return Statuses
