local removalTag = "TAGBOUNDSPELL"

Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (object, status, causee, storyActionID)
    if status == "STATUS_SPELLBINDER_BOUND_SPELL_REMOVER" then
        local entity = Ext.Entity.Get(object)
        for _,statusID in pairs(entity.StatusContainer.Statuses) do
            if string.sub(statusID, 1, #removalTag) == removalTag then
                Osi.RemoveStatus(object, statusID)
            end
        end
    end
end)