Ext.Osiris.RegisterListener("CastedSpell", 5, "before", function(caster, spell, spellType, spellElement, storyActionID)
    if Osi.HasActiveStatus(caster, "SPELLBINDER_REWEAVE") == 0 then return end
    if Osi.GetActionResourceValuePersonal(caster, "ReweavePoint", 0) < 1 then return end
    local spellStat = Ext.Stats.Get(spell) --[[@as SpellData]]
    if spellStat and spellStat.Level == 0 then
        local isSpell = false
        for _,flag in pairs(spellStat.SpellFlags) do
            if flag == "IsSpell" then
                isSpell = true
                break
            end
        end
        if not isSpell then return end
        local statusID = "TAGBOUNDSPELL_1_" .. spell
        local statusStat = Ext.Stats.Get(statusID) --[[@as StatusData]]
        if statusStat then
            local bindOffHand = Osi.HasActiveStatus(caster, "SPELLBINDER_OFFHAND_BINDING") == 1
            local mainHand = Osi.GetEquippedWeapon(caster)
            if mainHand then
                local offHand
                if Osi.IsRangedWeapon(mainHand, 0) == 1 then
                    offHand = Osi.GetEquippedItem(caster, "Ranged Offhand Weapon")
                else
                    offHand = Osi.GetEquippedItem(caster, "Melee Offhand Weapon")
                end
                if bindOffHand and offHand then
                    Osi.ApplyStatus(offHand, statusID, -1, 1, caster)
                    Osi.ApplyStatus(caster, "SPELLBINDER_REWEAVE_SPEND", 0)
                elseif mainHand then
                    Osi.ApplyStatus(mainHand, statusID, -1, 1, caster)
                    Osi.ApplyStatus(caster, "SPELLBINDER_REWEAVE_SPEND", 0)
                end
            end
        end
    end
end)