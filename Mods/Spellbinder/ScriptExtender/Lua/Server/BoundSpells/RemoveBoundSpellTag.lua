Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (object, status, causee, storyActionID)
    local statusTemplate = "STATUS_SPELLBINDER_BOUND_%s_REMOVER"
    local removalTemplate = "TAGBOUND%s"
    local removalTypes = {"SPELL", "ARMOR"}

    for _,type in pairs(removalTypes) do
        local statusCandidate = string.format(statusTemplate, type)
        if status == statusCandidate then
            local entity = Ext.Entity.Get(object)
            for _,statusID in pairs(entity.StatusContainer.Statuses) do
                local removalTag = string.format(removalTemplate, type)
                if string.sub(statusID, 1, #removalTag) == removalTag then
                    Osi.RemoveStatus(object, statusID)
                end
            end
            break
        end
    end
end)