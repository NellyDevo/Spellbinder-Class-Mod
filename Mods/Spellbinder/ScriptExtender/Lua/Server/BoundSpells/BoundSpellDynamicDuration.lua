Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (object, status, causee, storyActionID)
    Ext.Timer.WaitFor(100, function ()
        local statusTag = "TAGBOUND"
        if string.sub(status, 1, #statusTag) ~= statusTag then return end
        local entity = Ext.Entity.Get(object)
        if not entity.StatusContainer or not entity.StatusContainer.Statuses then return end
        for statusEntity,statusID in pairs(entity.StatusContainer.Statuses) do
            if statusID == status then
                if statusEntity.StatusLifetime.Lifetime < 0 then
                    if entity.Wielding then
                        entity = entity.Wielding.Owner
                    end
                    if Osi.HasPassive(entity.Uuid.EntityUuid, 'Spellbinder_Enchanter_Magic_Batteries') == 0 then
                        local duration = math.max(1, math.floor((Osi.GetAbility(entity.Uuid.EntityUuid, "Intelligence") - 10) / 2) * 2) * 6
                        Osi.ApplyStatus(object, status, duration, 1)
                    end
                end
                break
            end
        end
    end)
end)