local __dynHelper = Ext.Require("Server/DynamicSpells/DynamicHelper.lua")
local EffectMap = Ext.Require("Server/DynamicSpells/Templates/HardcodedEffects.lua")

local Spells = {}

local function baseSpell(spellID, spellStat, spellProperties, spellFlags)
    local cached = Ext.Stats.GetCachedSpell(spellID)
    return string.format(
[[new entry "Shout_Spellbinder_Bind_%s"
type "SpellData"
data "SpellType" "Shout"
using "Shout_Spellbinder_Bind_BaseApplierSpell"
data "CastEffect" "%s"
data "CastSound" "%s"
data "CastTextEvent" "%s"
data "DamageType" "%s"
data "DisplayName" "%s;%s"
data "Description" "%s;%s"
data "DescriptionParams" "%s"
data "HitAnimationType" "%s"
data "Icon" "%s"
data "Level" "%s"
data "PowerLevel" "%s"
data "PrepareEffect" "%s"
data "PrepareLoopSound" "%s"
data "PrepareSound" "%s"
data "PreviewCursor" "%s"
data "SpellAnimation" "%s"
data "SpellProperties" "%s"
data "SpellSchool" "%s"
data "SpellFlags" "%s"
data "TargetEffect" "%s"
data "TargetSound" "%s"
data "TooltipAttackSave" "%s"
data "TooltipDamageList" "%s"
data "TooltipStatusApply" "%s"
data "UseCosts" "%s"
data "VerbalIntent" "%s"]],
    spellID,
    spellStat.CastEffect,
    spellStat.CastSound,
    spellStat.CastTextEvent,
    spellStat.DamageType,
    cached.Description.DisplayName.Handle.Handle,
    cached.Description.DisplayName.Handle.Version,
    cached.Description.Description.Handle.Handle,
    cached.Description.Description.Handle.Version,
    spellStat.DescriptionParams,
    spellStat.HitAnimationType,
    spellStat.Icon,
    spellStat.Level,
    spellStat.Level,
    spellStat.PrepareEffect,
    spellStat.PrepareLoopSound,
    spellStat.PrepareSound,
    spellStat.PreviewCursor,
    spellStat.SpellAnimation,
    spellProperties,
    spellStat.SpellSchool,
    spellFlags,
    spellStat.TargetEffect,
    spellStat.TargetSound,
    spellStat.TooltipAttackSave,
    spellStat.TooltipDamageList,
    spellStat.TooltipStatusApply,
    spellStat.UseCosts,
    spellStat.VerbalIntent)
end

local function baseArmor(progress, spellID, armorProperties)
    return string.format(
[[%s

new entry "Shout_Spellbinder_Bind_Armor_%s"
type "SpellData"
data "SpellType" "Shout"
using "Shout_Spellbinder_Bind_%s"
data "SpellContainerID" "Shout_Spellbinder_Bind_Armor"
data "SpellProperties" "%s"]],
    progress,
    spellID,
    spellID,
    armorProperties)
end

local function cantripProperties(spellID)
    return string.format("IF(not CharacterLevelGreaterThan(4) and not HasStatus('SPELLBINDER_OFFHAND_BINDING') and HasWeaponInMainHand()):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_1_%s,100,-1);IF(not CharacterLevelGreaterThan(4) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and not (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_1_%s,100,-1);IF(not CharacterLevelGreaterThan(4) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,OffHand,TAGBOUNDSPELL_1_%s,100,-1);IF(CharacterLevelGreaterThan(4) and not CharacterLevelGreaterThan(9) and not HasStatus('SPELLBINDER_OFFHAND_BINDING') and HasWeaponInMainHand()):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_2_%s,100,-1);IF(CharacterLevelGreaterThan(4) and not CharacterLevelGreaterThan(9) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and not (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_2_%s,100,-1);IF(CharacterLevelGreaterThan(4) and not CharacterLevelGreaterThan(9) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,OffHand,TAGBOUNDSPELL_2_%s,100,-1);IF(CharacterLevelGreaterThan(9) and not CharacterLevelGreaterThan(16) and not HasStatus('SPELLBINDER_OFFHAND_BINDING') and HasWeaponInMainHand()):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_3_%s,100,-1);IF(CharacterLevelGreaterThan(9) and not CharacterLevelGreaterThan(16) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and not (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_3_%s,100,-1);IF(CharacterLevelGreaterThan(9) and not CharacterLevelGreaterThan(16) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,OffHand,TAGBOUNDSPELL_3_%s,100,-1);IF(CharacterLevelGreaterThan(16) and not HasStatus('SPELLBINDER_OFFHAND_BINDING') and HasWeaponInMainHand()):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_4_%s,100,-1);IF(CharacterLevelGreaterThan(16) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and not (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_4_%s,100,-1);IF(CharacterLevelGreaterThan(16) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,OffHand,TAGBOUNDSPELL_4_%s,100,-1)",
        spellID, spellID, spellID, spellID, spellID, spellID, spellID, spellID, spellID, spellID, spellID, spellID)
end

local function levelledProperties(charges, spellID)
    return string.format("IF(not HasStatus('SPELLBINDER_OFFHAND_BINDING') and HasWeaponInMainHand()):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_%s_%s,100,-1);IF(HasStatus('SPELLBINDER_OFFHAND_BINDING') and not (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_%s_%s,100,-1);IF(HasStatus('SPELLBINDER_OFFHAND_BINDING') and (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,OffHand,TAGBOUNDSPELL_%s_%s,100,-1);",
        charges, spellID, charges, spellID, charges, spellID)
end

local function cantripArmorProperties(spellID)
    return string.format("IF(not CharacterLevelGreaterThan(4)):ApplyStatus(TAGBOUNDARMOR_1_%s,100,-1);IF(CharacterLevelGreaterThan(4) and not CharacterLevelGreaterThan(9)):ApplyStatus(TAGBOUNDARMOR_2_%s,100,-1);IF(CharacterLevelGreaterThan(9) and not CharacterLevelGreaterThan(16)):ApplyStatus(TAGBOUNDARMOR_3_%s,100,-1);IF(CharacterLevelGreaterThan(16)):ApplyStatus(TAGBOUNDARMOR_4_%s,100,-1)",
        spellID, spellID, spellID, spellID)
end

local function levelledArmorProperties(charges, spellID)
    return string.format("ApplyStatus(TAGBOUNDARMOR_%s_Armor_%s,100,-1)",
        charges, spellID)
end

local function upcastSpell(spellID, spellStat, spellProperties)
    return string.format(
[[new entry "Shout_Spellbinder_Bind_%s"
type "SpellData"
data "SpellType" "Shout"
using "Shout_Spellbinder_Bind_%s"
data "PowerLevel" "%s"
data "RootSpellID" "Shout_Spellbinder_Bind_%s"
data "SpellProperties" "%s"
data "TooltipAttackSave" "%s"
data "TooltipDamageList" "%s"
data "TooltipStatusApply" "%s"
data "UseCosts" "%s"]],
    spellID,
    spellStat.RootSpellID,
    spellStat.PowerLevel,
    spellStat.RootSpellID,
    spellProperties,
    spellStat.TooltipAttackSave,
    spellStat.TooltipDamageList,
    spellStat.TooltipStatusApply,
    spellStat.UseCosts)
end

local function upcastArmor(base, spellID, spellStat, armorProperties)
    return string.format(
[[%s

new entry "Shout_Spellbinder_Bind_Armor_%s"
type "SpellData"
data "SpellType" "Shout"
using "Shout_Spellbinder_Bind_Armor_%s"
data "PowerLevel" "%s"
data "RootSpellID" "Shout_Spellbinder_Bind_Armor_%s"
data "SpellProperties" "%s"
data "TooltipAttackSave" "%s"
data "TooltipDamageList" "%s"
data "TooltipStatusApply" "%s"
data "UseCosts" "%s"]],
    base,
    spellID,
    spellStat.RootSpellID,
    spellStat.PowerLevel,
    spellStat.RootSpellID,
    armorProperties,
    spellStat.TooltipAttackSave,
    spellStat.TooltipDamageList,
    spellStat.TooltipStatusApply,
    spellStat.UseCosts)
end

local function payload(spellID, spellEffects, withConc)
    return string.format(
[[new entry "Target_Spellbinder_Bound_%s"
type "SpellData"
data "SpellType" "Target"
using "%s"
%s
data "SpellFlags" "HasHighGroundRangeExtension;RangeIgnoreVerticalThreshold;IsHarmful;IgnoreVisionBlock;ImmediateCast%s"
data "TargetRadius" "100"
data "TargetConditions" ""
data "UseCosts" ""]],
    spellID,
    spellID,
    spellEffects,
    withConc)
end

---@param spellID string
---@param spellStat SpellData
---@return string
local function createBaseSpell(spellID, spellStat, output)
    local spellFlags = ""
    for _,flag in pairs(spellStat.SpellFlags) do
        if flag ~= "IsConcentration" then
            spellFlags = spellFlags .. flag .. ";"
        end
    end
    local spellProperties = ""
    local armorProperties = ""
    if spellStat.Level == 0 then
        spellProperties = cantripProperties(spellID)
        armorProperties = cantripArmorProperties(spellID)
    else
        local charges = __dynHelper.DetermineChargesForSpell(spellStat)
        spellProperties = levelledProperties(charges, spellID)
        armorProperties = levelledArmorProperties(charges, spellID)
    end
    local base = baseSpell(spellID, spellStat, spellProperties, spellFlags)
    return baseArmor(base, spellID, armorProperties)
end

---@param spellID string
---@param spellStat SpellData
---@return string
local function createUpcastSpell(spellID, spellStat, output)
    local charges = __dynHelper.DetermineChargesForSpell(spellStat)
    local level = spellStat.Level
    if spellStat.PowerLevel > level then level = spellStat.PowerLevel end
    local spellProperties = levelledProperties(charges, spellID)
    local armorProperties = levelledArmorProperties(charges, spellID)
    local base = upcastSpell(spellID, spellStat, spellProperties)
    return upcastArmor(base, spellID, spellStat, armorProperties)
end

Spells.CreateSpells = function(spellID, spellStat, output)
    local isUpcast = spellStat.PowerLevel > spellStat.Level
    if isUpcast then
        return createUpcastSpell(spellID, spellStat, output)
    else
        return createBaseSpell(spellID, spellStat, output)
    end
end

---@param spellStat SpellData
local function extractSpellEffects(spellID, spellStat, output)
    local result = EffectMap[spellID]
    if result then return result else return "TODO" end
end

---@param spellID string
---@param spellStat SpellData
---@return string
Spells.CreatePayload = function(spellID, spellStat, output)
    local spellEffects = extractSpellEffects(spellID, spellStat)
    local withConc = ""
    for _,flag in pairs(spellStat.SpellFlags) do
        if flag == "IsConcentration" then
            withConc = ";IsConcentration"
            break
        end
    end
    return payload(spellID, spellEffects, withConc)
end

return Spells
