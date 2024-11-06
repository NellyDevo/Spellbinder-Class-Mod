Ext.Entity.OnCreate("ServerProjectileSpell", function (e)
    if e.ServerProjectileSpell ~= nil and e.ServerProjectileSpell.Spell ~= nil and e.ServerProjectileSpell.Spell.SpellCastState ~= nil then
        local state = e.ServerProjectileSpell.Spell.SpellCastState
        if Osi.HasActiveStatus(state.Caster.Uuid.EntityUuid, "SPELLBINDER_SPECTRAL_ARROWS") == 1
        and state.field_80 ~= nil
        and state.field_80.Use.ItemUseType == "Arrow" then
            local itemGUID = state.field_80.Uuid.EntityUuid
            local amount = Osi.GetStackAmount(itemGUID)
            Osi.SetStackAmount(itemGUID, amount + 1)
            Osi.ApplyStatus(state.Caster.Uuid.EntityUuid, "SPELLBINDER_SPECTRAL_ARROWS_SPEND", 0)
        end
    end
end)