local __dynHelper = Ext.Require("Server/DynamicSpells/DynamicHelper.lua")

local Passives = {}

local function passiveTemplate()
    return
[[new entry "Spellbinder_Bound_Spell_%s"
type "PassiveData"
data "Properties" "IsHidden"
data "StatsFunctorContext" "OnDamage"
data "EnabledConditions" "AttackedWithPassiveSourceWeapon()"
data "StatsFunctors" "SpawnExtraProjectiles(%s_Projectile_Spellbinder_Bound_%s);ApplyEquipmentStatus(SELF,GetAttackWeapon(),STATUS_SPELLBINDER_BOUND_SPELL_REMOVER,100,0)"]]
    -- SpellID
    -- Spell Level
    -- SpellID
end

---@param spellID string
---@param spellStat SpellData
---@return string
Passives.CreatePassive = function(spellID, spellStat)
    local level = spellStat.Level
    if spellStat.PowerLevel ~= 0 then level = spellStat.PowerLevel end
    return string.format(passiveTemplate(),
        spellID,
        level,
        spellID
    )
end

return Passives
