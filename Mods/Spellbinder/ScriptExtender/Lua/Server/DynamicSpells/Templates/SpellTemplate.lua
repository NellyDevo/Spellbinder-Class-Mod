local __dynHelper = Ext.Require("Server/DynamicSpells/DynamicHelper.lua")
local EffectMap = Ext.Require("Server/DynamicSpells/Templates/HardcodedEffects.lua")

local Spells = {}

local function baseTemplate()
    return
[[new entry "Shout_Spellbinder_Bind_%s"
type "SpellData"
data "SpellType" "Shout"
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
end

local function baseArmorTemplate()
    return
[[%s

new entry "Shout_Spellbinder_Bind_Armor_%s"
type "SpellData"
data "SpellType" "Shout"
using "Shout_Spellbinder_Bind_%s"
data "SpellContainerID" "Shout_Spellbinder_Bind_Armor"
data "SpellProperties" "%s"]]
    -- base bind spell
    -- original spell ID
    -- original spell ID
    -- formatted properties template appropriate to armor
end

local function cantripPropertiesTemplate()
    return "IF(not CharacterLevelGreaterThan(4) and not HasStatus('SPELLBINDER_OFFHAND_BINDING') and HasWeaponInMainHand()):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_1_0_Projectile_Spellbinder_Bound_%s,100,-1);IF(not CharacterLevelGreaterThan(4) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and not (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_1_0_Projectile_Spellbinder_Bound_%s,100,-1);IF(not CharacterLevelGreaterThan(4) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,OffHand,TAGBOUNDSPELL_1_0_Projectile_Spellbinder_Bound_%s,100,-1);IF(CharacterLevelGreaterThan(4) and not CharacterLevelGreaterThan(10) and not HasStatus('SPELLBINDER_OFFHAND_BINDING') and HasWeaponInMainHand()):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_2_0_Projectile_Spellbinder_Bound_%s,100,-1);IF(CharacterLevelGreaterThan(4) and not CharacterLevelGreaterThan(10) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and not (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_2_0_Projectile_Spellbinder_Bound_%s,100,-1);IF(CharacterLevelGreaterThan(4) and not CharacterLevelGreaterThan(10) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,OffHand,TAGBOUNDSPELL_2_0_Projectile_Spellbinder_Bound_%s,100,-1);IF(CharacterLevelGreaterThan(10) and not CharacterLevelGreaterThan(16) and not HasStatus('SPELLBINDER_OFFHAND_BINDING') and HasWeaponInMainHand()):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_3_0_Projectile_Spellbinder_Bound_%s,100,-1);IF(CharacterLevelGreaterThan(10) and not CharacterLevelGreaterThan(16) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and not (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_3_0_Projectile_Spellbinder_Bound_%s,100,-1);IF(CharacterLevelGreaterThan(10) and not CharacterLevelGreaterThan(16) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,OffHand,TAGBOUNDSPELL_3_0_Projectile_Spellbinder_Bound_%s,100,-1);IF(CharacterLevelGreaterThan(16) and not HasStatus('SPELLBINDER_OFFHAND_BINDING') and HasWeaponInMainHand()):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_4_0_Projectile_Spellbinder_Bound_%s,100,-1);IF(CharacterLevelGreaterThan(16) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and not (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_4_0_Projectile_Spellbinder_Bound_%s,100,-1);IF(CharacterLevelGreaterThan(16) and HasStatus('SPELLBINDER_OFFHAND_BINDING') and (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,OffHand,TAGBOUNDSPELL_4_0_Projectile_Spellbinder_Bound_%s,100,-1)"
    -- 12x OriginalSpellId
end

local function levelledPropertiesTemplate()
    return "IF(not HasStatus('SPELLBINDER_OFFHAND_BINDING') and HasWeaponInMainHand()):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_%s_%s_Projectile_Spellbinder_Bound_%s,100,-1);IF(HasStatus('SPELLBINDER_OFFHAND_BINDING') and not (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,MainHand,TAGBOUNDSPELL_%s_%s_Projectile_Spellbinder_Bound_%s,100,-1);IF(HasStatus('SPELLBINDER_OFFHAND_BINDING') and (WieldingWeapon('Melee', true, false, context.Source) or WieldingWeapon('Ammunition', true, false, context.Source))):ApplyEquipmentStatus(SELF,OffHand,TAGBOUNDSPELL_%s_%s_Projectile_Spellbinder_Bound_%s,100,-1);"
    -- current charge count
    -- spell level
    -- original spellID
    -- current charge count
    -- spell level
    -- original spellID
end

local function cantripArmorPropertiesTemplate()
    return "IF(not CharacterLevelGreaterThan(4)):ApplyStatus(TAGBOUNDARMOR_1_0_Projectile_Spellbinder_Bound_Armor_%s,100,-1);IF(CharacterLevelGreaterThan(4) and not CharacterLevelGreaterThan(10)):ApplyStatus(TAGBOUNDARMOR_2_0_Projectile_Spellbinder_Bound_Armor_%s,100,-1);IF(CharacterLevelGreaterThan(10) and not CharacterLevelGreaterThan(16)):ApplyStatus(TAGBOUNDARMOR_3_0_Projectile_Spellbinder_Bound_Armor_%s,100,-1);IF(CharacterLevelGreaterThan(16)):ApplyStatus(TAGBOUNDARMOR_4_0_Projectile_Spellbinder_Bound_Armor_%s,100,-1)"
    -- 4x OriginalSpellId
end

local function levelledArmorPropertiesTemplate()
    return "ApplyStatus(TAGBOUNDARMOR_%s_%s_Projectile_Spellbinder_Bound_Armor_%s,100,-1);"
    -- charge count
    -- spell level
    -- original spellID
end

local function upcastTemplate()
    return
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
end

local function upcastArmorTemplate()
    return
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
data "UseCosts" "%s"]]
    -- base bind spell
    -- Original Upcast spellID
    -- root spell's SpellID
    -- PowerLevel
    -- root spell's SpellID
    -- SpellProperties formatted
    -- TooltipAttackSave
    -- TooltipDamageList
    -- TooltipStatusApply
    -- UseCosts
end

local function payloadTemplate()
    return
[[new entry "%s_Projectile_Spellbinder_Bound_%s"
type "SpellData"
data "SpellType" "Projectile"
%s
data "ProjectileCount" "1"
data "Trajectories" "%s"
data "CastSound" "%s"
data "VerbalIntent" "%s"
data "SpellFlags" "HasHighGroundRangeExtension;RangeIgnoreVerticalThreshold;IsHarmful;IgnoreVisionBlock%s"
data "HitAnimationType" "%s"
data "SpellAnimation" "%s"
data "DamageType" "%s"]]
    -- spell level
    -- original spell ID
    -- spell effects -- this feels difficult :( (it was :()
    -- original spell Trajectories, default to 792ba497-a6ea-46bc-81cb-deb78e4dd9d3 if empty
    -- original spell CastSound
    -- original spell VerbalIntent
    -- if original spell has concentration, ;IsConcentration. Otherwise empty string
    -- original spell HitAnimationType
    -- original spell SpellAnimation
    -- original spell DamageType
end

---@param spellID string
---@param spellStat SpellData
---@return string
local function createBaseSpell(spellID, spellStat, output)
    local cached = Ext.Stats.GetCachedSpell(spellID)
    local spellFlags = ""
    for _,flag in pairs(spellStat.SpellFlags) do
        if flag ~= "IsConcentration" then
            spellFlags = spellFlags .. flag .. ";"
        end
    end
    local spellProperties = ""
    local armorProperties = ""
    if spellStat.Level == 0 then
        spellProperties = string.format(cantripPropertiesTemplate(), spellID, spellID, spellID, spellID, spellID, spellID, spellID, spellID, spellID, spellID, spellID, spellID)
        armorProperties = string.format(cantripArmorPropertiesTemplate(), spellID, spellID, spellID, spellID)
    else
        local charges = __dynHelper.DetermineChargesForSpell(spellStat)
        local level = spellStat.Level
        if spellStat.PowerLevel > level then level = spellStat.PowerLevel end
        spellProperties = string.format(levelledPropertiesTemplate(), charges, level, spellID, charges, level, spellID, charges, level, spellID)
        armorProperties = string.format(levelledArmorPropertiesTemplate(), charges, level, spellID)
    end
    local baseSpell = string.format(baseTemplate(),
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
        spellStat.VerbalIntent
    )
    return string.format(baseArmorTemplate(),
        baseSpell,
        spellID,
        spellID,
        armorProperties
    )
end

---@param spellID string
---@param spellStat SpellData
---@return string
local function createUpcastSpell(spellID, spellStat, output)
    local charges = __dynHelper.DetermineChargesForSpell(spellStat)
    local level = spellStat.Level
    if spellStat.PowerLevel > level then level = spellStat.PowerLevel end
    local spellProperties = string.format(levelledPropertiesTemplate(), charges, level, spellID, charges, level, spellID, charges, level, spellID)
    local armorProperties = string.format(levelledArmorPropertiesTemplate(), charges, level, spellID)
    local baseSpell = string.format(upcastTemplate(),
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
    return string.format(upcastArmorTemplate(),
        baseSpell,
        spellID,
        spellStat.RootSpellID,
        spellStat.PowerLevel,
        spellStat.RootSpellID,
        armorProperties,
        spellStat.TooltipAttackSave,
        spellStat.TooltipDamageList,
        spellStat.TooltipStatusApply,
        spellStat.UseCosts
    )
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
    local level = spellStat.Level
    local withConc = ""
    for _,flag in pairs(spellStat.SpellFlags) do
        if flag == "IsConcentration" then
            withConc = ";IsConcentration"
            break
        end
    end
    local trajectories = "792ba497-a6ea-46bc-81cb-deb78e4dd9d3"
    if not (spellStat.Trajectories == "" or spellStat.Trajectories == nil) then trajectories = spellStat.Trajectories end
    if spellStat.PowerLevel > level then level = spellStat.PowerLevel end
    return string.format(payloadTemplate(),
        level,
        spellID,
        spellEffects,
        trajectories,
        spellStat.CastSound,
        spellStat.VerbalIntent,
        withConc,
        spellStat.HitAnimationType,
        spellStat.SpellAnimation,
        spellStat.DamageType
    )
end

return Spells
