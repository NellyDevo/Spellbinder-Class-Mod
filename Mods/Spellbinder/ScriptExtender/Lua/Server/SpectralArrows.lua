--Ext.Osiris.RegisterListener("UseFinished", 3, "after", function (character, item, sucess)
--    if Osi.HasActiveStatus(character, "SPELLBINDER_SPECTRAL_ARROWS") == 1
--    and Osi.GetActionResourceValuePersonal(character, 'SpectralArrowPoint', 0) > 0 then
--        local itemEntity = Ext.Entity.Get(item)
--        if itemEntity and itemEntity.Use and itemEntity.Use.ItemUseType == "Arrow" then
--            Osi.PartyIncreaseActionResourceValue(character, 'SpectralArrowPoint', -1)
--            Osi.TemplateAddTo(itemEntity.GameObjectVisual.RootTemplateId, character, 1, 0)
--        end
--    end
--end)

--Ext.Osiris.RegisterListener("TemplateUseFinished", 4, "after", function (character, template, item, sucess)
--    if Osi.HasActiveStatus(character, "SPELLBINDER_SPECTRAL_ARROWS") == 1
--    and Osi.GetActionResourceValuePersonal(character, 'SpectralArrowPoint', 0) > 0 then
--        local itemEntity = Ext.Entity.Get(item)
--        if itemEntity and itemEntity.Use and itemEntity.Use.ItemUseType == "Arrow" then
--            Osi.PartyIncreaseActionResourceValue(character, 'SpectralArrowPoint', -1)
--            Osi.TemplateAddTo(template, character, 1, 0)
--        end
--    end
--end)
--Ext.Osiris.RegisterListener("CastedSpell", 5, "after", function (caster, spell, spellType, spellElement, storyActionID)
--    _P("casted spell")
--    _P(caster)
--    _P(spell)
--    _P(spellType)
--    _P(spellElement)
--    _P(storyActionID)
--end)

Ext.Entity.OnCreate("ServerProjectileSpell", function (e)
    if e.ServerProjectileSpell ~= nil and e.ServerProjectileSpell.Spell ~= nil and e.ServerProjectileSpell.Spell.SpellCastState ~= nil then
        local state = e.ServerProjectileSpell.Spell.SpellCastState
        if state.field_80 ~= nil then
            if state.field_80.Use.ItemUseType == "Arrow" and Osi.HasActiveStatus(state.Caster.Uuid.EntityUuid, "SPELLBINDER_SPECTRAL_ARROWS") == 1 then
                local itemGUID = state.field_80.Uuid.EntityUuid
                local amount = Osi.GetStackAmount(itemGUID)
                Osi.SetStackAmount(itemGUID, amount + 1)
                local resource = state.Caster.ActionResources.Resources["7fd974bd-65c9-4791-8c93-59adc123eac4"]
                if resource ~= nil then
                    local current = resource[1].Amount
                    if current > 0 then
                        resource[1].Amount = current - 1
                        state.Caster:Replicate("ActionResources")
                    end
                end
            end
        end
    end
end)

--Ext.Entity.OnCreateDeferred("SpellCastMovement", function (entity, componentType, component)
--    local state = entity.SpellCastState
--    if state ~= nil and state.field_80 ~= nil then
--        if state.field_80.Use.ItemUseType == "Arrow" and Osi.HasActiveStatus(state.Caster.Uuid.EntityUuid, "SPELLBINDER_SPECTRAL_ARROWS") == 1 then
--            local itemGUID = state.field_80.Uuid.EntityUuid
--            local amount = Osi.GetStackAmount(itemGUID)
--            Osi.SetStackAmount(itemGUID, amount + 1)
--        end
--    end
--end)

--"ServerProjectileSpell" : 
--{
--    "Spell" : "Entity (02000002000063ee)",

--"ServerProjectileInitialization" : 
--{
--    "Data" : 
--    {
--        "Hit" : 
--        {
--            "SpellId" : "Projectile_ArrowOfPiercing",
--"ServerProjectileInitialization" : 
--{
--    "Data" : 
--    {
--        "BeamSource" : "Entity (020000010000007e)",
--        "BeamTargetPos" : null,
--        "CanDeflect" : true,
--        "Caster" : "Entity (020000010000007e)",

--"ServerProjectile" : 
--{
--    "BeamEffect" : null,
--    "BeamSource" : null,
--    "CanDeflect" : true,
--    "Caster" : null,
--    "Cause" : "Attack",
--    "ClientHitObject" : null,
--    "DamageMovingObjectOnLand" : false,
--    "Entity" : "Entity (020000020000569c)",

-----@param character CHARACTER
-----@param item ITEM
-----@param sucess integer
--function Osi.UseFinished(character, item, sucess) end
--	
-----@param character CHARACTER
-----@param item ITEM
--function Osi.UseStarted(character, item) end

--itemEntity notables:
--"InventoryStackMember" :
--{
--        "Stack" : "Entity (0200000100007357)"
--},
--"Use" : 
--{
--    "Boosts" : [],
--    "BoostsOnEquipMainHand" : [],
--    "BoostsOnEquipOffHand" : [],
--    "CanCombine" : 0,
--    "Charges" : 0,
--    "CombineFlag" : 0,
--    "ItemUseBlocked" : 0,
--    "ItemUseType" : "Arrow",
--    "MaxCharges" : 0,
--    "Requirements" : []
--},
--"GameObjectVisual" : 
--{
--    "Icon" : "Item_ARR_Arrow_Of_Piercing",
--    "RootTemplateId" : "eee2f284-1a42-462a-8b38-50bd2e3885c5",
--    "RootTemplateType" : 0,
--    "Scale" : 1.0,
--    "Type" : 0
--},