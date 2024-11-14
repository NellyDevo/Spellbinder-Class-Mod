Ext.Osiris.RegisterListener("CastSpell", 5, "before", function (caster, spell, spellType, spellElement, storyActionID)
    local entity = Ext.Entity.Get(caster)
    if not entity or not entity.InventoryOwner or not entity.InventoryOwner.Inventories then return end
    local inventoryEntity = entity.InventoryOwner.Inventories[2]
    if not inventoryEntity or not inventoryEntity.InventoryContainer or not inventoryEntity.InventoryContainer.Items then return end
    for _,itemEntry in pairs(inventoryEntity.InventoryContainer.Items) do
        if Osi.HasActiveStatus(itemEntry.Item.Uuid.EntityUuid, "SPELLBINDER_RECENTLY_BOUND") == 1 then
            Osi.RemoveStatus(itemEntry.Item.Uuid.EntityUuid, "SPELLBINDER_RECENTLY_BOUND")
        end
    end
    if Osi.HasActiveStatus(caster, "SPELLBINDER_LOOP_STOPPER") == 1 then
        Ext.Timer.WaitFor(300, function ()
            Osi.RemoveStatus(caster, "SPELLBINDER_LOOP_STOPPER")
        end)
    end
end)