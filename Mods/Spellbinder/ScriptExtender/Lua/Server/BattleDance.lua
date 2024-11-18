Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (object, status, causee, storyActionID)
    if status == "SPELLBINDER_SPELLDANCER_BATTLE_DANCE_APPLIER" then
        if Osi.HasActiveStatus(object, "SPELLBINDER_SPELLDANCER_BATTLE_DANCE_TRACKER") == 0 then
            local characterEntity = Ext.Entity.Get(object)
            local actionResource = characterEntity.ActionResources.Resources["d6b2369d-84f0-4ca4-a3a7-62d2d192a185"][1]
            local used = actionResource.MaxAmount - actionResource.Amount
            Osi.ApplyStatus(object, "SPELLBINDER_SPELLDANCER_BATTLE_DANCE_TRACKER", used, 1)
        end
        Osi.ApplyStatus(object, "SPELLBINDER_SPELLDANCER_BATTLE_DANCE", 1)
    elseif status == "SPELLBINDER_SPELLDANCER_BATTLE_DANCE_MOVE_TRIGGER" then
        local characterEntity = Ext.Entity.Get(object)
        local prevUsed = Osi.GetStatusCurrentLifetime(object, "SPELLBINDER_SPELLDANCER_BATTLE_DANCE_TRACKER")
        local distanceAvailable = Osi.GetStatusTurns(object, "SPELLBINDER_SPELLDANCER_BATTLE_DANCE") * 3
        local actionResource = characterEntity.ActionResources.Resources["d6b2369d-84f0-4ca4-a3a7-62d2d192a185"][1]
        local used = actionResource.MaxAmount - actionResource.Amount
        if used - prevUsed >= distanceAvailable then
            Osi.RemoveStatus(object, "SPELLBINDER_SPELLDANCER_BATTLE_DANCE_TRACKER")
            Osi.RemoveStatus(object, "SPELLBINDER_SPELLDANCER_BATTLE_DANCE")
        end
    end
end)