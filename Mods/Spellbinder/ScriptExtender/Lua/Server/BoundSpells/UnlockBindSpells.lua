local function unlockSpells(characterEntity, uuid)
    local spellPrefix = "SPELLBINDER_UNLOCK_BIND_"
    local armorPrefix = "SPELLBINDER_UNLOCK_BIND_ARMOR_"
    local hasBindSpell = Osi.HasPassive(uuid, "Spellbinder_Bind") == 1
    local hasBindArmor = Osi.HasPassive(uuid, "Spellbinder_Bind_Armor") == 1
    if hasBindSpell or hasBindArmor then
        local toAdd = {}
        for _,known in pairs(characterEntity.SpellBook.Spells) do
            local toKnow = {}
            if hasBindSpell then
                toKnow.Spell = spellPrefix .. known.Id.OriginatorPrototype
            end
            if hasBindArmor then
                toKnow.Armor = armorPrefix .. known.Id.OriginatorPrototype
            end
            toAdd[known.Id.OriginatorPrototype] = toKnow
        end
        for _,statusID in pairs(characterEntity.StatusContainer.Statuses) do
            if string.sub(statusID, 1, #spellPrefix) == spellPrefix then
                local prefix = spellPrefix
                if string.find(statusID, "_BIND_ARMOR_") then prefix = armorPrefix end
                local spellID = string.sub(statusID, #prefix)
                if toAdd[spellID] == nil then
                    Osi.RemoveStatus(uuid, statusID)
                else
                    if toAdd[spellID].Spell == statusID then toAdd[spellID].Spell = nil end
                    if toAdd[spellID].Armor == statusID then toAdd[spellID].Armor = nil end
                end
            end
        end
        for _,statusPair in pairs(toAdd) do
            for _,statusID in pairs(statusPair) do
                if Osi.HasActiveStatus(uuid, statusID) == 0 then
                    Osi.ApplyStatus(uuid, statusID, -1)
                end
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

