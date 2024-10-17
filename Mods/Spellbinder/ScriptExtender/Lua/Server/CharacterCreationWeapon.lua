local passivesToEquipmentMap = {
    Spellbinder_WeaponMasteryBattleaxe = "a086b825-8f17-4f0e-855b-178f8cdc515a",
    Spellbinder_WeaponMasteryClub = "d9c87013-1f41-4c17-b71d-f353ec0d64e8",
    Spellbinder_WeaponMasteryDagger = "569b0f3d-abcd-4b01-aaf0-979091288163",
    Spellbinder_WeaponMasteryDart = "fb08eef6-f6a0-454e-ab14-c1470f3ba18d",
    Spellbinder_WeaponMasteryFlail = "9eadef92-5dd0-408e-9b55-1cf791cafe9d",
    Spellbinder_WeaponMasteryGlaive = "99f3b2d9-e03d-4cd5-9a67-5435a95682da",
    Spellbinder_WeaponMasteryGreataxe = "d5712e24-ce9e-42ce-8fad-6e049b62c28c",
    Spellbinder_WeaponMasteryGreatclub = "19ce6720-03b6-4d22-bf35-4963b510d1da",
    Spellbinder_WeaponMasteryGreatsword = "ecfb9f69-5bc3-402e-acd8-c91d57e28403",
    Spellbinder_WeaponMasteryHalberd = "f928a70d-5b23-4605-9cae-5342f9ed206e",
    Spellbinder_WeaponMasteryHandCrossbow = "a5d843ab-c3af-4e60-a925-bb2e15828938",
    Spellbinder_WeaponMasteryHandaxe = "46b64a36-8446-45bd-98e8-ee81e3136baa",
    Spellbinder_WeaponMasteryHeavyCrossbow = "04622e3d-5b3f-4f2c-a0db-513a717d911f",
    Spellbinder_WeaponMasteryJavelin = "0a7adc8d-b561-4f81-a8f2-ec07b5d54955",
    Spellbinder_WeaponMasteryLightCrossbow = "43b7fbf5-7f6e-4e9e-bce7-c679eea44593",
    Spellbinder_WeaponMasteryLightHammer = "494f21ac-5a1b-4e91-bd30-551b79532516",
    Spellbinder_WeaponMasteryLongbow = "86e3d864-309c-4c17-ba38-877ce487d481",
    Spellbinder_WeaponMasteryLongsword = "1865323f-b428-4791-a0a9-578841e57463",
    Spellbinder_WeaponMasteryMace = "3186796d-3ab3-4d49-bfc2-cba1aff0cf5a",
    Spellbinder_WeaponMasteryMaul = "5487ceb4-b009-46ae-8ed6-cd3baaf0a18d",
    Spellbinder_WeaponMasteryMorningstar = "26a9fba6-1a60-4691-84ea-da7ffcb304e0",
    Spellbinder_WeaponMasteryPike = "baa5b139-42ad-40fd-b6c3-6b52b092c48e",
    Spellbinder_WeaponMasteryQuarterstaff = "96e2abaf-78ff-4dcb-a6a3-a5f0c348bd9f",
    Spellbinder_WeaponMasteryRapier = "7061f489-4b13-4982-aa09-cf0ad961e75f",
    Spellbinder_WeaponMasteryScimitar = "868217db-9dcb-414c-bb88-e321ab3e0349",
    Spellbinder_WeaponMasteryShortbow = "c5403c1d-f372-43e1-927a-9189e9e3545d",
    Spellbinder_WeaponMasteryShortsword = "467ddb4f-6791-41fa-99f7-ee8620d63bbe",
    Spellbinder_WeaponMasterySickle = "50d677ed-3a0e-40e9-8291-ee6823af5672",
    Spellbinder_WeaponMasterySling = "d31af642-ae35-4f22-b7a6-100f3048be33",
    Spellbinder_WeaponMasterySpear = "9f0f1c0e-012d-44e1-9b29-86c64d2bf675",
    Spellbinder_WeaponMasteryTrident = "d3807461-7c32-44ae-9aba-49ef4d3bf35e",
    Spellbinder_WeaponMasteryWarhammer = "6b17998d-2e79-405d-8b1f-beb53658312f",
    Spellbinder_WeaponMasteryWarpick = "a088775a-8f75-42f2-aa74-76a3f80701fa"
}

local function findPassive(characterEntity, passive)
    for _,selection in pairs(characterEntity.CCLevelUp.LevelUps[1].Upgrades.Passives[1].Passives) do
        if passive == selection then
            return true
        end
    end
    return false
end

local function retrieveWeapon(inventoryEntity, equipment)
    for i,item in pairs(inventoryEntity.InventoryContainer.Items) do
        --LazyExport("item" .. i, item.Item)
        if item.Item.GameObjectVisual.RootTemplateId == equipment then
            return item
        end
    end
    return nil
end

Ext.Osiris.RegisterListener("PROC_Shared_CharacterCreationFinished", 0, "after", function()
    for _,v in pairs(Osi.DB_Avatars:Get(nil)) do
        local guid = v[1] --[[@as string]]
        local characterEntity = Ext.Entity.Get(guid)
        for passive,eq in pairs(passivesToEquipmentMap) do
            if findPassive(characterEntity, passive) then
                Osi.TemplateAddTo(eq, guid, 1, 1)
                Ext.Timer.WaitFor(1000, function()
                    local inventoryEntity = characterEntity.InventoryOwner.Inventories[1]
                    local weapon = retrieveWeapon(inventoryEntity, eq)
                    if weapon and Osi.GetEquipmentSlotForItem(weapon.Item.Uuid.EntityUuid) == 3 then
                        Osi.Equip(guid, weapon.Item.Uuid.EntityUuid, 0, 1, 0)
                    end
                end)
                break
            end
        end
    end
end)
