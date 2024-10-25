Ext.Osiris.RegisterListener("LeveledUp", 1, "after", function(character)
    Ext.Timer.WaitFor(500, function ()
        local characterEntity = Ext.Entity.Get(character)
        local toProcess = {}
        local hasBindSpell = false
        for _,known in pairs(characterEntity.SpellBook.Spells) do
            table.insert(toProcess, "SPELLBINDER_UNLOCK_BIND_" .. known.Id.OriginatorPrototype)
            if known.Id.OriginatorPrototype == "Shout_Spellbinder_Bind_Spell" then hasBindSpell = true end
        end
        if hasBindSpell and #toProcess > 0 then
            for _,toLearn in pairs(toProcess) do
                if Osi.HasActiveStatus(character, toLearn) == 0 then
                    Osi.ApplyStatus(character, toLearn, -1)
                end
            end
        end
    end)
end)