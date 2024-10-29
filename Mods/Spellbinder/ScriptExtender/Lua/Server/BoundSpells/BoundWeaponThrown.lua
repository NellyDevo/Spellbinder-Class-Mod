local removalTag = "TAGBOUNDSPELL"
local retrieveSnip = removalTag .. "_X_X"

Ext.Entity.OnDestroy("SpellCastState", function(spellEntity)
    if spellEntity.SpellCastState.SpellId.Prototype == "Throw_Throw" then
        local caster = spellEntity.SpellCastState.Caster
        local primaryTarget
        local thrownObject

        local targets = spellEntity.SpellCastState.Targets
        if targets ~= nil and targets[1] ~= nil then
            primaryTarget = targets[1].Target
            if targets[1].Target2 ~= nil then
                thrownObject = targets[1].Target2.Target
            end
        end

        if not thrownObject.StatusContainer then return end
        for _,statusID in pairs(thrownObject.StatusContainer.Statuses) do
            if string.sub(statusID, 1, #removalTag) == removalTag then
                local spellID = string.sub(statusID, #retrieveSnip, #statusID)
                print("spellID is : " .. spellID)
                Osi.CreateExplosion(primaryTarget.Uuid.EntityUuid, spellID, 0, caster.Uuid.EntityUuid)
                Osi.RemoveStatus(thrownObject.Uuid.EntityUuid, statusID)
                break
            end
        end
    end
end)