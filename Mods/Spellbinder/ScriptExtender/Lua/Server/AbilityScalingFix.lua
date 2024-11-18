local function adjustPoints(passiveName, character, characterEntity, resourceGuid, scalingStat)
    if Osi.HasPassive(character, passiveName) == 1 then
        local modifier = math.max(1, math.floor((Osi.GetAbility(character, scalingStat) - 10) / 2))
        local actionResource = characterEntity.ActionResources.Resources[resourceGuid][1]
        if actionResource.MaxAmount ~= modifier then
            local used = actionResource.MaxAmount - actionResource.Amount
            actionResource.MaxAmount = modifier
            actionResource.Amount = modifier - used
            return true
        end
    end
    return false
end

Ext.Osiris.RegisterListener("LeveledUp", 1, "after", function(character)
    Ext.Timer.WaitFor(1000, function ()
        local characterEntity = Ext.Entity.Get(character)
        local changed = false
        if adjustPoints('Spellbinder_Bind', character, characterEntity, "df7bef22-5966-4322-982f-fe0c4219c4f0", "Intelligence") then changed = true end
        if adjustPoints('Spellbinder_ReweavePoints', character, characterEntity, "6b4afa20-cad2-4fcc-b0a5-85723306a708", "Intelligence") then changed = true end
        if adjustPoints('Spellbinder_SpellDancer_EtherealPresence', character, characterEntity, "77a9fd60-e7fe-40a7-84c2-8e2aeff5a8ff", "Intelligence") then changed = true end
        if changed then
            characterEntity:Replicate("ActionResources")
        end
    end)
end)