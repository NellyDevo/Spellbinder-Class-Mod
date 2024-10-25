local SpellEffectMap = {}
--TODO: data "TooltipUpcastDescriptionParams" "DealDamage(1d8,Cold)"
--TODO: filter not Enemy() in TargetConditions
SpellEffectMap.Target_ChillTouch = [[data "SpellProperties" "ApplyStatus(CHILL_TOUCH,100,1);DealDamage(LevelMapValue(D8Cantrip), Necrotic,Magical)"]]
SpellEffectMap.Projectile_FireBolt = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);DealDamage(1d10,Fire,Magical)"]]
SpellEffectMap.Target_Light = [[data "SpellProperties" "ApplyEquipmentStatus(MainHand,LIGHT,100,-1)"]]
SpellEffectMap.Target_MindSliver = [[data "SpellRoll" "not SavingThrow(Ability.Intelligence, SourceSpellDC(),,true)"
data "SpellSuccess" "DealDamage(1d6,Psychic,Magical);ApplyStatus(MIND_SLIVER,100,2)"
data "SpellFail" "IF(HasPassive('PotentCantrip',context.Source)):DealDamage((1d8)/2,Psychic,Magical)"]]
SpellEffectMap.Projectile_PoisonSpray = [[data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)"
data "SpellSuccess" "DealDamage(1d12,Poison,Magical)"
data "SpellFail" "IF(HasPassive('PotentCantrip',context.Source)):DealDamage((1d12)/2,Poison,Magical); IF(not HasPassive('PotentCantrip',context.Source)):ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Projectile_RayOfFrost = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:SurfaceChange(Douse);DealDamage(1d8,Cold,Magical);ApplyStatus(RAY_OF_FROST,100,1)"]]
SpellEffectMap.Target_ShockingGrasp = [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);ApplyStatus(SHOCKING_GRASP,100,1);DealDamage(1d8,Lightning,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb = [[]]
SpellEffectMap.Projectile_ChromaticOrb_Acid =   [[data "SpellProperties" "GROUND:CreateSurface(2,2,Acid);DealDamage(2d8,Acid,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Acid_2 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Acid);DealDamage(3d8,Acid,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Acid_3 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Acid);DealDamage(4d8,Acid,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Acid_4 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Acid);DealDamage(5d8,Acid,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Acid_5 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Acid);DealDamage(6d8,Acid,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Acid_6 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Acid);DealDamage(7d8,Acid,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Cold =   [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:CreateSurface(2,2,WaterFrozen);DealDamage(2d8,Cold,Magical);RemoveStatus(BURNING)"]]
SpellEffectMap.Projectile_ChromaticOrb_Cold_2 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:CreateSurface(2,2,WaterFrozen);DealDamage(3d8,Cold,Magical);RemoveStatus(BURNING)"]]
SpellEffectMap.Projectile_ChromaticOrb_Cold_3 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:CreateSurface(2,2,WaterFrozen);DealDamage(4d8,Cold,Magical);RemoveStatus(BURNING)"]]
SpellEffectMap.Projectile_ChromaticOrb_Cold_4 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:CreateSurface(2,2,WaterFrozen);DealDamage(5d8,Cold,Magical);RemoveStatus(BURNING)"]]
SpellEffectMap.Projectile_ChromaticOrb_Cold_5 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:CreateSurface(2,2,WaterFrozen);DealDamage(6d8,Cold,Magical);RemoveStatus(BURNING)"]]
SpellEffectMap.Projectile_ChromaticOrb_Cold_6 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:CreateSurface(2,2,WaterFrozen);DealDamage(7d8,Cold,Magical);RemoveStatus(BURNING)"]]
SpellEffectMap.Projectile_ChromaticOrb_Fire =   [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);GROUND:CreateSurface(2,2,Fire);DealDamage(2d8,Fire,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Fire_2 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);GROUND:CreateSurface(2,2,Fire);DealDamage(3d8,Fire,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Fire_3 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);GROUND:CreateSurface(2,2,Fire);DealDamage(4d8,Fire,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Fire_4 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);GROUND:CreateSurface(2,2,Fire);DealDamage(5d8,Fire,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Fire_5 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);GROUND:CreateSurface(2,2,Fire);DealDamage(6d8,Fire,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Fire_6 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);GROUND:CreateSurface(2,2,Fire);DealDamage(7d8,Fire,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Lightning =   [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);GROUND:CreateSurface(2,2,WaterElectrified);DealDamage(2d8,Lightning,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Lightning_2 = [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);GROUND:CreateSurface(2,2,WaterElectrified);DealDamage(3d8,Lightning,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Lightning_3 = [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);GROUND:CreateSurface(2,2,WaterElectrified);DealDamage(4d8,Lightning,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Lightning_4 = [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);GROUND:CreateSurface(2,2,WaterElectrified);DealDamage(5d8,Lightning,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Lightning_5 = [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);GROUND:CreateSurface(2,2,WaterElectrified);DealDamage(6d8,Lightning,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Lightning_6 = [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);GROUND:CreateSurface(2,2,WaterElectrified);DealDamage(7d8,Lightning,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Poison =   [[data "SpellProperties" "GROUND:CreateSurface(2,2,Poison);DealDamage(2d8,Poison,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Poison_2 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Poison);DealDamage(3d8,Poison,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Poison_3 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Poison);DealDamage(4d8,Poison,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Poison_4 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Poison);DealDamage(5d8,Poison,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Poison_5 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Poison);DealDamage(6d8,Poison,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Poison_6 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Poison);DealDamage(7d8,Poison,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Thunder =   [[data "SpellProperties" "DealDamage(3d8,Thunder,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Thunder_2 = [[data "SpellProperties" "DealDamage(4d8,Thunder,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Thunder_3 = [[data "SpellProperties" "DealDamage(5d8,Thunder,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Thunder_4 = [[data "SpellProperties" "DealDamage(6d8,Thunder,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Thunder_5 = [[data "SpellProperties" "DealDamage(7d8,Thunder,Magical)"]]
SpellEffectMap.Projectile_ChromaticOrb_Thunder_6 = [[data "SpellProperties" "DealDamage(8d8,Thunder,Magical)"]]
SpellEffectMap.Target_Jump = [[data "SpellProperties" "ApplyStatus(LONG_JUMP,100,10)"]]
SpellEffectMap.Target_Jump_2 = SpellEffectMap.Target_Jump
SpellEffectMap.Target_Jump_3 = SpellEffectMap.Target_Jump
SpellEffectMap.Target_Jump_4 = SpellEffectMap.Target_Jump
SpellEffectMap.Target_Jump_5 = SpellEffectMap.Target_Jump
SpellEffectMap.Target_Jump_6 = SpellEffectMap.Target_Jump
SpellEffectMap.Target_Longstrider = [[data "SpellProperties" "ApplyStatus(LONGSTRIDER,100,-1)"]]
SpellEffectMap.Target_Longstrider_2 = SpellEffectMap.Target_Longstrider
SpellEffectMap.Target_Longstrider_3 = SpellEffectMap.Target_Longstrider
SpellEffectMap.Target_Longstrider_4 = SpellEffectMap.Target_Longstrider
SpellEffectMap.Target_Longstrider_5 = SpellEffectMap.Target_Longstrider
SpellEffectMap.Target_Longstrider_6 = SpellEffectMap.Target_Longstrider
SpellEffectMap.Target_MageArmor = [[data "SpellProperties" "ApplyStatus(MAGE_ARMOR,100,-1)"]]
SpellEffectMap.Target_MageArmor_2 = SpellEffectMap.Target_MageArmor
SpellEffectMap.Target_MageArmor_3 = SpellEffectMap.Target_MageArmor
SpellEffectMap.Target_MageArmor_4 = SpellEffectMap.Target_MageArmor
SpellEffectMap.Target_MageArmor_5 = SpellEffectMap.Target_MageArmor
SpellEffectMap.Target_MageArmor_6 = SpellEffectMap.Target_MageArmor
SpellEffectMap.Projectile_MagicMissile = [[data "SpellProperties" "DealDamage(1d4+1,Force,Magical)"]]
SpellEffectMap.Projectile_MagicMissile_2 = SpellEffectMap.Projectile_MagicMissile
SpellEffectMap.Projectile_MagicMissile_3 = SpellEffectMap.Projectile_MagicMissile
SpellEffectMap.Projectile_MagicMissile_4 = SpellEffectMap.Projectile_MagicMissile
SpellEffectMap.Projectile_MagicMissile_5 = SpellEffectMap.Projectile_MagicMissile
SpellEffectMap.Projectile_MagicMissile_6 = SpellEffectMap.Projectile_MagicMissile
SpellEffectMap.Projectile_RayOfSickness =   [[data "SpellProperties" "IF(not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)):ApplyStatus(POISONED,100,2);DealDamage(2d8,Poison,Magical)"]]
SpellEffectMap.Projectile_RayOfSickness_2 = [[data "SpellProperties" "IF(not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)):ApplyStatus(POISONED,100,2);DealDamage(3d8,Poison,Magical)"]]
SpellEffectMap.Projectile_RayOfSickness_3 = [[data "SpellProperties" "IF(not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)):ApplyStatus(POISONED,100,2);DealDamage(4d8,Poison,Magical)"]]
SpellEffectMap.Projectile_RayOfSickness_4 = [[data "SpellProperties" "IF(not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)):ApplyStatus(POISONED,100,2);DealDamage(5d8,Poison,Magical)"]]
SpellEffectMap.Projectile_RayOfSickness_5 = [[data "SpellProperties" "IF(not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)):ApplyStatus(POISONED,100,2);DealDamage(6d8,Poison,Magical)"]]
SpellEffectMap.Projectile_RayOfSickness_6 = [[data "SpellProperties" "IF(not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)):ApplyStatus(POISONED,100,2);DealDamage(7d8,Poison,Magical)"]]
SpellEffectMap.Target_HideousLaughter =   [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),,true)"
data "SpellSuccess" "ApplyStatus(HIDEOUS_LAUGHTER,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL_DOMINATED,100,0)"]]
SpellEffectMap.Target_HideousLaughter_2 = SpellEffectMap.Target_HideousLaughter
SpellEffectMap.Target_HideousLaughter_3 = SpellEffectMap.Target_HideousLaughter
SpellEffectMap.Target_HideousLaughter_4 = SpellEffectMap.Target_HideousLaughter
SpellEffectMap.Target_HideousLaughter_5 = SpellEffectMap.Target_HideousLaughter
SpellEffectMap.Target_HideousLaughter_6 = SpellEffectMap.Target_HideousLaughter
SpellEffectMap.Target_Blindness = [[data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(),,true)"
data "SpellSuccess" "ApplyStatus(BLINDNESS,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_Blindness_3 = SpellEffectMap.Target_Blindness
SpellEffectMap.Target_Blindness_4 = SpellEffectMap.Target_Blindness
SpellEffectMap.Target_Blindness_5 = SpellEffectMap.Target_Blindness
SpellEffectMap.Target_Blindness_6 = SpellEffectMap.Target_Blindness
SpellEffectMap.Target_CrownOfMadness = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), AdvantageOnCharmed(),true)"
data "SpellSuccess" "ApplyStatus(CROWN_OF_MADNESS,100,3)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL_CHARM,100,0)"]]
SpellEffectMap.Target_CrownOfMadness_3 = SpellEffectMap.Target_CrownOfMadness
SpellEffectMap.Target_CrownOfMadness_4 = SpellEffectMap.Target_CrownOfMadness
SpellEffectMap.Target_CrownOfMadness_5 = SpellEffectMap.Target_CrownOfMadness
SpellEffectMap.Target_CrownOfMadness_6 = SpellEffectMap.Target_CrownOfMadness
SpellEffectMap.Target_Darkvision = [[data "SpellProperties" "ApplyStatus(DARKVISION,100,-1)"]]
SpellEffectMap.Target_Darkvision_3 = SpellEffectMap.Target_Darkvision
SpellEffectMap.Target_Darkvision_4 = SpellEffectMap.Target_Darkvision
SpellEffectMap.Target_Darkvision_5 = SpellEffectMap.Target_Darkvision
SpellEffectMap.Target_Darkvision_6 = SpellEffectMap.Target_Darkvision
SpellEffectMap.Target_HoldPerson = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),,true)"
data "SpellSuccess" "ApplyStatus(HOLD_PERSON,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL,100,0)"]]
SpellEffectMap.Target_HoldPerson_3 = SpellEffectMap.Target_HoldPerson
SpellEffectMap.Target_HoldPerson_4 = SpellEffectMap.Target_HoldPerson
SpellEffectMap.Target_HoldPerson_5 = SpellEffectMap.Target_HoldPerson
SpellEffectMap.Target_HoldPerson_6 = SpellEffectMap.Target_HoldPerson
SpellEffectMap.Target_Invisibility = [[data "SpellProperties" "ApplyStatus(INVISIBILITY,100,10)"]]
SpellEffectMap.Target_Invisibility_3 = SpellEffectMap.Target_Invisibility
SpellEffectMap.Target_Invisibility_4 = SpellEffectMap.Target_Invisibility
SpellEffectMap.Target_Invisibility_5 = SpellEffectMap.Target_Invisibility
SpellEffectMap.Target_Invisibility_6 = SpellEffectMap.Target_Invisibility
SpellEffectMap.Target_Levitate = [[data "SpellRoll" "SpellAutoResolveOnAllyWithDisadvantage(Ability.Constitution, SourceSpellDC(), true)"
data "SpellSuccess" "ApplyStatus(LEVITATE,100,100)"]]
SpellEffectMap.Target_Levitate_3 = SpellEffectMap.Target_Levitate
SpellEffectMap.Target_Levitate_4 = SpellEffectMap.Target_Levitate
SpellEffectMap.Target_Levitate_5 = SpellEffectMap.Target_Levitate
SpellEffectMap.Target_Levitate_6 = SpellEffectMap.Target_Levitate
SpellEffectMap.Target_Levitate_7 = SpellEffectMap.Target_Levitate
SpellEffectMap.Target_Levitate_8 = SpellEffectMap.Target_Levitate
SpellEffectMap.Target_Levitate_9 = SpellEffectMap.Target_Levitate
SpellEffectMap.Target_MagicWeapon = [[data "SpellProperties" "ApplyEquipmentStatus(MainHand,MAGIC_WEAPON,100,-1)"]]
SpellEffectMap.Target_MagicWeapon_3 = SpellEffectMap.Target_MagicWeapon
SpellEffectMap.Target_MagicWeapon_4 = [[data "SpellProperties" "ApplyEquipmentStatus(MainHand,MAGIC_WEAPON_4,100,-1)"]]
SpellEffectMap.Target_MagicWeapon_5 = SpellEffectMap.Target_MagicWeapon_4
SpellEffectMap.Target_MagicWeapon_6 = [[data "SpellProperties" "ApplyEquipmentStatus(MainHand,MAGIC_WEAPON_6,100,-1)"]]
SpellEffectMap.Target_PhantasmalForce = [[data "SpellRoll" "not SavingThrow(Ability.Intelligence, SourceSpellDC(),,true)"
data "SpellSuccess" "ApplyStatus(PHANTASMAL_FORCE,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL,100,0)"]]
SpellEffectMap.Target_PhantasmalForce_3 = SpellEffectMap.Target_PhantasmalForce
SpellEffectMap.Target_PhantasmalForce_4 = SpellEffectMap.Target_PhantasmalForce
SpellEffectMap.Target_PhantasmalForce_5 = SpellEffectMap.Target_PhantasmalForce
SpellEffectMap.Target_PhantasmalForce_6 = SpellEffectMap.Target_PhantasmalForce
SpellEffectMap.Projectile_RayOfEnfeeblement = [[data "SpellProperties" "ApplyStatus(RAY_OF_ENFEEBLEMENT,100,10)"]]
SpellEffectMap.Projectile_RayOfEnfeeblement_3 = SpellEffectMap.Projectile_RayOfEnfeeblement
SpellEffectMap.Projectile_RayOfEnfeeblement_4 = SpellEffectMap.Projectile_RayOfEnfeeblement
SpellEffectMap.Projectile_RayOfEnfeeblement_5 = SpellEffectMap.Projectile_RayOfEnfeeblement
SpellEffectMap.Projectile_RayOfEnfeeblement_6 = SpellEffectMap.Projectile_RayOfEnfeeblement
SpellEffectMap.Projectile_ScorchingRay = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);DealDamage(2d6,Fire,Magical)"]]
SpellEffectMap.Projectile_ScorchingRay_3 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Projectile_ScorchingRay_4 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Projectile_ScorchingRay_5 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Projectile_ScorchingRay_6 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Projectile_ScorchingRay_7 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Projectile_ScorchingRay_8 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Projectile_ScorchingRay_9 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Projectile_ScorchingRay_10 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Target_Suggestion = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),,true)"
data "SpellSuccess" "ApplyStatus(SUGGESTION,100,600)"]]
SpellEffectMap.Target_Suggestion_3 = SpellEffectMap.Target_Suggestion
SpellEffectMap.Target_Suggestion_4 = SpellEffectMap.Target_Suggestion
SpellEffectMap.Target_Suggestion_5 = SpellEffectMap.Target_Suggestion
SpellEffectMap.Target_Suggestion_6 = SpellEffectMap.Target_Suggestion
SpellEffectMap.Target_Suggestion_7 = SpellEffectMap.Target_Suggestion
SpellEffectMap.Target_Suggestion_8 = SpellEffectMap.Target_Suggestion
SpellEffectMap.Target_Suggestion_9 = SpellEffectMap.Target_Suggestion
SpellEffectMap.Target_DispelMagic = [[data "SpellRoll" "TryDispelMagicHigherLevel(3)"
data "SpellSuccess" "ApplyStatus(DISPEL_MAGIC,100,0)"]]
SpellEffectMap.Target_DispelMagic_4 = SpellEffectMap.Target_DispelMagic
SpellEffectMap.Target_DispelMagic_5 = SpellEffectMap.Target_DispelMagic
SpellEffectMap.Target_DispelMagic_6 = SpellEffectMap.Target_DispelMagic
SpellEffectMap.Target_DispelMagic_7 = SpellEffectMap.Target_DispelMagic
SpellEffectMap.Target_DispelMagic_8 = SpellEffectMap.Target_DispelMagic
SpellEffectMap.Target_DispelMagic_9 = SpellEffectMap.Target_DispelMagic
SpellEffectMap.Target_Fly = [[data "SpellProperties" "ApplyStatus(FLY,100,10)"]]
SpellEffectMap.Target_Fly_4 = SpellEffectMap.Target_Fly
SpellEffectMap.Target_Fly_5 = SpellEffectMap.Target_Fly
SpellEffectMap.Target_Fly_6 = SpellEffectMap.Target_Fly
SpellEffectMap.Target_Haste = [[data "SpellProperties" "ApplyStatus(HASTE,100,10)]]
SpellEffectMap.Target_Haste_4 = SpellEffectMap.Target_Haste
SpellEffectMap.Target_Haste_5 = SpellEffectMap.Target_Haste
SpellEffectMap.Target_Haste_6 = SpellEffectMap.Target_Haste
SpellEffectMap.Target_RemoveCurse = [[data "SpellProperties" "RemoveStatus(SG_Cursed)]]
SpellEffectMap.Target_RemoveCurse_4 = SpellEffectMap.Target_RemoveCurse
SpellEffectMap.Target_RemoveCurse_5 = SpellEffectMap.Target_RemoveCurse
SpellEffectMap.Target_RemoveCurse_6 = SpellEffectMap.Target_RemoveCurse
SpellEffectMap.Target_Slow = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),,true)"
data "SpellSuccess" "ApplyStatus(SLOW,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL,100,0)"]]
SpellEffectMap.Target_Slow_4 = SpellEffectMap.Target_Slow
SpellEffectMap.Target_Slow_5 = SpellEffectMap.Target_Slow
SpellEffectMap.Target_Slow_6 = SpellEffectMap.Target_Slow
SpellEffectMap.Target_Banishment = [[data "SpellRoll" "not SavingThrow(Ability.Charisma, SourceSpellDC(),,true)"
data "SpellSuccess" "ApplyStatus(BANISHED,100,2);ApplyStatus(SELF,BANISHMENT_OWNER,100,2)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL_BANISHMENT, 100, 0)"]]
SpellEffectMap.Target_Banishment_5 = SpellEffectMap.Target_Banishment
SpellEffectMap.Target_Banishment_6 = SpellEffectMap.Target_Banishment
SpellEffectMap.Target_CharmMonster = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),AdvantageOnCharmPerson(),true)"
data "SpellSuccess" "ApplyStatus(CHARMED,100,600)"]]
SpellEffectMap.Target_CharmMonster_5 = SpellEffectMap.Target_CharmMonster
SpellEffectMap.Target_CharmMonster_6 = SpellEffectMap.Target_CharmMonster
SpellEffectMap.Target_CharmMonster_7 = SpellEffectMap.Target_CharmMonster
SpellEffectMap.Target_CharmMonster_8 = SpellEffectMap.Target_CharmMonster
SpellEffectMap.Target_CharmMonster_9 = SpellEffectMap.Target_CharmMonster
SpellEffectMap.Target_FreedomOfMovement = [[data "SpellProperties" "ApplyStatus(FREEDOM_OF_MOVEMENT,100,-1);RemoveStatus(SG_Stunned)"]]
SpellEffectMap.Target_FreedomOfMovement_5 = SpellEffectMap.Target_FreedomOfMovement
SpellEffectMap.Target_FreedomOfMovement_6 = SpellEffectMap.Target_FreedomOfMovement
SpellEffectMap.Target_Invisibility_Greater = [[data "SpellProperties" "ApplyStatus(GREATER_INVISIBILITY,100,10)"]]
SpellEffectMap.Target_Invisibility_Greater_5 = SpellEffectMap.Target_Invisibility_Greater
SpellEffectMap.Target_Invisibility_Greater_6 = SpellEffectMap.Target_Invisibility_Greater
SpellEffectMap.Target_ResilientSphere = [[data "SpellRoll" "SpellAutoResolveOnAllyWithDisadvantage(Ability.Dexterity, SourceSpellDC(),true)"
data "SpellSuccess" "ApplyStatus(RESILIENT_SPHERE,100,3)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL,100,0)"]]
SpellEffectMap.Target_ResilientSphere_5 = SpellEffectMap.Target_ResilientSphere
SpellEffectMap.Target_ResilientSphere_6 = SpellEffectMap.Target_ResilientSphere
SpellEffectMap.Target_Polymorph = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),,true)"
data "SpellSuccess" "ApplyStatus(POLYMORPH_SHEEP,100,5)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL_POLYMORPHED, 100, 0)"]]
SpellEffectMap.Target_Polymorph_5 = SpellEffectMap.Target_Polymorph
SpellEffectMap.Target_Polymorph_6 = SpellEffectMap.Target_Polymorph
SpellEffectMap.Target_Stoneskin = [[data "SpellProperties" "ApplyStatus(STONESKIN,100,-1)"]]
SpellEffectMap.Target_Stoneskin_5 = SpellEffectMap.Target_Stoneskin
SpellEffectMap.Target_Stoneskin_6 = SpellEffectMap.Target_Stoneskin
SpellEffectMap.Target_Contagion = [[]]
SpellEffectMap.Target_Contagion_BlindingSickness = [[data "SpellProperties" "ApplyStatus(CONTAGION_BLINDING_SICKNESS_1,100,3)"]]
SpellEffectMap.Target_Contagion_BlindingSickness_6 = SpellEffectMap.Target_Contagion_BlindingSickness
SpellEffectMap.Target_Contagion_FilthFever = [[data "SpellProperties" "ApplyStatus(CONTAGION_FILTH_FEVER_1,100,3)"]]
SpellEffectMap.Target_Contagion_FilthFever_6 = SpellEffectMap.Target_Contagion_FilthFever
SpellEffectMap.Target_Contagion_FleshRot = [[data "SpellProperties" "ApplyStatus(CONTAGION_FLESH_ROT_1,100,3)"]]
SpellEffectMap.Target_Contagion_FleshRot_6 = SpellEffectMap.Target_Contagion_FleshRot
SpellEffectMap.Target_Contagion_Mindfire = [[data "SpellProperties" "ApplyStatus(CONTAGION_MINDFIRE_1,100,3)"]]
SpellEffectMap.Target_Contagion_Mindfire_6 = SpellEffectMap.Target_Contagion_Mindfire
SpellEffectMap.Target_Contagion_Seizure = [[data "SpellProperties" "ApplyStatus(CONTAGION_SEIZURE_1,100,3)"]]
SpellEffectMap.Target_Contagion_Seizure_6 = SpellEffectMap.Target_Contagion_Seizure
SpellEffectMap.Target_Contagion_SlimyDoom = [[data "SpellProperties" "ApplyStatus(CONTAGION_SLIMY_DOOM_1,100,3)"]]
SpellEffectMap.Target_Contagion_SlimyDoom_6 = SpellEffectMap.Target_Contagion_SlimyDoom
SpellEffectMap.Target_DominatePerson = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), AdvantageOnCharmed(),true)"
data "SpellSuccess" "ApplyStatus(DOMINATE_PERSON,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL_DOMINATED, 100, 0)"]]
SpellEffectMap.Target_DominatePerson_6 = SpellEffectMap.Target_DominatePerson
SpellEffectMap.Target_HoldMonster = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),,true)"
data "SpellSuccess" "ApplyStatus(HOLD_MONSTER,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_HoldMonster_6 = SpellEffectMap.Target_HoldMonster

return SpellEffectMap