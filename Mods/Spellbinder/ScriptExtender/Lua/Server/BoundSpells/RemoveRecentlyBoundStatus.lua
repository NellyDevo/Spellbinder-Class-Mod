Ext.Osiris.RegisterListener("CastSpell", 5, "before", function (caster, spell, spellType, spellElement, storyActionID)
    local entity = Ext.Entity.Get(caster)
    local inventoryEntity = entity.InventoryOwner.Inventories[2]
    if not inventoryEntity or not inventoryEntity.InventoryContainer or not inventoryEntity.InventoryContainer.Items then return end
    for _,itemEntry in pairs(inventoryEntity.InventoryContainer.Items) do
        if Osi.HasActiveStatus(itemEntry.Item.Uuid.EntityUuid, "SPELLBINDER_RECENTLY_BOUND") == 1 then
            Osi.RemoveStatus(itemEntry.Item.Uuid.EntityUuid, "SPELLBINDER_RECENTLY_BOUND")
        end
    end
end)