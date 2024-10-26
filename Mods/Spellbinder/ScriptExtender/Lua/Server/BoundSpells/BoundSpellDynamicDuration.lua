local function getBoundLifetime(entity)
    if entity.Wielding then
        entity = entity.Wielding.Owner
    end
    local duration
    if Osi.HasPassive(entity.Uuid.EntityUuid, 'Spellbinder_Enchanter_Infinite_Bind_Duration') == 1 then
        duration = -6
    else
        duration = math.max(1, math.floor((Osi.GetAbility(entity.Uuid.EntityUuid, "Intelligence") - 10) / 2) * 2) * 6
    end
    return duration
end

Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (object, status, causee, storyActionID)
    Ext.Timer.WaitFor(100, function ()
        local statusTag = "TAGBOUND"
        if string.sub(status, 1, #statusTag) ~= statusTag then return end
        local entity = Ext.Entity.Get(object)
        if not entity.StatusContainer or not entity.StatusContainer.Statuses then return end
        for statusEntity,statusID in pairs(entity.StatusContainer.Statuses) do
            if statusID == status then
                if statusEntity.StatusLifetime.Lifetime < 0 then
                    Osi.ApplyStatus(object, status, getBoundLifetime(entity), 1)
                end
                break
            end
        end
    end)
end)