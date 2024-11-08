Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (object, status, causee, storyActionID)
    local statusTemplate = {"STATUS_SPELLBINDER_BOUND_SPELL_REMOVER", "TAGBOUNDSPELL"}
    local armorTemplate = {"STATUS_SPELLBINDER_BOUND_ARMOR_REMOVER", "TAGBOUNDARMOR"}
    if status == statusTemplate[1] then
        local entity = Ext.Entity.Get(object)
        local inventoryEntity = entity.InventoryOwner.Inventories[2]
        for _,item in pairs(inventoryEntity.InventoryContainer.Items) do
            if Osi.HasActiveStatus(item.Item.Uuid.EntityUuid, "SPELLBINDER_WEAPON_REMOVAL_MARKER") == 1 then
                if item.Item.StatusContainer and item.Item.StatusContainer.Statuses then
                    for _,statusID in pairs(item.Item.StatusContainer.Statuses) do
                        if string.sub(statusID, 1, #statusTemplate[2]) == statusTemplate[2] then
                            Osi.RemoveStatus(item.Item.Uuid.EntityUuid, statusID, causee)
                        end
                    end
                end
                Osi.RemoveStatus(item.Item.Uuid.EntityUuid, "SPELLBINDER_WEAPON_REMOVAL_MARKER", causee)
            end
        end
    elseif status == armorTemplate[1] then
        local entity = Ext.Entity.Get(object)
        for _,statusID in pairs(entity.StatusContainer.Statuses) do
            if string.sub(statusID, 1, #armorTemplate[2]) == armorTemplate[2] then
                Osi.RemoveStatus(object, statusID, causee)
            end
        end
    end
end)