local __dynHelper = Ext.Require("Server/DynamicSpells/DynamicHelper.lua")

local Passives = {}

local function weaponPassive(spellID)
    return string.format(
[[new entry "Spellbinder_Bound_Spell_%s"
type "PassiveData"
using "Spellbinder_Bound_Spell_BasePassive"
data "StatsFunctors" "IF(not HasStatus('SPELLBINDER_LOOP_STOPPER',context.Source)):ApplyStatus(STATUS_TARGET_TRIGGER_%s);IF(not HasStatus('SPELLBINDER_LOOP_STOPPER',context.Source)):ApplyStatus(SELF,STATUS_CASTER_TRIGGER_%s,100,1);IF(not HasStatus('SPELLBINDER_LOOP_STOPPER',context.Source)):ApplyEquipmentStatus(SELF,GetAttackWeapon(),STATUS_SPELLBINDER_BOUND_SPELL_REMOVER,100,0);IF(not HasStatus('SPELLBINDER_LOOP_STOPPER',context.Source)):ApplyStatus(SELF,SPELLBINDER_LOOP_STOPPER)"]],
    spellID, spellID, spellID)
end

local function casterPassive(progress, spellID)
    return string.format(
[[%s

new entry "Passive_Trigger_%s"
type "PassiveData"
using "Spellbinder_Passive_Trigger_BasePassive"
data "StatsFunctors" "ApplyStatus(STATUS_RESOLVED_%s,100,0)"]],
    progress, spellID, spellID)
end

---@param spellID string
---@param spellStat SpellData
---@return string
Passives.CreatePassive = function(spellID, spellStat)
    local weapon = weaponPassive(spellID)
    return casterPassive(weapon, spellID)
end

return Passives
