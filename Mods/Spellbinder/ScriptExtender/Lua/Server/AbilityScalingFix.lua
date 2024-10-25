Ext.Osiris.RegisterListener("LeveledUp", 1, "after", function(character)
    Ext.Timer.WaitFor(1000, function ()
        if Osi.HasPassive(character, 'Spellbinder_Bind') == 1 then
            local characterEntity = Ext.Entity.Get(character)
            local modifier = math.max(1, math.floor((Osi.GetAbility(character, "Intelligence") - 10) / 2))
            local actionResource = characterEntity.ActionResources.Resources["df7bef22-5966-4322-982f-fe0c4219c4f0"][1]
            if (actionResource.MaxAmount ~= modifier) then
                local used = actionResource.MaxAmount - actionResource.Amount
                actionResource.MaxAmount = modifier
                actionResource.Amount = modifier - used
                characterEntity:Replicate("ActionResources")
            end
        end
    end)
end)