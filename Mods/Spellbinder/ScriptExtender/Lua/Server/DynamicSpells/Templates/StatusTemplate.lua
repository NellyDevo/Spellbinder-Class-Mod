local __dynHelper = Ext.Require("Server/DynamicSpells/DynamicHelper.lua")
local VFX = Ext.Require("Server/DynamicSpells/Templates/VisualEffectHandler.lua")

local Statuses = {}

local function statusUnlockSpell(spellStat, spellID)
    local resourceGuid = ",AddChildren,d136c5d9-0ff0-43da-ceac-4aa7f807bfd6"
    if spellStat.Level == 0 then resourceGuid = "" end
    return string.format(
[[new entry "SPELLBINDER_UNLOCK_BIND_%s"
type "StatusData"
data "StatusType" "BOOST"
data "StackId" "SPELLBINDER_UNLOCK_BIND_%s"
data "StatusGroups" "SG_RemoveOnRespec"
data "StatusPropertyFlags" "DisableOverhead;DisableCombatlog;DisablePortraitIndicator;IgnoreResting"
data "Boosts" "UnlockSpell(Shout_Spellbinder_Bind_%s%s)"]],
    spellID, spellID, spellID,
    resourceGuid)
end

local function statusUnlockArmor(progress, spellStat, spellID)
    local resourceGuid = ",AddChildren,d136c5d9-0ff0-43da-ceac-4aa7f807bfd6"
    if spellStat.Level == 0 then resourceGuid = "" end
    return string.format(
[[%s

new entry "SPELLBINDER_UNLOCK_BIND_ARMOR_%s"
type "StatusData"
data "StatusType" "BOOST"
data "StackId" "SPELLBINDER_UNLOCK_BIND_ARMOR_%s"
data "StatusGroups" "SG_RemoveOnRespec"
data "StatusPropertyFlags" "DisableOverhead;DisableCombatlog;DisablePortraitIndicator;IgnoreResting"
data "Boosts" "UnlockSpell(Shout_Spellbinder_Bind_Armor_%s%s)"]],
    progress,
    spellID, spellID, spellID,
    resourceGuid)
end

local function statusFirstCharge(progress, spellStat, spellID)
    local cached = Ext.Stats.GetCachedSpell(spellID)
    return string.format(
[[%s

new entry "TAGBOUNDSPELL_1_%s"
type "StatusData"
data "StatusType" "BOOST"
data "StackId" "SPELLBINDER_BOUND_SPELL"
data "StatusPropertyFlags" "IgnoreResting;DisableCombatlog;ApplyToDead;DisableOverhead"
data "Boosts" "Tag(SPELLBINDER_BOUND)"
data "Passives" "Spellbinder_Bound_Spell_%s"
data "Icon" "%s"
%s
data "StatusGroups" "SG_RemoveOnRespec"
data "DisplayName" "%s;%s"
data "StackType" "Overwrite"
data "OnRemoveFunctors" "ApplyStatus(SPELLBINDER_RECENTLY_BOUND,100,1)"]],
    progress,
    spellID,
    spellID,
    spellStat.Icon,
    VFX.GetVFXFor(spellID, spellStat),
    cached.Description.DisplayName.Handle.Handle,
    cached.Description.DisplayName.Handle.Version)
end

local function statusArmorFirstCharge(progress, spellStat, spellID)
    local cached = Ext.Stats.GetCachedSpell(spellID)
    return string.format(
[[%s

new entry "TAGBOUNDARMOR_1_%s"
type "StatusData"
data "StatusType" "BOOST"
data "StackId" "SPELLBINDER_BOUND_ARMOR"
data "StatusPropertyFlags" "IgnoreResting;DisableCombatlog;ApplyToDead;DisableOverhead"
data "Boosts" "UnlockInterrupt(Spellbinder_Bound_Armor_%s);AC(1)"
data "Icon" "%s"
data "StatusGroups" "SG_RemoveOnRespec"
data "DisplayName" "%s;%s"
data "Description" "%s;%s"
data "DescriptionParams" "%s"
data "StackType" "Overwrite"
data "OnRemoveFunctors" "ApplyStatus(SPELLBINDER_RESIDUAL_MAGIC,100,1)"]],
    progress,
    spellID,
    spellID,
    spellStat.Icon,
    cached.Description.DisplayName.Handle.Handle,
    cached.Description.DisplayName.Handle.Version,
    cached.Description.Description.Handle.Handle,
    cached.Description.Description.Handle.Version,
    spellStat.DescriptionParams)
end

local function statusCharges(progress, spellID, currentCharge, generatedHandle)
    return string.format(
[[%s

new entry "TAGBOUNDSPELL_%s_%s"
type "StatusData"
data "StatusType" "BOOST"
using "TAGBOUNDSPELL_1_%s"
data "DisplayName" "%s"
data "OnRemoveFunctors" "ApplyStatus(TAGBOUNDSPELL_%s_%s,100,-1)"]],
    progress,
    currentCharge,
    spellID,
    spellID,
    generatedHandle,
    currentCharge - 1,
    spellID)
end

local function statusArmorCharges(progress, spellID, currentCharge, generatedHandle)
    return string.format(
[[%s

new entry "TAGBOUNDARMOR_%s_%s"
type "StatusData"
data "StatusType" "BOOST"
using "TAGBOUNDARMOR_1_%s"
data "DisplayName" "%s"
data "OnRemoveFunctors" "ApplyStatus(TAGBOUNDARMOR_%s_%s,100,TAGBOUNDARMOR_%s_%s.Duration)"]],
    progress,
    currentCharge,
    spellID,
    spellID,
    generatedHandle,
    currentCharge - 1,
    spellID,
    currentCharge,
    spellID)
end

local function statusDeliverPayload(progress, spellID)
    return string.format(
[[%s

new entry "STATUS_CASTER_TRIGGER_%s"
type "StatusData"
data "StatusType" "BOOST"
data "Passives" "Passive_Trigger_%s"
data "StatusPropertyFlags" "DisableOverhead;DisableCombatlog;DisablePortraitIndicator;IgnoreResting"

new entry "STATUS_TARGET_TRIGGER_%s"
type "StatusData"
data "StatusType" "BOOST"
data "RemoveEvents" "OnSourceStatusApplied"
data "RemoveConditions" "HasStatus('STATUS_RESOLVED_%s',context.Source)"
data "OnRemoveFunctors" "IF(RemoveCause(StatusRemoveCause.Condition)):UseSpell(Target_Spellbinder_Bound_%s,true,true,true);IF(RemoveCause(StatusRemoveCause.Condition)):RemoveStatus(SELF,STATUS_CASTER_TRIGGER_%s)"
data "StatusPropertyFlags" "DisableOverhead;DisableCombatlog;DisablePortraitIndicator;IgnoreResting"

new entry "STATUS_RESOLVED_%s"
type "StatusData"
data "StatusType" "BOOST"
data "StatusPropertyFlags" "DisableOverhead;DisableCombatlog;DisablePortraitIndicator;IgnoreResting"]],
    progress,
    spellID, spellID, spellID, spellID, spellID, spellID, spellID)
end

---@param spellID string
---@param spellStat SpellData
---@return string
Statuses.CreateStatuses = function(spellID, spellStat, output)
    local cached = Ext.Stats.GetCachedSpell(spellID)
    local retVal = statusUnlockSpell(spellStat, spellID)
    retVal = statusUnlockArmor(retVal, spellStat, spellID)
    retVal = statusFirstCharge(retVal, spellStat, spellID)
    retVal = statusArmorFirstCharge(retVal, spellStat, spellID)
    local charges = __dynHelper.DetermineChargesForSpell(spellStat)
    if charges > 1 then
        for i=2,charges,1 do
            local handle = __dynHelper.GenerateTranslationEntry(Ext.Loca.GetTranslatedString(cached.Description.DisplayName.Handle.Handle, tostring(cached.Description.DisplayName.Handle.Version)) .. " - " .. i .. " Charges", output)
            retVal = statusCharges(retVal, spellID, i, handle)
            retVal = statusArmorCharges(retVal, spellID, i, handle)
        end
    end
    retVal = statusDeliverPayload(retVal, spellID)
    return retVal
end

return Statuses
