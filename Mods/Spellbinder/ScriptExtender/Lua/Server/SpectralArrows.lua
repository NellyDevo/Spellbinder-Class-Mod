Ext.Entity.OnCreate("ServerProjectileSpell", function (e)
    if e.ServerProjectileSpell ~= nil and e.ServerProjectileSpell.Spell ~= nil and e.ServerProjectileSpell.Spell.SpellCastState ~= nil then
        local state = e.ServerProjectileSpell.Spell.SpellCastState
        if Osi.HasActiveStatus(state.Caster.Uuid.EntityUuid, "SPELLBINDER_SPECTRAL_ARROWS") == 1
        and state.field_80 ~= nil
        and state.field_80.Use.ItemUseType == "Arrow" then
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
end)