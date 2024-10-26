Ext.Osiris.RegisterListener("LeveledUp", 1, "after", function(character)
    Ext.Timer.WaitFor(500, function ()
        local characterEntity = Ext.Entity.Get(character)
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
                if hasBindSpell and Osi.HasActiveStatus(character, spellID) == 0 then
                    Osi.ApplyStatus(character, spellID, -1)
                end
                if hasBindArmor and Osi.HasActiveStatus(character, armorID) == 0 then
                    Osi.ApplyStatus(character, armorID, -1)
                end
            end
        end
    end)
end)