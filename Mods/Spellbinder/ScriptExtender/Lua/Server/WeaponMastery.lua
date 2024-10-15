local spellsToProficienciesMap = {
    Shout_Spellbinder_WeaponMasteryBattleaxe = "Battleaxes",
    Shout_Spellbinder_WeaponMasteryClub = "Clubs",
    Shout_Spellbinder_WeaponMasteryDagger = "Daggers",
    Shout_Spellbinder_WeaponMasteryDart = "Darts",
    Shout_Spellbinder_WeaponMasteryFlail = "Flails",
    Shout_Spellbinder_WeaponMasteryGlaive = "Glaives",
    Shout_Spellbinder_WeaponMasteryGreataxe = "Greataxes",
    Shout_Spellbinder_WeaponMasteryGreatclub = "Greatclubs",
    Shout_Spellbinder_WeaponMasteryGreatsword = "Greatswords",
    Shout_Spellbinder_WeaponMasteryHalberd = "Halberds",
    Shout_Spellbinder_WeaponMasteryHandCrossbow = "HandCrossbows",
    Shout_Spellbinder_WeaponMasteryHandaxe = "Handaxes",
    Shout_Spellbinder_WeaponMasteryHeavyCrossbow = "HeavyCrossbows",
    Shout_Spellbinder_WeaponMasteryJavelin = "Javelins",
    Shout_Spellbinder_WeaponMasteryLightCrossbow = "LightCrossbows",
    Shout_Spellbinder_WeaponMasteryLightHammer = "LightHammers",
    Shout_Spellbinder_WeaponMasteryLongbow = "Longbows",
    Shout_Spellbinder_WeaponMasteryLongsword = "Longswords",
    Shout_Spellbinder_WeaponMasteryMace = "Maces",
    Shout_Spellbinder_WeaponMasteryMaul = "Mauls",
    Shout_Spellbinder_WeaponMasteryMorningstar = "Morningstars",
    Shout_Spellbinder_WeaponMasteryPike = "Pikes",
    Shout_Spellbinder_WeaponMasteryQuarterstaff = "Quarterstaffs",
    Shout_Spellbinder_WeaponMasteryRapier = "Rapiers",
    Shout_Spellbinder_WeaponMasteryScimitar = "Scimitars",
    Shout_Spellbinder_WeaponMasteryShortbow = "Shortbows",
    Shout_Spellbinder_WeaponMasteryShortsword = "Shortswords",
    Shout_Spellbinder_WeaponMasterySickle = "Sickles",
    Shout_Spellbinder_WeaponMasterySling = "Slings",
    Shout_Spellbinder_WeaponMasterySpear = "Spears",
    Shout_Spellbinder_WeaponMasteryTrident = "Tridents",
    Shout_Spellbinder_WeaponMasteryWarhammer = "Warhammers",
    Shout_Spellbinder_WeaponMasteryWarpick = "Warpicks"
}

local function removeCooldowns(casterEntity, boost)
    local didThing = false
    for i,cooldown in ipairs(casterEntity.SpellBookCooldowns.Cooldowns) do
        if (cooldown.SpellId.OriginatorPrototype == boost.BoostInfo.Params.Params) then
            casterEntity.SpellBookCooldowns.Cooldowns[i] = nil
            didThing = true
        end
    end
    return didThing
end

local function checkForSpells(weaponEntity, casterEntity)
    local didThing = false
    for _,boost in ipairs(weaponEntity.ItemBoosts.Boosts) do
        if (boost.BoostInfo.Params.Boost == "UnlockSpell") then
            didThing = removeCooldowns(casterEntity, boost)
        end
    end
    return didThing
end

local function tryRemoveCooldowns(weaponEntity, proficiency, casterEntity)
    if weaponEntity.ProficiencyGroup.Flags[proficiency] then
        return checkForSpells(weaponEntity, casterEntity)
    end
    return false
end

Ext.Osiris.RegisterListener("CastedSpell", 5, "after", function(caster, spell, spellType, spellElement, storyActionID)
    local proficiency = spellsToProficienciesMap[spell]
    if (proficiency) then
        local casterEntity = Ext.Entity.Get(caster)
        local weapon = Osi.GetEquippedWeapon(caster)
        if type(weapon)=="string" and tryRemoveCooldowns(Ext.Entity.Get(weapon), proficiency, casterEntity) then
            casterEntity:Replicate("SpellBookCooldowns")
        end
    end
end)