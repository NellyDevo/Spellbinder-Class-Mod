local function unlockSpells(characterEntity, uuid)
    local toProcess = {}
    local hasBindSpell = false
    local hasBindArmor = false
    for _,known in pairs(characterEntity.SpellBook.Spells) do
        table.insert(toProcess, "SPELLBINDER_UNLOCK_BIND%s" .. known.Id.OriginatorPrototype)
        if known.Id.OriginatorPrototype == "Shout_Spellbinder_Bind_Spell" then hasBindSpell = true end
        if known.Id.OriginatorPrototype == "Shout_Spellbinder_Bind_Armor" then hasBindArmor = true end
    end
    if #toProcess > 0 and (hasBindSpell or hasBindArmor) then
        for _,toLearn in pairs(toProcess) do
            local spellID = string.format(toLearn, "_")
            local armorID = string.format(toLearn, "_ARMOR_")
            if hasBindSpell and Osi.HasActiveStatus(uuid, spellID) == 0 then
                Osi.ApplyStatus(uuid, spellID, -1)
            end
            if hasBindArmor and Osi.HasActiveStatus(uuid, armorID) == 0 then
                Osi.ApplyStatus(uuid, armorID, -1)
            end
        end
    end
end

Ext.Osiris.RegisterListener("LeveledUp", 1, "after", function(character)
    Ext.Timer.WaitFor(500, function ()
        local characterEntity = Ext.Entity.Get(character)
        unlockSpells(characterEntity, character)
    end)
end)

Ext.Osiris.RegisterListener("SavegameLoaded", 0, "after", function ()
    for _,v in pairs(Osi.DB_Avatars:Get(nil)) do
        local guid = v[1] --[[@as string]]
        local characterEntity = Ext.Entity.Get(guid)
        unlockSpells(characterEntity, guid)
    end
end)

