local __dynHelper = Ext.Require("Server/DynamicSpells/DynamicHelper.lua")
local EffectMap = Ext.Require("Server/DynamicSpells/Templates/HardcodedEffects.lua")

local Spells = {}

---@param spellStat SpellData
local function extractSpellEffects(spellID, spellStat)
    local result = EffectMap[spellID]
    if result then return result else return "TODO" end
end

local baseTemplate =
[[new entry "Shout_Spellbinder_Bind_%s"
type "SpellData"
data "SpellType" "Shout"
data "CastEffect" "%s"
data "CastSound" "%s"
data "CastTextEvent" "%s"
data "ContainerSpells" "%s"
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
data "SpellContainerID" "Shout_Spellbinder_Bind_Spell"
data "SpellProperties" "%s"
data "SpellSchool" "%s"
data "SpellFlags" "%s"
data "TargetConditions" "Self()"
data "TargetEffect" "%s"
data "TargetSound" "%s"
data "TooltipAttackSave" "%s"
data "TooltipDamageList" "%s"
data "TooltipStatusApply" "%s"
data "UseCosts" "%s"
data "VerbalIntent" "%s"]]
-- OriginalSpellId
-- CastEffect
-- CastSound
-- CastTextEvent
-- formatted container spells for other spell IDs
-- DamageType
-- DisplayNameHandle
-- DisplayNameVersion
-- DescriptionHandle
-- DescriptionVersion
-- DescriptionParams
-- HitAnimationType
-- Icon
-- Spell Level
-- Spell Level
-- PrepareEffect
-- PrepareLoopSound
-- PrepareSound
-- PreviewCursor
-- SpellAnimation
-- Appropriate PropertiesTemplate
-- SpellSchool
-- SpellFlags
-- TargetEffect
-- TargetSound
-- TooltipAttackSave
-- TooltipDamageList
-- TooltipStatusApply
-- UseCosts
-- VerbalIntent
local cantripPropertiesTemplate = "IF(not CharacterLevelGreaterThan(4) and not HasStatus('SPELLBINDER_OFFHAND_BINDING') and HasWeaponInMainHand()):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_1_0_Projectile_Spellbinder_Bound_%s,100,10);IF(not CharacterLevelGreaterThan(4) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and not (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_1_0_Projectile_Spellbinder_Bound_%s,100,10);IF(not CharacterLevelGreaterThan(4) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,OffHand,TAGBOUNDSPELL_1_0_Projectile_Spellbinder_Bound_%s,100,10);IF(CharacterLevelGreaterThan(4) and not CharacterLevelGreaterThan(10) and not HasStatus('SPELLBINDER_OFFHAND_BINDING') and HasWeaponInMainHand()):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_2_0_Projectile_Spellbinder_Bound_%s,100,10);IF(CharacterLevelGreaterThan(4) and not CharacterLevelGreaterThan(10) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and not (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_2_0_Projectile_Spellbinder_Bound_%s,100,10);IF(CharacterLevelGreaterThan(4) and not CharacterLevelGreaterThan(10) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,OffHand,TAGBOUNDSPELL_2_0_Projectile_Spellbinder_Bound_%s,100,10);IF(CharacterLevelGreaterThan(10) and not CharacterLevelGreaterThan(16) and not HasStatus('SPELLBINDER_OFFHAND_BINDING') and HasWeaponInMainHand()):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_3_0_Projectile_Spellbinder_Bound_%s,100,10);IF(CharacterLevelGreaterThan(10) and not CharacterLevelGreaterThan(16) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and not (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_3_0_Projectile_Spellbinder_Bound_%s,100,10);IF(CharacterLevelGreaterThan(10) and not CharacterLevelGreaterThan(16) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,OffHand,TAGBOUNDSPELL_3_0_Projectile_Spellbinder_Bound_%s,100,10);IF(CharacterLevelGreaterThan(16) and not HasStatus('SPELLBINDER_OFFHAND_BINDING') and HasWeaponInMainHand()):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_4_0_Projectile_Spellbinder_Bound_%s,100,10);IF(CharacterLevelGreaterThan(16) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and not (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_4_0_Projectile_Spellbinder_Bound_%s,100,10);IF(CharacterLevelGreaterThan(16) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,OffHand,TAGBOUNDSPELL_4_0_Projectile_Spellbinder_Bound_%s,100,10)"
-- 12x OriginalSpellId
local levelledPropertiesTemplate = "IF(not HasStatus('SPELLBINDER_OFFHAND_BINDING') and HasWeaponInMainHand()):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_%s_%s_Projectile_Spellbinder_Bound_%s,100,10);IF(HasStatus('SPELLBINDER_OFFHAND_BINDING') and not (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_%s_%s_Projectile_Spellbinder_Bound_%s,100,10);IF(HasStatus('SPELLBINDER_OFFHAND_BINDING') and (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,OffHand,TAGBOUNDSPELL_%s_%s_Projectile_Spellbinder_Bound_%s,100,10);"
-- current charge count
-- spell level
-- original spellID
-- current charge count
-- spell level
-- original spellID

---@param spellID string
---@param spellStat SpellData
---@return string
Spells.CreateBaseSpell = function(spellID, spellStat, output)
    local cached = Ext.Stats.GetCachedSpell(spellID)
    local spellFlags = ""
    for _,flag in pairs(spellStat.SpellFlags) do
        spellFlags = spellFlags .. flag .. ";"
    end
    local spellProperties = ""
    if spellStat.Level == 0 then
        spellProperties = string.format(cantripPropertiesTemplate, spellID, spellID, spellID, spellID, spellID, spellID, spellID, spellID, spellID, spellID, spellID, spellID)
    else
        local charges = __dynHelper.DetermineChargesForSpell(spellStat)
        local level = spellStat.Level
        if spellStat.PowerLevel > level then level = spellStat.PowerLevel end
        spellProperties = string.format(levelledPropertiesTemplate, charges, level, spellID, charges, level, spellID, charges, level, spellID)
    end
    local containedSpells = ""
    if spellStat.ContainerSpells and spellStat.ContainerSpells ~= "" then
        local containedSpellTable = __dynHelper.SplitString(spellStat.ContainerSpells)
        for _,containerID in pairs(containedSpellTable) do
            containedSpells = containedSpells .. "Shout_Spellbinder_Bind_" .. containerID .. ";"
        end
    end
    return string.format(baseTemplate,
        spellID,
        spellStat.CastEffect,
        spellStat.CastSound,
        spellStat.CastTextEvent,
        containedSpells,
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
        spellStat.VerbalIntent
    )
end

local upcastTemplate =
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
data "UseCosts" "%s"]]
-- Original Upcast spellID
-- root spell's SpellID
-- PowerLevel
-- root spell's SpellID
-- SpellProperties formatted
-- TooltipAttackSave
-- TooltipDamageList
-- TooltipStatusApply
-- UseCosts

---@param spellID string
---@param spellStat SpellData
---@return string
Spells.CreateUpcastSpell = function(spellID, spellStat, output)
    local spellProperties = ""
    local charges = __dynHelper.DetermineChargesForSpell(spellStat)
    local level = spellStat.Level
    if spellStat.PowerLevel > level then level = spellStat.PowerLevel end
    spellProperties = string.format(levelledPropertiesTemplate, charges, level, spellID, charges, level, spellID, charges, level, spellID)
    return string.format(upcastTemplate,
        spellID,
        spellStat.RootSpellID,
        spellStat.PowerLevel,
        spellStat.RootSpellID,
        spellProperties,
        spellStat.TooltipAttackSave,
        spellStat.TooltipDamageList,
        spellStat.TooltipStatusApply,
        spellStat.UseCosts
    )
end

local payloadTemplate =
[[new entry "%s_Projectile_Spellbinder_Bound_%s"
type "SpellData"
data "SpellType" "Projectile"
%s
data "ProjectileCount" "1"
data "Trajectories" "%s"
data "CastSound" "%s"
data "VerbalIntent" "%s"
data "SpellFlags" "HasHighGroundRangeExtension;RangeIgnoreVerticalThreshold;IsHarmful;IgnoreVisionBlock"
data "HitAnimationType" "%s"
data "SpellAnimation" "%s"
data "DamageType" "%s"]]
-- spell level
-- original spell ID
-- spell effects -- this feels difficult :( (it was :()
-- original spell Trajectories -- might need a default?
-- original spell CastSound
-- original spell VerbalIntent
-- original spell HitAnimationType
-- original spell SpellAnimation
-- original spell DamageType

---@param spellID string
---@param spellStat SpellData
---@return string
Spells.CreatePayload = function(spellID, spellStat)
    local spellEffects = extractSpellEffects(spellID, spellStat)
    local level = spellStat.Level
    if spellStat.PowerLevel > level then level = spellStat.PowerLevel end
    return string.format(payloadTemplate,
        level,
        spellID,
        spellEffects,
        spellStat.Trajectories,
        spellStat.CastSound,
        spellStat.VerbalIntent,
        spellStat.HitAnimationType,
        spellStat.SpellAnimation,
        spellStat.DamageType
    )
end

return Spells
