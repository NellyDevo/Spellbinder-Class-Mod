local SpellEffectMap = {}
SpellEffectMap.Target_ChillTouch = [[data "SpellProperties" "ApplyStatus(CHILL_TOUCH,100,1);DealDamage(1d8,Necrotic,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_FireBolt = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);DealDamage(1d10,Fire,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Light = [[data "SpellProperties" "ApplyEquipmentStatus(MainHand,LIGHT,100,-1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_MindSliver = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Intelligence, SourceSpellDC(),false,true)"
data "SpellSuccess" "DealDamage(1d6,Psychic,Magical);ApplyStatus(MIND_SLIVER,100,2)"
data "SpellFail" "IF(HasPassive('PotentCantrip',context.Source)):DealDamage((1d8)/2,Psychic,Magical)"]]
SpellEffectMap.Projectile_PoisonSpray = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)"
data "SpellSuccess" "DealDamage(1d12,Poison,Magical)"
data "SpellFail" "IF(HasPassive('PotentCantrip',context.Source)):DealDamage((1d12)/2,Poison,Magical); IF(not HasPassive('PotentCantrip',context.Source)):ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Projectile_RayOfFrost = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:SurfaceChange(Douse);DealDamage(1d8,Cold,Magical);ApplyStatus(RAY_OF_FROST,100,1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_ShockingGrasp = [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);ApplyStatus(SHOCKING_GRASP,100,1);DealDamage(1d8,Lightning,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Acid =   [[data "SpellProperties" "GROUND:CreateSurface(2,2,Acid);DealDamage(2d8,Acid,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Acid_2 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Acid);DealDamage(3d8,Acid,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Acid_3 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Acid);DealDamage(4d8,Acid,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Acid_4 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Acid);DealDamage(5d8,Acid,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Acid_5 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Acid);DealDamage(6d8,Acid,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Acid_6 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Acid);DealDamage(7d8,Acid,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Acid_7 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Acid);DealDamage(8d8,Acid,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Acid_8 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Acid);DealDamage(9d8,Acid,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Acid_9 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Acid);DealDamage(10d8,Acid,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Cold =   [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:CreateSurface(2,2,WaterFrozen);DealDamage(2d8,Cold,Magical);RemoveStatus(BURNING)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Cold_2 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:CreateSurface(2,2,WaterFrozen);DealDamage(3d8,Cold,Magical);RemoveStatus(BURNING)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Cold_3 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:CreateSurface(2,2,WaterFrozen);DealDamage(4d8,Cold,Magical);RemoveStatus(BURNING)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Cold_4 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:CreateSurface(2,2,WaterFrozen);DealDamage(5d8,Cold,Magical);RemoveStatus(BURNING)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Cold_5 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:CreateSurface(2,2,WaterFrozen);DealDamage(6d8,Cold,Magical);RemoveStatus(BURNING)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Cold_6 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:CreateSurface(2,2,WaterFrozen);DealDamage(7d8,Cold,Magical);RemoveStatus(BURNING)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Cold_7 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:CreateSurface(2,2,WaterFrozen);DealDamage(8d8,Cold,Magical);RemoveStatus(BURNING)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Cold_8 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:CreateSurface(2,2,WaterFrozen);DealDamage(9d8,Cold,Magical);RemoveStatus(BURNING)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Cold_9 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:CreateSurface(2,2,WaterFrozen);DealDamage(10d8,Cold,Magical);RemoveStatus(BURNING)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Fire =   [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);GROUND:CreateSurface(2,2,Fire);DealDamage(2d8,Fire,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Fire_2 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);GROUND:CreateSurface(2,2,Fire);DealDamage(3d8,Fire,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Fire_3 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);GROUND:CreateSurface(2,2,Fire);DealDamage(4d8,Fire,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Fire_4 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);GROUND:CreateSurface(2,2,Fire);DealDamage(5d8,Fire,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Fire_5 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);GROUND:CreateSurface(2,2,Fire);DealDamage(6d8,Fire,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Fire_6 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);GROUND:CreateSurface(2,2,Fire);DealDamage(7d8,Fire,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Fire_7 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);GROUND:CreateSurface(2,2,Fire);DealDamage(8d8,Fire,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Fire_8 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);GROUND:CreateSurface(2,2,Fire);DealDamage(9d8,Fire,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Fire_9 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);GROUND:CreateSurface(2,2,Fire);DealDamage(10d8,Fire,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Lightning =   [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);GROUND:CreateSurface(2,2,WaterElectrified);DealDamage(2d8,Lightning,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Lightning_2 = [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);GROUND:CreateSurface(2,2,WaterElectrified);DealDamage(3d8,Lightning,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Lightning_3 = [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);GROUND:CreateSurface(2,2,WaterElectrified);DealDamage(4d8,Lightning,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Lightning_4 = [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);GROUND:CreateSurface(2,2,WaterElectrified);DealDamage(5d8,Lightning,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Lightning_5 = [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);GROUND:CreateSurface(2,2,WaterElectrified);DealDamage(6d8,Lightning,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Lightning_6 = [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);GROUND:CreateSurface(2,2,WaterElectrified);DealDamage(7d8,Lightning,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Lightning_7 = [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);GROUND:CreateSurface(2,2,WaterElectrified);DealDamage(8d8,Lightning,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Lightning_8 = [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);GROUND:CreateSurface(2,2,WaterElectrified);DealDamage(9d8,Lightning,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Lightning_9 = [[data "SpellProperties" "GROUND:SurfaceChange(Electrify);GROUND:CreateSurface(2,2,WaterElectrified);DealDamage(10d8,Lightning,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Poison =   [[data "SpellProperties" "GROUND:CreateSurface(2,2,Poison);DealDamage(2d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Poison_2 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Poison);DealDamage(3d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Poison_3 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Poison);DealDamage(4d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Poison_4 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Poison);DealDamage(5d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Poison_5 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Poison);DealDamage(6d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Poison_6 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Poison);DealDamage(7d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Poison_7 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Poison);DealDamage(8d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Poison_8 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Poison);DealDamage(9d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Poison_9 = [[data "SpellProperties" "GROUND:CreateSurface(2,2,Poison);DealDamage(10d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Thunder =   [[data "SpellProperties" "DealDamage(3d8,Thunder,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Thunder_2 = [[data "SpellProperties" "DealDamage(4d8,Thunder,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Thunder_3 = [[data "SpellProperties" "DealDamage(5d8,Thunder,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Thunder_4 = [[data "SpellProperties" "DealDamage(6d8,Thunder,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Thunder_5 = [[data "SpellProperties" "DealDamage(7d8,Thunder,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Thunder_6 = [[data "SpellProperties" "DealDamage(8d8,Thunder,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Thunder_7 = [[data "SpellProperties" "DealDamage(9d8,Thunder,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Thunder_8 = [[data "SpellProperties" "DealDamage(10d8,Thunder,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ChromaticOrb_Thunder_9 = [[data "SpellProperties" "DealDamage(11d8,Thunder,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Jump = [[data "SpellProperties" "ApplyStatus(LONG_JUMP,100,10)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Jump_2 = SpellEffectMap.Target_Jump
SpellEffectMap.Target_Jump_3 = SpellEffectMap.Target_Jump
SpellEffectMap.Target_Jump_4 = SpellEffectMap.Target_Jump
SpellEffectMap.Target_Jump_5 = SpellEffectMap.Target_Jump
SpellEffectMap.Target_Jump_6 = SpellEffectMap.Target_Jump
SpellEffectMap.Target_Jump_7 = SpellEffectMap.Target_Jump
SpellEffectMap.Target_Jump_8 = SpellEffectMap.Target_Jump
SpellEffectMap.Target_Jump_9 = SpellEffectMap.Target_Jump
SpellEffectMap.Target_Longstrider = [[data "SpellProperties" "ApplyStatus(LONGSTRIDER,100,-1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Longstrider_2 = SpellEffectMap.Target_Longstrider
SpellEffectMap.Target_Longstrider_3 = SpellEffectMap.Target_Longstrider
SpellEffectMap.Target_Longstrider_4 = SpellEffectMap.Target_Longstrider
SpellEffectMap.Target_Longstrider_5 = SpellEffectMap.Target_Longstrider
SpellEffectMap.Target_Longstrider_6 = SpellEffectMap.Target_Longstrider
SpellEffectMap.Target_Longstrider_7 = SpellEffectMap.Target_Longstrider
SpellEffectMap.Target_Longstrider_8 = SpellEffectMap.Target_Longstrider
SpellEffectMap.Target_Longstrider_9 = SpellEffectMap.Target_Longstrider
SpellEffectMap.Target_MageArmor = [[data "SpellProperties" "ApplyStatus(MAGE_ARMOR,100,-1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_MageArmor_2 = SpellEffectMap.Target_MageArmor
SpellEffectMap.Target_MageArmor_3 = SpellEffectMap.Target_MageArmor
SpellEffectMap.Target_MageArmor_4 = SpellEffectMap.Target_MageArmor
SpellEffectMap.Target_MageArmor_5 = SpellEffectMap.Target_MageArmor
SpellEffectMap.Target_MageArmor_6 = SpellEffectMap.Target_MageArmor
SpellEffectMap.Projectile_MagicMissile = [[data "SpellProperties" "DealDamage(1d4+1,Force,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_MagicMissile_2 = SpellEffectMap.Projectile_MagicMissile
SpellEffectMap.Projectile_MagicMissile_3 = SpellEffectMap.Projectile_MagicMissile
SpellEffectMap.Projectile_MagicMissile_4 = SpellEffectMap.Projectile_MagicMissile
SpellEffectMap.Projectile_MagicMissile_5 = SpellEffectMap.Projectile_MagicMissile
SpellEffectMap.Projectile_MagicMissile_6 = SpellEffectMap.Projectile_MagicMissile
SpellEffectMap.Projectile_MagicMissile_7 = SpellEffectMap.Projectile_MagicMissile
SpellEffectMap.Projectile_MagicMissile_8 = SpellEffectMap.Projectile_MagicMissile
SpellEffectMap.Projectile_MagicMissile_9 = SpellEffectMap.Projectile_MagicMissile
SpellEffectMap.Projectile_RayOfSickness =   [[data "SpellProperties" "IF(not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)):ApplyStatus(POISONED,100,2);DealDamage(2d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_RayOfSickness_2 = [[data "SpellProperties" "IF(not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)):ApplyStatus(POISONED,100,2);DealDamage(3d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_RayOfSickness_3 = [[data "SpellProperties" "IF(not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)):ApplyStatus(POISONED,100,2);DealDamage(4d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_RayOfSickness_4 = [[data "SpellProperties" "IF(not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)):ApplyStatus(POISONED,100,2);DealDamage(5d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_RayOfSickness_5 = [[data "SpellProperties" "IF(not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)):ApplyStatus(POISONED,100,2);DealDamage(6d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_RayOfSickness_6 = [[data "SpellProperties" "IF(not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)):ApplyStatus(POISONED,100,2);DealDamage(7d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_RayOfSickness_7 = [[data "SpellProperties" "IF(not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)):ApplyStatus(POISONED,100,2);DealDamage(8d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_RayOfSickness_8 = [[data "SpellProperties" "IF(not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)):ApplyStatus(POISONED,100,2);DealDamage(9d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_RayOfSickness_9 = [[data "SpellProperties" "IF(not SavingThrow(Ability.Constitution, SourceSpellDC(),AdvantageOnPoisoned(),true)):ApplyStatus(POISONED,100,2);DealDamage(10d8,Poison,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_HideousLaughter =   [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),false,true)"
data "SpellSuccess" "ApplyStatus(HIDEOUS_LAUGHTER,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL_DOMINATED,100,0)"]]
SpellEffectMap.Target_HideousLaughter_2 = SpellEffectMap.Target_HideousLaughter
SpellEffectMap.Target_HideousLaughter_3 = SpellEffectMap.Target_HideousLaughter
SpellEffectMap.Target_HideousLaughter_4 = SpellEffectMap.Target_HideousLaughter
SpellEffectMap.Target_HideousLaughter_5 = SpellEffectMap.Target_HideousLaughter
SpellEffectMap.Target_HideousLaughter_6 = SpellEffectMap.Target_HideousLaughter
SpellEffectMap.Target_HideousLaughter_7 = SpellEffectMap.Target_HideousLaughter
SpellEffectMap.Target_HideousLaughter_8 = SpellEffectMap.Target_HideousLaughter
SpellEffectMap.Target_HideousLaughter_9 = SpellEffectMap.Target_HideousLaughter
SpellEffectMap.Target_Blindness = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(),false,true)"
data "SpellSuccess" "ApplyStatus(BLINDNESS,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_Blindness_3 = SpellEffectMap.Target_Blindness
SpellEffectMap.Target_Blindness_4 = SpellEffectMap.Target_Blindness
SpellEffectMap.Target_Blindness_5 = SpellEffectMap.Target_Blindness
SpellEffectMap.Target_Blindness_6 = SpellEffectMap.Target_Blindness
SpellEffectMap.Target_Blindness_7 = SpellEffectMap.Target_Blindness
SpellEffectMap.Target_Blindness_8 = SpellEffectMap.Target_Blindness
SpellEffectMap.Target_Blindness_9 = SpellEffectMap.Target_Blindness
SpellEffectMap.Target_CrownOfMadness = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), AdvantageOnCharmed(),true)"
data "SpellSuccess" "ApplyStatus(CROWN_OF_MADNESS,100,3)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL_CHARM,100,0)"]]
SpellEffectMap.Target_CrownOfMadness_3 = SpellEffectMap.Target_CrownOfMadness
SpellEffectMap.Target_CrownOfMadness_4 = SpellEffectMap.Target_CrownOfMadness
SpellEffectMap.Target_CrownOfMadness_5 = SpellEffectMap.Target_CrownOfMadness
SpellEffectMap.Target_CrownOfMadness_6 = SpellEffectMap.Target_CrownOfMadness
SpellEffectMap.Target_CrownOfMadness_7 = SpellEffectMap.Target_CrownOfMadness
SpellEffectMap.Target_CrownOfMadness_8 = SpellEffectMap.Target_CrownOfMadness
SpellEffectMap.Target_CrownOfMadness_9 = SpellEffectMap.Target_CrownOfMadness
SpellEffectMap.Target_Darkvision = [[data "SpellProperties" "ApplyStatus(DARKVISION,100,-1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Darkvision_3 = SpellEffectMap.Target_Darkvision
SpellEffectMap.Target_Darkvision_4 = SpellEffectMap.Target_Darkvision
SpellEffectMap.Target_Darkvision_5 = SpellEffectMap.Target_Darkvision
SpellEffectMap.Target_Darkvision_6 = SpellEffectMap.Target_Darkvision
SpellEffectMap.Target_Darkvision_7 = SpellEffectMap.Target_Darkvision
SpellEffectMap.Target_Darkvision_8 = SpellEffectMap.Target_Darkvision
SpellEffectMap.Target_Darkvision_9 = SpellEffectMap.Target_Darkvision
SpellEffectMap.Target_HoldPerson = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),false,true)"
data "SpellSuccess" "ApplyStatus(HOLD_PERSON,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL,100,0)"]]
SpellEffectMap.Target_HoldPerson_3 = SpellEffectMap.Target_HoldPerson
SpellEffectMap.Target_HoldPerson_4 = SpellEffectMap.Target_HoldPerson
SpellEffectMap.Target_HoldPerson_5 = SpellEffectMap.Target_HoldPerson
SpellEffectMap.Target_HoldPerson_6 = SpellEffectMap.Target_HoldPerson
SpellEffectMap.Target_HoldPerson_7 = SpellEffectMap.Target_HoldPerson
SpellEffectMap.Target_HoldPerson_8 = SpellEffectMap.Target_HoldPerson
SpellEffectMap.Target_HoldPerson_9 = SpellEffectMap.Target_HoldPerson
SpellEffectMap.Target_Invisibility = [[data "SpellProperties" "ApplyStatus(INVISIBILITY,100,10)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Invisibility_3 = SpellEffectMap.Target_Invisibility
SpellEffectMap.Target_Invisibility_4 = SpellEffectMap.Target_Invisibility
SpellEffectMap.Target_Invisibility_5 = SpellEffectMap.Target_Invisibility
SpellEffectMap.Target_Invisibility_6 = SpellEffectMap.Target_Invisibility
SpellEffectMap.Target_Invisibility_7 = SpellEffectMap.Target_Invisibility
SpellEffectMap.Target_Invisibility_8 = SpellEffectMap.Target_Invisibility
SpellEffectMap.Target_Invisibility_9 = SpellEffectMap.Target_Invisibility
SpellEffectMap.Target_Levitate = [[data "SpellProperties" ""
data "SpellRoll" "SpellAutoResolveOnAllyWithDisadvantage(Ability.Constitution, SourceSpellDC(), true)"
data "SpellSuccess" "ApplyStatus(LEVITATE,100,100)"
data "SpellFail" ""]]
SpellEffectMap.Target_Levitate_3 = SpellEffectMap.Target_Levitate
SpellEffectMap.Target_Levitate_4 = SpellEffectMap.Target_Levitate
SpellEffectMap.Target_Levitate_5 = SpellEffectMap.Target_Levitate
SpellEffectMap.Target_Levitate_6 = SpellEffectMap.Target_Levitate
SpellEffectMap.Target_Levitate_7 = SpellEffectMap.Target_Levitate
SpellEffectMap.Target_Levitate_8 = SpellEffectMap.Target_Levitate
SpellEffectMap.Target_Levitate_9 = SpellEffectMap.Target_Levitate
SpellEffectMap.Target_MagicWeapon = [[data "SpellProperties" "ApplyEquipmentStatus(MainHand,MAGIC_WEAPON,100,-1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_MagicWeapon_3 = SpellEffectMap.Target_MagicWeapon
SpellEffectMap.Target_MagicWeapon_4 = [[data "SpellProperties" "ApplyEquipmentStatus(MainHand,MAGIC_WEAPON_4,100,-1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_MagicWeapon_5 = SpellEffectMap.Target_MagicWeapon_4
SpellEffectMap.Target_MagicWeapon_6 = [[data "SpellProperties" "ApplyEquipmentStatus(MainHand,MAGIC_WEAPON_6,100,-1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_MagicWeapon_7 = SpellEffectMap.Target_MagicWeapon_6
SpellEffectMap.Target_MagicWeapon_8 = SpellEffectMap.Target_MagicWeapon_6
SpellEffectMap.Target_MagicWeapon_9 = SpellEffectMap.Target_MagicWeapon_6
SpellEffectMap.Target_PhantasmalForce = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Intelligence, SourceSpellDC(),false,true)"
data "SpellSuccess" "ApplyStatus(PHANTASMAL_FORCE,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL,100,0)"]]
SpellEffectMap.Target_PhantasmalForce_3 = SpellEffectMap.Target_PhantasmalForce
SpellEffectMap.Target_PhantasmalForce_4 = SpellEffectMap.Target_PhantasmalForce
SpellEffectMap.Target_PhantasmalForce_5 = SpellEffectMap.Target_PhantasmalForce
SpellEffectMap.Target_PhantasmalForce_6 = SpellEffectMap.Target_PhantasmalForce
SpellEffectMap.Target_PhantasmalForce_7 = SpellEffectMap.Target_PhantasmalForce
SpellEffectMap.Target_PhantasmalForce_8 = SpellEffectMap.Target_PhantasmalForce
SpellEffectMap.Target_PhantasmalForce_9 = SpellEffectMap.Target_PhantasmalForce
SpellEffectMap.Projectile_RayOfEnfeeblement = [[data "SpellProperties" "ApplyStatus(RAY_OF_ENFEEBLEMENT,100,10)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_RayOfEnfeeblement_3 = SpellEffectMap.Projectile_RayOfEnfeeblement
SpellEffectMap.Projectile_RayOfEnfeeblement_4 = SpellEffectMap.Projectile_RayOfEnfeeblement
SpellEffectMap.Projectile_RayOfEnfeeblement_5 = SpellEffectMap.Projectile_RayOfEnfeeblement
SpellEffectMap.Projectile_RayOfEnfeeblement_6 = SpellEffectMap.Projectile_RayOfEnfeeblement
SpellEffectMap.Projectile_RayOfEnfeeblement_7 = SpellEffectMap.Projectile_RayOfEnfeeblement
SpellEffectMap.Projectile_RayOfEnfeeblement_8 = SpellEffectMap.Projectile_RayOfEnfeeblement
SpellEffectMap.Projectile_RayOfEnfeeblement_9 = SpellEffectMap.Projectile_RayOfEnfeeblement
SpellEffectMap.Projectile_ScorchingRay = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);DealDamage(2d6,Fire,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_ScorchingRay_3 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Projectile_ScorchingRay_4 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Projectile_ScorchingRay_5 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Projectile_ScorchingRay_6 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Projectile_ScorchingRay_7 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Projectile_ScorchingRay_8 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Projectile_ScorchingRay_9 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Projectile_ScorchingRay_10 = SpellEffectMap.Projectile_ScorchingRay
SpellEffectMap.Target_Suggestion = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),false,true)"
data "SpellSuccess" "ApplyStatus(SUGGESTION,100,600)"
data "SpellFail" ""]]
SpellEffectMap.Target_Suggestion_3 = SpellEffectMap.Target_Suggestion
SpellEffectMap.Target_Suggestion_4 = SpellEffectMap.Target_Suggestion
SpellEffectMap.Target_Suggestion_5 = SpellEffectMap.Target_Suggestion
SpellEffectMap.Target_Suggestion_6 = SpellEffectMap.Target_Suggestion
SpellEffectMap.Target_Suggestion_7 = SpellEffectMap.Target_Suggestion
SpellEffectMap.Target_Suggestion_8 = SpellEffectMap.Target_Suggestion
SpellEffectMap.Target_Suggestion_9 = SpellEffectMap.Target_Suggestion
SpellEffectMap.Target_DispelMagic = [[data "SpellProperties" ""
data "SpellRoll" "TryDispelMagicHigherLevel(3)"
data "SpellSuccess" "ApplyStatus(DISPEL_MAGIC,100,0)"
data "SpellFail" ""]]
SpellEffectMap.Target_DispelMagic_4 = SpellEffectMap.Target_DispelMagic
SpellEffectMap.Target_DispelMagic_5 = SpellEffectMap.Target_DispelMagic
SpellEffectMap.Target_DispelMagic_6 = SpellEffectMap.Target_DispelMagic
SpellEffectMap.Target_DispelMagic_7 = SpellEffectMap.Target_DispelMagic
SpellEffectMap.Target_DispelMagic_8 = SpellEffectMap.Target_DispelMagic
SpellEffectMap.Target_DispelMagic_9 = SpellEffectMap.Target_DispelMagic
SpellEffectMap.Target_Fly = [[data "SpellProperties" "ApplyStatus(FLY,100,10)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Fly_4 = SpellEffectMap.Target_Fly
SpellEffectMap.Target_Fly_5 = SpellEffectMap.Target_Fly
SpellEffectMap.Target_Fly_6 = SpellEffectMap.Target_Fly
SpellEffectMap.Target_Fly_7 = SpellEffectMap.Target_Fly
SpellEffectMap.Target_Fly_8 = SpellEffectMap.Target_Fly
SpellEffectMap.Target_Fly_9 = SpellEffectMap.Target_Fly
SpellEffectMap.Target_Haste = [[data "SpellProperties" "ApplyStatus(HASTE,100,10)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Haste_4 = SpellEffectMap.Target_Haste
SpellEffectMap.Target_Haste_5 = SpellEffectMap.Target_Haste
SpellEffectMap.Target_Haste_6 = SpellEffectMap.Target_Haste
SpellEffectMap.Target_Haste_7 = SpellEffectMap.Target_Haste
SpellEffectMap.Target_Haste_8 = SpellEffectMap.Target_Haste
SpellEffectMap.Target_Haste_9 = SpellEffectMap.Target_Haste
SpellEffectMap.Target_RemoveCurse = [[data "SpellProperties" "RemoveStatus(SG_Cursed)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_RemoveCurse_4 = SpellEffectMap.Target_RemoveCurse
SpellEffectMap.Target_RemoveCurse_5 = SpellEffectMap.Target_RemoveCurse
SpellEffectMap.Target_RemoveCurse_6 = SpellEffectMap.Target_RemoveCurse
SpellEffectMap.Target_RemoveCurse_7 = SpellEffectMap.Target_RemoveCurse
SpellEffectMap.Target_RemoveCurse_8 = SpellEffectMap.Target_RemoveCurse
SpellEffectMap.Target_RemoveCurse_9 = SpellEffectMap.Target_RemoveCurse
SpellEffectMap.Target_Slow = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),false,true)"
data "SpellSuccess" "ApplyStatus(SLOW,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL,100,0)"]]
SpellEffectMap.Target_Slow_4 = SpellEffectMap.Target_Slow
SpellEffectMap.Target_Slow_5 = SpellEffectMap.Target_Slow
SpellEffectMap.Target_Slow_6 = SpellEffectMap.Target_Slow
SpellEffectMap.Target_Slow_7 = SpellEffectMap.Target_Slow
SpellEffectMap.Target_Slow_8 = SpellEffectMap.Target_Slow
SpellEffectMap.Target_Slow_9 = SpellEffectMap.Target_Slow
SpellEffectMap.Target_Banishment = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Charisma, SourceSpellDC(),false,true)"
data "SpellSuccess" "ApplyStatus(BANISHED,100,2);ApplyStatus(SELF,BANISHMENT_OWNER,100,2)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL_BANISHMENT, 100, 0)"]]
SpellEffectMap.Target_Banishment_5 = SpellEffectMap.Target_Banishment
SpellEffectMap.Target_Banishment_6 = SpellEffectMap.Target_Banishment
SpellEffectMap.Target_Banishment_7 = SpellEffectMap.Target_Banishment
SpellEffectMap.Target_Banishment_8 = SpellEffectMap.Target_Banishment
SpellEffectMap.Target_Banishment_9 = SpellEffectMap.Target_Banishment
SpellEffectMap.Target_CharmMonster = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),AdvantageOnCharmPerson(),true)"
data "SpellSuccess" "ApplyStatus(CHARMED,100,600)"
data "SpellFail" ""]]
SpellEffectMap.Target_CharmMonster_5 = SpellEffectMap.Target_CharmMonster
SpellEffectMap.Target_CharmMonster_6 = SpellEffectMap.Target_CharmMonster
SpellEffectMap.Target_CharmMonster_7 = SpellEffectMap.Target_CharmMonster
SpellEffectMap.Target_CharmMonster_8 = SpellEffectMap.Target_CharmMonster
SpellEffectMap.Target_CharmMonster_9 = SpellEffectMap.Target_CharmMonster
SpellEffectMap.Target_FreedomOfMovement = [[data "SpellProperties" "ApplyStatus(FREEDOM_OF_MOVEMENT,100,-1);RemoveStatus(SG_Stunned)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_FreedomOfMovement_5 = SpellEffectMap.Target_FreedomOfMovement
SpellEffectMap.Target_FreedomOfMovement_6 = SpellEffectMap.Target_FreedomOfMovement
SpellEffectMap.Target_FreedomOfMovement_7 = SpellEffectMap.Target_FreedomOfMovement
SpellEffectMap.Target_FreedomOfMovement_8 = SpellEffectMap.Target_FreedomOfMovement
SpellEffectMap.Target_FreedomOfMovement_9 = SpellEffectMap.Target_FreedomOfMovement
SpellEffectMap.Target_Invisibility_Greater = [[data "SpellProperties" "ApplyStatus(GREATER_INVISIBILITY,100,10)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Invisibility_Greater_5 = SpellEffectMap.Target_Invisibility_Greater
SpellEffectMap.Target_Invisibility_Greater_6 = SpellEffectMap.Target_Invisibility_Greater
SpellEffectMap.Target_Invisibility_Greater_7 = SpellEffectMap.Target_Invisibility_Greater
SpellEffectMap.Target_Invisibility_Greater_8 = SpellEffectMap.Target_Invisibility_Greater
SpellEffectMap.Target_Invisibility_Greater_9 = SpellEffectMap.Target_Invisibility_Greater
SpellEffectMap.Target_ResilientSphere = [[data "SpellProperties" ""
data "SpellRoll" "SpellAutoResolveOnAllyWithDisadvantage(Ability.Dexterity, SourceSpellDC(),true)"
data "SpellSuccess" "ApplyStatus(RESILIENT_SPHERE,100,3)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL,100,0)"]]
SpellEffectMap.Target_ResilientSphere_5 = SpellEffectMap.Target_ResilientSphere
SpellEffectMap.Target_ResilientSphere_6 = SpellEffectMap.Target_ResilientSphere
SpellEffectMap.Target_ResilientSphere_7 = SpellEffectMap.Target_ResilientSphere
SpellEffectMap.Target_ResilientSphere_8 = SpellEffectMap.Target_ResilientSphere
SpellEffectMap.Target_ResilientSphere_9 = SpellEffectMap.Target_ResilientSphere
SpellEffectMap.Target_Polymorph = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),false,true)"
data "SpellSuccess" "ApplyStatus(POLYMORPH_SHEEP,100,5)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL_POLYMORPHED, 100, 0)"]]
SpellEffectMap.Target_Polymorph_5 = SpellEffectMap.Target_Polymorph
SpellEffectMap.Target_Polymorph_6 = SpellEffectMap.Target_Polymorph
SpellEffectMap.Target_Polymorph_7 = SpellEffectMap.Target_Polymorph
SpellEffectMap.Target_Polymorph_8 = SpellEffectMap.Target_Polymorph
SpellEffectMap.Target_Polymorph_9 = SpellEffectMap.Target_Polymorph
SpellEffectMap.Target_Stoneskin = [[data "SpellProperties" "ApplyStatus(STONESKIN,100,-1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Stoneskin_5 = SpellEffectMap.Target_Stoneskin
SpellEffectMap.Target_Stoneskin_6 = SpellEffectMap.Target_Stoneskin
SpellEffectMap.Target_Stoneskin_7 = SpellEffectMap.Target_Stoneskin
SpellEffectMap.Target_Stoneskin_8 = SpellEffectMap.Target_Stoneskin
SpellEffectMap.Target_Stoneskin_9 = SpellEffectMap.Target_Stoneskin
SpellEffectMap.Target_Contagion_BlindingSickness = [[data "SpellProperties" "ApplyStatus(CONTAGION_BLINDING_SICKNESS_1,100,3)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Contagion_BlindingSickness_6 = SpellEffectMap.Target_Contagion_BlindingSickness
SpellEffectMap.Target_Contagion_BlindingSickness_7 = SpellEffectMap.Target_Contagion_BlindingSickness
SpellEffectMap.Target_Contagion_BlindingSickness_8 = SpellEffectMap.Target_Contagion_BlindingSickness
SpellEffectMap.Target_Contagion_BlindingSickness_9 = SpellEffectMap.Target_Contagion_BlindingSickness
SpellEffectMap.Target_Contagion_FilthFever = [[data "SpellProperties" "ApplyStatus(CONTAGION_FILTH_FEVER_1,100,3)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Contagion_FilthFever_6 = SpellEffectMap.Target_Contagion_FilthFever
SpellEffectMap.Target_Contagion_FilthFever_7 = SpellEffectMap.Target_Contagion_FilthFever
SpellEffectMap.Target_Contagion_FilthFever_8 = SpellEffectMap.Target_Contagion_FilthFever
SpellEffectMap.Target_Contagion_FilthFever_9 = SpellEffectMap.Target_Contagion_FilthFever
SpellEffectMap.Target_Contagion_FleshRot = [[data "SpellProperties" "ApplyStatus(CONTAGION_FLESH_ROT_1,100,3)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Contagion_FleshRot_6 = SpellEffectMap.Target_Contagion_FleshRot
SpellEffectMap.Target_Contagion_FleshRot_7 = SpellEffectMap.Target_Contagion_FleshRot
SpellEffectMap.Target_Contagion_FleshRot_8 = SpellEffectMap.Target_Contagion_FleshRot
SpellEffectMap.Target_Contagion_FleshRot_9 = SpellEffectMap.Target_Contagion_FleshRot
SpellEffectMap.Target_Contagion_Mindfire = [[data "SpellProperties" "ApplyStatus(CONTAGION_MINDFIRE_1,100,3)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Contagion_Mindfire_6 = SpellEffectMap.Target_Contagion_Mindfire
SpellEffectMap.Target_Contagion_Mindfire_7 = SpellEffectMap.Target_Contagion_Mindfire
SpellEffectMap.Target_Contagion_Mindfire_8 = SpellEffectMap.Target_Contagion_Mindfire
SpellEffectMap.Target_Contagion_Mindfire_9 = SpellEffectMap.Target_Contagion_Mindfire
SpellEffectMap.Target_Contagion_Seizure = [[data "SpellProperties" "ApplyStatus(CONTAGION_SEIZURE_1,100,3)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Contagion_Seizure_6 = SpellEffectMap.Target_Contagion_Seizure
SpellEffectMap.Target_Contagion_Seizure_7 = SpellEffectMap.Target_Contagion_Seizure
SpellEffectMap.Target_Contagion_Seizure_8 = SpellEffectMap.Target_Contagion_Seizure
SpellEffectMap.Target_Contagion_Seizure_9 = SpellEffectMap.Target_Contagion_Seizure
SpellEffectMap.Target_Contagion_SlimyDoom = [[data "SpellProperties" "ApplyStatus(CONTAGION_SLIMY_DOOM_1,100,3)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Contagion_SlimyDoom_6 = SpellEffectMap.Target_Contagion_SlimyDoom
SpellEffectMap.Target_Contagion_SlimyDoom_7 = SpellEffectMap.Target_Contagion_SlimyDoom
SpellEffectMap.Target_Contagion_SlimyDoom_8 = SpellEffectMap.Target_Contagion_SlimyDoom
SpellEffectMap.Target_Contagion_SlimyDoom_9 = SpellEffectMap.Target_Contagion_SlimyDoom
SpellEffectMap.Target_DominatePerson = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), AdvantageOnCharmed(),true)"
data "SpellSuccess" "ApplyStatus(DOMINATE_PERSON,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL_DOMINATED, 100, 0)"]]
SpellEffectMap.Target_DominatePerson_6 = SpellEffectMap.Target_DominatePerson
SpellEffectMap.Target_DominatePerson_7 = SpellEffectMap.Target_DominatePerson
SpellEffectMap.Target_DominatePerson_8 = SpellEffectMap.Target_DominatePerson
SpellEffectMap.Target_DominatePerson_9 = SpellEffectMap.Target_DominatePerson
SpellEffectMap.Target_HoldMonster = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),false,true)"
data "SpellSuccess" "ApplyStatus(HOLD_MONSTER,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_HoldMonster_6 = SpellEffectMap.Target_HoldMonster
SpellEffectMap.Target_HoldMonster_7 = SpellEffectMap.Target_HoldMonster
SpellEffectMap.Target_HoldMonster_8 = SpellEffectMap.Target_HoldMonster
SpellEffectMap.Target_HoldMonster_9 = SpellEffectMap.Target_HoldMonster

SpellEffectMap.Target_Prestidigitation_Fire = [[data "SpellProperties" "TARGET:IF(Character() and (HasStatus('DIPPED_FIRE',GetActiveWeapon()) or HasStatus('BURNING',GetActiveWeapon()))):ApplyEquipmentStatus(MainHand,BURNING_REMOVAL,100,0)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Prestidigitation_Clean = [[data "SpellProperties" "TARGET:IF(Character()):ApplyStatus(PRESTIDIGITATION,100,1);TARGET:IF(Character()):ApplyStatus(SOAP_WASH,100,1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_EnhanceAbility_BearsEndurance = [[data "SpellProperties" "ApplyStatus(BEARS_ENDURANCE, 100, -1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_EnhanceAbility_BearsEndurance_3 = SpellEffectMap.Target_EnhanceAbility_BearsEndurance
SpellEffectMap.Target_EnhanceAbility_BearsEndurance_4 = SpellEffectMap.Target_EnhanceAbility_BearsEndurance
SpellEffectMap.Target_EnhanceAbility_BearsEndurance_5 = SpellEffectMap.Target_EnhanceAbility_BearsEndurance
SpellEffectMap.Target_EnhanceAbility_BearsEndurance_6 = SpellEffectMap.Target_EnhanceAbility_BearsEndurance
SpellEffectMap.Target_EnhanceAbility_BearsEndurance_7 = SpellEffectMap.Target_EnhanceAbility_BearsEndurance
SpellEffectMap.Target_EnhanceAbility_BearsEndurance_8 = SpellEffectMap.Target_EnhanceAbility_BearsEndurance
SpellEffectMap.Target_EnhanceAbility_BearsEndurance_9 = SpellEffectMap.Target_EnhanceAbility_BearsEndurance
SpellEffectMap.Target_EnhanceAbility_BullsStrength = [[data "SpellProperties" "ApplyStatus(BULLS_STRENGTH, 100, -1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_EnhanceAbility_BullsStrength_3 = SpellEffectMap.Target_EnhanceAbility_BullsStrength
SpellEffectMap.Target_EnhanceAbility_BullsStrength_4 = SpellEffectMap.Target_EnhanceAbility_BullsStrength
SpellEffectMap.Target_EnhanceAbility_BullsStrength_5 = SpellEffectMap.Target_EnhanceAbility_BullsStrength
SpellEffectMap.Target_EnhanceAbility_BullsStrength_6 = SpellEffectMap.Target_EnhanceAbility_BullsStrength
SpellEffectMap.Target_EnhanceAbility_BullsStrength_7 = SpellEffectMap.Target_EnhanceAbility_BullsStrength
SpellEffectMap.Target_EnhanceAbility_BullsStrength_8 = SpellEffectMap.Target_EnhanceAbility_BullsStrength
SpellEffectMap.Target_EnhanceAbility_BullsStrength_9 = SpellEffectMap.Target_EnhanceAbility_BullsStrength
SpellEffectMap.Target_EnhanceAbility_CatsGrace = [[data "SpellProperties" "ApplyStatus(CATS_GRACE, 100, -1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_EnhanceAbility_CatsGrace_3 = SpellEffectMap.Target_EnhanceAbility_CatsGrace
SpellEffectMap.Target_EnhanceAbility_CatsGrace_4 = SpellEffectMap.Target_EnhanceAbility_CatsGrace
SpellEffectMap.Target_EnhanceAbility_CatsGrace_5 = SpellEffectMap.Target_EnhanceAbility_CatsGrace
SpellEffectMap.Target_EnhanceAbility_CatsGrace_6 = SpellEffectMap.Target_EnhanceAbility_CatsGrace
SpellEffectMap.Target_EnhanceAbility_CatsGrace_7 = SpellEffectMap.Target_EnhanceAbility_CatsGrace
SpellEffectMap.Target_EnhanceAbility_CatsGrace_8 = SpellEffectMap.Target_EnhanceAbility_CatsGrace
SpellEffectMap.Target_EnhanceAbility_CatsGrace_9 = SpellEffectMap.Target_EnhanceAbility_CatsGrace
SpellEffectMap.Target_EnhanceAbility_EaglesSplendor = [[data "SpellProperties" "ApplyStatus(EAGLES_SPLENDOR, 100, -1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_EnhanceAbility_EaglesSplendor_3 = SpellEffectMap.Target_EnhanceAbility_EaglesSplendor
SpellEffectMap.Target_EnhanceAbility_EaglesSplendor_4 = SpellEffectMap.Target_EnhanceAbility_EaglesSplendor
SpellEffectMap.Target_EnhanceAbility_EaglesSplendor_5 = SpellEffectMap.Target_EnhanceAbility_EaglesSplendor
SpellEffectMap.Target_EnhanceAbility_EaglesSplendor_6 = SpellEffectMap.Target_EnhanceAbility_EaglesSplendor
SpellEffectMap.Target_EnhanceAbility_EaglesSplendor_7 = SpellEffectMap.Target_EnhanceAbility_EaglesSplendor
SpellEffectMap.Target_EnhanceAbility_EaglesSplendor_8 = SpellEffectMap.Target_EnhanceAbility_EaglesSplendor
SpellEffectMap.Target_EnhanceAbility_EaglesSplendor_9 = SpellEffectMap.Target_EnhanceAbility_EaglesSplendor
SpellEffectMap.Target_EnhanceAbility_FoxsCunning = [[data "SpellProperties" "ApplyStatus(FOXS_CUNNING, 100, -1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_EnhanceAbility_FoxsCunning_3 = SpellEffectMap.Target_EnhanceAbility_FoxsCunning
SpellEffectMap.Target_EnhanceAbility_FoxsCunning_4 = SpellEffectMap.Target_EnhanceAbility_FoxsCunning
SpellEffectMap.Target_EnhanceAbility_FoxsCunning_5 = SpellEffectMap.Target_EnhanceAbility_FoxsCunning
SpellEffectMap.Target_EnhanceAbility_FoxsCunning_6 = SpellEffectMap.Target_EnhanceAbility_FoxsCunning
SpellEffectMap.Target_EnhanceAbility_FoxsCunning_7 = SpellEffectMap.Target_EnhanceAbility_FoxsCunning
SpellEffectMap.Target_EnhanceAbility_FoxsCunning_8 = SpellEffectMap.Target_EnhanceAbility_FoxsCunning
SpellEffectMap.Target_EnhanceAbility_FoxsCunning_9 = SpellEffectMap.Target_EnhanceAbility_FoxsCunning
SpellEffectMap.Target_EnhanceAbility_OwlsWisdom = [[data "SpellProperties" "ApplyStatus(OWLS_WISDOM, 100, -1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_EnhanceAbility_OwlsWisdom_3 = SpellEffectMap.Target_EnhanceAbility_OwlsWisdom
SpellEffectMap.Target_EnhanceAbility_OwlsWisdom_4 = SpellEffectMap.Target_EnhanceAbility_OwlsWisdom
SpellEffectMap.Target_EnhanceAbility_OwlsWisdom_5 = SpellEffectMap.Target_EnhanceAbility_OwlsWisdom
SpellEffectMap.Target_EnhanceAbility_OwlsWisdom_6 = SpellEffectMap.Target_EnhanceAbility_OwlsWisdom
SpellEffectMap.Target_EnhanceAbility_OwlsWisdom_7 = SpellEffectMap.Target_EnhanceAbility_OwlsWisdom
SpellEffectMap.Target_EnhanceAbility_OwlsWisdom_8 = SpellEffectMap.Target_EnhanceAbility_OwlsWisdom
SpellEffectMap.Target_EnhanceAbility_OwlsWisdom_9 = SpellEffectMap.Target_EnhanceAbility_OwlsWisdom
SpellEffectMap.Target_Enlarge = [[data "SpellProperties" "ApplyStatus(ENLARGE,100,10)"
data "SpellRoll" "SpellAutoResolveOnAllyWithDisadvantage(Ability.Constitution, SourceSpellDC(),true)"
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Enlarge_3 = SpellEffectMap.Target_Enlarge
SpellEffectMap.Target_Enlarge_4 = SpellEffectMap.Target_Enlarge
SpellEffectMap.Target_Enlarge_5 = SpellEffectMap.Target_Enlarge
SpellEffectMap.Target_Enlarge_6 = SpellEffectMap.Target_Enlarge
SpellEffectMap.Target_Enlarge_7 = SpellEffectMap.Target_Enlarge
SpellEffectMap.Target_Enlarge_8 = SpellEffectMap.Target_Enlarge
SpellEffectMap.Target_Enlarge_9 = SpellEffectMap.Target_Enlarge
SpellEffectMap.Target_Reduce = [[data "SpellProperties" "ApplyStatus(REDUCE,100,10)"
data "SpellRoll" "SpellAutoResolveOnAllyWithDisadvantage(Ability.Constitution, SourceSpellDC(),true)"
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Reduce_3 = SpellEffectMap.Target_Reduce
SpellEffectMap.Target_Reduce_4 = SpellEffectMap.Target_Reduce
SpellEffectMap.Target_Reduce_5 = SpellEffectMap.Target_Reduce
SpellEffectMap.Target_Reduce_6 = SpellEffectMap.Target_Reduce
SpellEffectMap.Target_Reduce_7 = SpellEffectMap.Target_Reduce
SpellEffectMap.Target_Reduce_8 = SpellEffectMap.Target_Reduce
SpellEffectMap.Target_Reduce_9 = SpellEffectMap.Target_Reduce
SpellEffectMap.Target_BestowCurse_Ability_Strength = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_STRENGTH,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Strength_4 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_STRENGTH,100,20)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Strength_5 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_STRENGTH,100,50)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Strength_6 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_STRENGTH,100,100)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Strength_7 = SpellEffectMap.Target_BestowCurse_Ability_Strength_6
SpellEffectMap.Target_BestowCurse_Ability_Strength_8 = SpellEffectMap.Target_BestowCurse_Ability_Strength_6
SpellEffectMap.Target_BestowCurse_Ability_Strength_9 = SpellEffectMap.Target_BestowCurse_Ability_Strength_6
SpellEffectMap.Target_BestowCurse_Ability_Dexterity = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_DEXTERITY,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Dexterity_4 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_DEXTERITY,100,20)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Dexterity_5 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_DEXTERITY,100,50)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Dexterity_6 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_DEXTERITY,100,100)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Dexterity_7 = SpellEffectMap.Target_BestowCurse_Ability_Dexterity_6
SpellEffectMap.Target_BestowCurse_Ability_Dexterity_8 = SpellEffectMap.Target_BestowCurse_Ability_Dexterity_6
SpellEffectMap.Target_BestowCurse_Ability_Dexterity_9 = SpellEffectMap.Target_BestowCurse_Ability_Dexterity_6
SpellEffectMap.Target_BestowCurse_Ability_Constitution = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_CONSTITUTION,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Constitution_4 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_CONSTITUTION,100,20)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Constitution_5 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_CONSTITUTION,100,50)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Constitution_6 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_CONSTITUTION,100,100)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Constitution_7 = SpellEffectMap.Target_BestowCurse_Ability_Constitution_6
SpellEffectMap.Target_BestowCurse_Ability_Constitution_8 = SpellEffectMap.Target_BestowCurse_Ability_Constitution_6
SpellEffectMap.Target_BestowCurse_Ability_Constitution_9 = SpellEffectMap.Target_BestowCurse_Ability_Constitution_6
SpellEffectMap.Target_BestowCurse_Ability_Intelligence = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_INTELLIGENCE,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Intelligence_4 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_INTELLIGENCE,100,20)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Intelligence_5 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_INTELLIGENCE,100,50)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Intelligence_6 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_INTELLIGENCE,100,100)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Intelligence_7 = SpellEffectMap.Target_BestowCurse_Ability_Intelligence_6
SpellEffectMap.Target_BestowCurse_Ability_Intelligence_8 = SpellEffectMap.Target_BestowCurse_Ability_Intelligence_6
SpellEffectMap.Target_BestowCurse_Ability_Intelligence_9 = SpellEffectMap.Target_BestowCurse_Ability_Intelligence_6
SpellEffectMap.Target_BestowCurse_Ability_Wisdom = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_WISDOM,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Wisdom_4 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_WISDOM,100,20)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Wisdom_5 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_WISDOM,100,50)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Wisdom_6 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_WISDOM,100,100)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Wisdom_7 = SpellEffectMap.Target_BestowCurse_Ability_Wisdom_6
SpellEffectMap.Target_BestowCurse_Ability_Wisdom_8 = SpellEffectMap.Target_BestowCurse_Ability_Wisdom_6
SpellEffectMap.Target_BestowCurse_Ability_Wisdom_9 = SpellEffectMap.Target_BestowCurse_Ability_Wisdom_6
SpellEffectMap.Target_BestowCurse_Ability_Charisma = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_CHARISMA,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Charisma_4 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_CHARISMA,100,20)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Charisma_5 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_CHARISMA,100,50)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Charisma_6 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ABILITY_CHARISMA,100,100)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Ability_Charisma_7 = SpellEffectMap.Target_BestowCurse_Ability_Charisma_6
SpellEffectMap.Target_BestowCurse_Ability_Charisma_8 = SpellEffectMap.Target_BestowCurse_Ability_Charisma_6
SpellEffectMap.Target_BestowCurse_Ability_Charisma_9 = SpellEffectMap.Target_BestowCurse_Ability_Charisma_6
SpellEffectMap.Target_BestowCurse_Attack = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ATTACK,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Attack_4 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ATTACK,100,20)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Attack_5 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ATTACK,100,50)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Attack_6 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_ATTACK,100,100)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_Attack_7 = SpellEffectMap.Target_BestowCurse_Attack_6
SpellEffectMap.Target_BestowCurse_Attack_8 = SpellEffectMap.Target_BestowCurse_Attack_6
SpellEffectMap.Target_BestowCurse_Attack_9 = SpellEffectMap.Target_BestowCurse_Attack_6
SpellEffectMap.Target_BestowCurse_ExtraDamage = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_EXTRA_DAMAGE, 100, 10);ApplyStatus(SELF, CURSE_EXTRA_DAMAGE_OWNER, 100, 10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_ExtraDamage_4 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_EXTRA_DAMAGE, 100, 20);ApplyStatus(SELF, CURSE_EXTRA_DAMAGE_OWNER, 100, 20)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_ExtraDamage_5 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_EXTRA_DAMAGE, 100, 50);ApplyStatus(SELF, CURSE_EXTRA_DAMAGE_OWNER, 100, 50))"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_ExtraDamage_6 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_EXTRA_DAMAGE, 100, 100);ApplyStatus(SELF, CURSE_EXTRA_DAMAGE_OWNER, 100, 100)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_ExtraDamage_7 = SpellEffectMap.Target_BestowCurse_ExtraDamage_6
SpellEffectMap.Target_BestowCurse_ExtraDamage_8 = SpellEffectMap.Target_BestowCurse_ExtraDamage_6
SpellEffectMap.Target_BestowCurse_ExtraDamage_9 = SpellEffectMap.Target_BestowCurse_ExtraDamage_6
SpellEffectMap.Target_BestowCurse_SkipTurn = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_SKIP_TURN,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_SkipTurn_4 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_SKIP_TURN,100,20)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_SkipTurn_5 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_SKIP_TURN,100,50)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_SkipTurn_6 = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(CURSE_SKIP_TURN,100,100)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL, 100, 0)"]]
SpellEffectMap.Target_BestowCurse_SkipTurn_7 = SpellEffectMap.Target_BestowCurse_SkipTurn_6
SpellEffectMap.Target_BestowCurse_SkipTurn_8 = SpellEffectMap.Target_BestowCurse_SkipTurn_6
SpellEffectMap.Target_BestowCurse_SkipTurn_9 = SpellEffectMap.Target_BestowCurse_SkipTurn_6
SpellEffectMap.Target_ProtectionFromEnergy_Acid = [[data "SpellProperties" "ApplyStatus(PROTECTION_FROM_ENERGY_ACID,100,-1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_ProtectionFromEnergy_Acid_4 = SpellEffectMap.Target_ProtectionFromEnergy_Acid
SpellEffectMap.Target_ProtectionFromEnergy_Acid_5 = SpellEffectMap.Target_ProtectionFromEnergy_Acid
SpellEffectMap.Target_ProtectionFromEnergy_Acid_6 = SpellEffectMap.Target_ProtectionFromEnergy_Acid
SpellEffectMap.Target_ProtectionFromEnergy_Acid_7 = SpellEffectMap.Target_ProtectionFromEnergy_Acid
SpellEffectMap.Target_ProtectionFromEnergy_Acid_8 = SpellEffectMap.Target_ProtectionFromEnergy_Acid
SpellEffectMap.Target_ProtectionFromEnergy_Acid_9 = SpellEffectMap.Target_ProtectionFromEnergy_Acid
SpellEffectMap.Target_ProtectionFromEnergy_Cold = [[data "SpellProperties" "ApplyStatus(PROTECTION_FROM_ENERGY_COLD,100,-1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_ProtectionFromEnergy_Cold_4 = SpellEffectMap.Target_ProtectionFromEnergy_Cold
SpellEffectMap.Target_ProtectionFromEnergy_Cold_5 = SpellEffectMap.Target_ProtectionFromEnergy_Cold
SpellEffectMap.Target_ProtectionFromEnergy_Cold_6 = SpellEffectMap.Target_ProtectionFromEnergy_Cold
SpellEffectMap.Target_ProtectionFromEnergy_Cold_7 = SpellEffectMap.Target_ProtectionFromEnergy_Cold
SpellEffectMap.Target_ProtectionFromEnergy_Cold_8 = SpellEffectMap.Target_ProtectionFromEnergy_Cold
SpellEffectMap.Target_ProtectionFromEnergy_Cold_9 = SpellEffectMap.Target_ProtectionFromEnergy_Cold
SpellEffectMap.Target_ProtectionFromEnergy_Fire = [[data "SpellProperties" "ApplyStatus(PROTECTION_FROM_ENERGY_FIRE,100,-1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_ProtectionFromEnergy_Fire_4 = SpellEffectMap.Target_ProtectionFromEnergy_Fire
SpellEffectMap.Target_ProtectionFromEnergy_Fire_5 = SpellEffectMap.Target_ProtectionFromEnergy_Fire
SpellEffectMap.Target_ProtectionFromEnergy_Fire_6 = SpellEffectMap.Target_ProtectionFromEnergy_Fire
SpellEffectMap.Target_ProtectionFromEnergy_Fire_7 = SpellEffectMap.Target_ProtectionFromEnergy_Fire
SpellEffectMap.Target_ProtectionFromEnergy_Fire_8 = SpellEffectMap.Target_ProtectionFromEnergy_Fire
SpellEffectMap.Target_ProtectionFromEnergy_Fire_9 = SpellEffectMap.Target_ProtectionFromEnergy_Fire
SpellEffectMap.Target_ProtectionFromEnergy_Lightning = [[data "SpellProperties" "ApplyStatus(PROTECTION_FROM_ENERGY_LIGHTNING,100,-1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_ProtectionFromEnergy_Lightning_4 = SpellEffectMap.Target_ProtectionFromEnergy_Lightning
SpellEffectMap.Target_ProtectionFromEnergy_Lightning_5 = SpellEffectMap.Target_ProtectionFromEnergy_Lightning
SpellEffectMap.Target_ProtectionFromEnergy_Lightning_6 = SpellEffectMap.Target_ProtectionFromEnergy_Lightning
SpellEffectMap.Target_ProtectionFromEnergy_Lightning_7 = SpellEffectMap.Target_ProtectionFromEnergy_Lightning
SpellEffectMap.Target_ProtectionFromEnergy_Lightning_8 = SpellEffectMap.Target_ProtectionFromEnergy_Lightning
SpellEffectMap.Target_ProtectionFromEnergy_Lightning_9 = SpellEffectMap.Target_ProtectionFromEnergy_Lightning
SpellEffectMap.Target_ProtectionFromEnergy_Thunder = [[data "SpellProperties" "ApplyStatus(PROTECTION_FROM_ENERGY_THUNDER,100,-1)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_ProtectionFromEnergy_Thunder_4 = SpellEffectMap.Target_ProtectionFromEnergy_Thunder
SpellEffectMap.Target_ProtectionFromEnergy_Thunder_5 = SpellEffectMap.Target_ProtectionFromEnergy_Thunder
SpellEffectMap.Target_ProtectionFromEnergy_Thunder_6 = SpellEffectMap.Target_ProtectionFromEnergy_Thunder
SpellEffectMap.Target_ProtectionFromEnergy_Thunder_7 = SpellEffectMap.Target_ProtectionFromEnergy_Thunder
SpellEffectMap.Target_ProtectionFromEnergy_Thunder_8 = SpellEffectMap.Target_ProtectionFromEnergy_Thunder
SpellEffectMap.Target_ProtectionFromEnergy_Thunder_9 = SpellEffectMap.Target_ProtectionFromEnergy_Thunder

SpellEffectMap.Target_Grease = [[data "SpellProperties" "GROUND:CreateSurface(4,10,Grease)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Grease_2 = SpellEffectMap.Target_Grease
SpellEffectMap.Target_Grease_3 = SpellEffectMap.Target_Grease
SpellEffectMap.Target_Grease_4 = SpellEffectMap.Target_Grease
SpellEffectMap.Target_Grease_5 = SpellEffectMap.Target_Grease
SpellEffectMap.Target_Grease_6 = SpellEffectMap.Target_Grease
SpellEffectMap.Target_Grease_7 = SpellEffectMap.Target_Grease
SpellEffectMap.Target_Grease_8 = SpellEffectMap.Target_Grease
SpellEffectMap.Target_Grease_9 = SpellEffectMap.Target_Grease

SpellEffectMap.Projectile_IceKnife = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:SurfaceChange(Douse);RemoveStatus(BURNING);GROUND:CreateSurface(2,2,WaterFrozen);TARGET:DealDamage(1d10,Piercing);TARGET:AOE:IF(not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)):DealDamage(2d6, Cold,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_IceKnife_2 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:SurfaceChange(Douse);RemoveStatus(BURNING);GROUND:CreateSurface(2,2,WaterFrozen);TARGET:DealDamage(1d10,Piercing);TARGET:AOE:IF(not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)):DealDamage(3d6, Cold,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_IceKnife_3 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:SurfaceChange(Douse);RemoveStatus(BURNING);GROUND:CreateSurface(2,2,WaterFrozen);TARGET:DealDamage(1d10,Piercing);TARGET:AOE:IF(not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)):DealDamage(4d6, Cold,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_IceKnife_4 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:SurfaceChange(Douse);RemoveStatus(BURNING);GROUND:CreateSurface(2,2,WaterFrozen);TARGET:DealDamage(1d10,Piercing);TARGET:AOE:IF(not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)):DealDamage(5d6, Cold,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_IceKnife_5 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:SurfaceChange(Douse);RemoveStatus(BURNING);GROUND:CreateSurface(2,2,WaterFrozen);TARGET:DealDamage(1d10,Piercing);TARGET:AOE:IF(not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)):DealDamage(6d6, Cold,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_IceKnife_6 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:SurfaceChange(Douse);RemoveStatus(BURNING);GROUND:CreateSurface(2,2,WaterFrozen);TARGET:DealDamage(1d10,Piercing);TARGET:AOE:IF(not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)):DealDamage(7d6, Cold,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_IceKnife_7 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:SurfaceChange(Douse);RemoveStatus(BURNING);GROUND:CreateSurface(2,2,WaterFrozen);TARGET:DealDamage(1d10,Piercing);TARGET:AOE:IF(not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)):DealDamage(8d6, Cold,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_IceKnife_8 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:SurfaceChange(Douse);RemoveStatus(BURNING);GROUND:CreateSurface(2,2,WaterFrozen);TARGET:DealDamage(1d10,Piercing);TARGET:AOE:IF(not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)):DealDamage(9d6, Cold,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_IceKnife_9 = [[data "SpellProperties" "GROUND:SurfaceChange(Freeze);GROUND:SurfaceChange(Douse);RemoveStatus(BURNING);GROUND:CreateSurface(2,2,WaterFrozen);TARGET:DealDamage(1d10,Piercing);TARGET:AOE:IF(not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)):DealDamage(10d6, Cold,Magical)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]

SpellEffectMap.Zone_Thunderwave = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "50"
data "SurfaceGrowInterval" "1"
data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(2d8,Thunder,Magical);Force(8, OriginToTarget)"
data "SpellFail" "DealDamage((2d8)/2,Thunder,Magical)"]]
SpellEffectMap.Zone_Thunderwave_2 = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "50"
data "SurfaceGrowInterval" "1"
data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(3d8,Thunder,Magical);Force(8, OriginToTarget)"
data "SpellFail" "DealDamage((3d8)/2,Thunder,Magical)"]]
SpellEffectMap.Zone_Thunderwave_3 = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "50"
data "SurfaceGrowInterval" "1"
data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(4d8,Thunder,Magical);Force(8, OriginToTarget)"
data "SpellFail" "DealDamage((4d8)/2,Thunder,Magical)"]]
SpellEffectMap.Zone_Thunderwave_4 = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "50"
data "SurfaceGrowInterval" "1"
data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(5d8,Thunder,Magical);Force(8, OriginToTarget)"
data "SpellFail" "DealDamage((5d8)/2,Thunder,Magical)"]]
SpellEffectMap.Zone_Thunderwave_5 = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "50"
data "SurfaceGrowInterval" "1"
data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(6d8,Thunder,Magical);Force(8, OriginToTarget)"
data "SpellFail" "DealDamage((6d8)/2,Thunder,Magical)"]]
SpellEffectMap.Zone_Thunderwave_6 = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "50"
data "SurfaceGrowInterval" "1"
data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(7d8,Thunder,Magical);Force(8, OriginToTarget)"
data "SpellFail" "DealDamage((7d8)/2,Thunder,Magical)"]]
SpellEffectMap.Zone_Thunderwave_7 = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "50"
data "SurfaceGrowInterval" "1"
data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(8d8,Thunder,Magical);Force(8, OriginToTarget)"
data "SpellFail" "DealDamage((8d8)/2,Thunder,Magical)"]]
SpellEffectMap.Zone_Thunderwave_8 = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "50"
data "SurfaceGrowInterval" "1"
data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(9d8,Thunder,Magical);Force(8, OriginToTarget)"
data "SpellFail" "DealDamage((9d8)/2,Thunder,Magical)"]]
SpellEffectMap.Zone_Thunderwave_9 = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "50"
data "SurfaceGrowInterval" "1"
data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(10d8,Thunder,Magical);Force(8, OriginToTarget)"
data "SpellFail" "DealDamage((10d8)/2,Thunder,Magical)"]]

SpellEffectMap.Target_CloudOfDaggers = [[data "SpellProperties" "GROUND:Summon(0ba4af65-19d0-4a31-9a42-2c365462841b, 10,,,,CLOUD_OF_DAGGERS_AURA)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_CloudOfDaggers_3 = [[data "SpellProperties" "GROUND:Summon(0ba4af65-19d0-4a31-9a42-2c365462841b, 10,,,,CLOUD_OF_DAGGERS_AURA_3)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_CloudOfDaggers_4 = [[data "SpellProperties" "GROUND:Summon(0ba4af65-19d0-4a31-9a42-2c365462841b, 10,,,,CLOUD_OF_DAGGERS_AURA_4)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_CloudOfDaggers_5 = [[data "SpellProperties" "GROUND:Summon(0ba4af65-19d0-4a31-9a42-2c365462841b, 10,,,,CLOUD_OF_DAGGERS_AURA_5)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_CloudOfDaggers_6 = [[data "SpellProperties" "GROUND:Summon(0ba4af65-19d0-4a31-9a42-2c365462841b, 10,,,,CLOUD_OF_DAGGERS_AURA_6)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_CloudOfDaggers_7 = [[data "SpellProperties" "GROUND:Summon(0ba4af65-19d0-4a31-9a42-2c365462841b, 10,,,,CLOUD_OF_DAGGERS_AURA_7)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_CloudOfDaggers_8 = [[data "SpellProperties" "GROUND:Summon(0ba4af65-19d0-4a31-9a42-2c365462841b, 10,,,,CLOUD_OF_DAGGERS_AURA_8)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_CloudOfDaggers_9 = [[data "SpellProperties" "GROUND:Summon(0ba4af65-19d0-4a31-9a42-2c365462841b, 10,,,,CLOUD_OF_DAGGERS_AURA_9)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]

SpellEffectMap.Target_Darkness = [[data "SpellProperties" "GROUND:CreateSurface(5,10,DarknessCloud,true)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Darkness_3 = SpellEffectMap.Target_Darkness
SpellEffectMap.Target_Darkness_4 = SpellEffectMap.Target_Darkness
SpellEffectMap.Target_Darkness_5 = SpellEffectMap.Target_Darkness
SpellEffectMap.Target_Darkness_6 = SpellEffectMap.Target_Darkness
SpellEffectMap.Target_Darkness_7 = SpellEffectMap.Target_Darkness
SpellEffectMap.Target_Darkness_8 = SpellEffectMap.Target_Darkness
SpellEffectMap.Target_Darkness_9 = SpellEffectMap.Target_Darkness

SpellEffectMap.Target_Web = [[data "SpellProperties" "GROUND:CreateSurface(4,10,Web,true)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_Web_3 = SpellEffectMap.Target_Web
SpellEffectMap.Target_Web_4 = SpellEffectMap.Target_Web
SpellEffectMap.Target_Web_5 = SpellEffectMap.Target_Web
SpellEffectMap.Target_Web_6 = SpellEffectMap.Target_Web
SpellEffectMap.Target_Web_7 = SpellEffectMap.Target_Web
SpellEffectMap.Target_Web_8 = SpellEffectMap.Target_Web
SpellEffectMap.Target_Web_9 = SpellEffectMap.Target_Web

SpellEffectMap.Projectile_Fireball = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt)"
data "AreaRadius" "4"
data "ExplodeRadius" "4"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(8d6,Fire,Magical)"
data "SpellFail" "DealDamage((8d6)/2,Fire,Magical)"
data "TargetConditions" "not (HasPassive('SculptSpells', context.Source) and Ally())"]]
SpellEffectMap.Projectile_Fireball_4 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt)"
data "AreaRadius" "4"
data "ExplodeRadius" "4"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(9d6,Fire,Magical)"
data "SpellFail" "DealDamage((9d6)/2,Fire,Magical)"
data "TargetConditions" "not (HasPassive('SculptSpells', context.Source) and Ally())"]]
SpellEffectMap.Projectile_Fireball_5 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt)"
data "AreaRadius" "4"
data "ExplodeRadius" "4"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(10d6,Fire,Magical)"
data "SpellFail" "DealDamage((10d6)/2,Fire,Magical)"
data "TargetConditions" "not (HasPassive('SculptSpells', context.Source) and Ally())"]]
SpellEffectMap.Projectile_Fireball_6 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt)"
data "AreaRadius" "4"
data "ExplodeRadius" "4"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(11d6,Fire,Magical)"
data "SpellFail" "DealDamage((11d6)/2,Fire,Magical)"
data "TargetConditions" "not (HasPassive('SculptSpells', context.Source) and Ally())"]]
SpellEffectMap.Projectile_Fireball_7 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt)"
data "AreaRadius" "4"
data "ExplodeRadius" "4"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(12d6,Fire,Magical)"
data "SpellFail" "DealDamage((12d6)/2,Fire,Magical)"
data "TargetConditions" "not (HasPassive('SculptSpells', context.Source) and Ally())"]]
SpellEffectMap.Projectile_Fireball_8 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt)"
data "AreaRadius" "4"
data "ExplodeRadius" "4"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(13d6,Fire,Magical)"
data "SpellFail" "DealDamage((13d6)/2,Fire,Magical)"
data "TargetConditions" "not (HasPassive('SculptSpells', context.Source) and Ally())"]]
SpellEffectMap.Projectile_Fireball_9 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt)"
data "AreaRadius" "4"
data "ExplodeRadius" "4"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(14d6,Fire,Magical)"
data "SpellFail" "DealDamage((14d6)/2,Fire,Magical)"
data "TargetConditions" "not (HasPassive('SculptSpells', context.Source) and Ally())"]]

SpellEffectMap.Target_GlyphOfWarding_Acid = [[data "SpellProperties" "GROUND:Summon(8cba7397-8623-4793-81ce-0ca7987dc813,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Acid_4 = [[data "SpellProperties" "GROUND:Summon(a4180db9-9541-4f84-ac7a-23cb8e3b3f31,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Acid_5 = [[data "SpellProperties" "GROUND:Summon(97dcd38c-824b-4d46-abea-bc398fdb5a6d,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Acid_6 = [[data "SpellProperties" "GROUND:Summon(c63dbb64-f051-4b79-bf90-f52aebfa3724,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Acid_7 = SpellEffectMap.Target_GlyphOfWarding_Acid_6
SpellEffectMap.Target_GlyphOfWarding_Acid_8 = SpellEffectMap.Target_GlyphOfWarding_Acid_6
SpellEffectMap.Target_GlyphOfWarding_Acid_9 = SpellEffectMap.Target_GlyphOfWarding_Acid_6
SpellEffectMap.Target_GlyphOfWarding_Cold = [[data "SpellProperties" "GROUND:Summon(8cba7397-8623-4793-81ce-0ca7987dc813,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Cold_4 = [[data "SpellProperties" "GROUND:Summon(a4180db9-9541-4f84-ac7a-23cb8e3b3f31,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Cold_5 = [[data "SpellProperties" "GROUND:Summon(97dcd38c-824b-4d46-abea-bc398fdb5a6d,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Cold_6 = [[data "SpellProperties" "GROUND:Summon(c63dbb64-f051-4b79-bf90-f52aebfa3724,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Cold_7 = SpellEffectMap.Target_GlyphOfWarding_Cold_6
SpellEffectMap.Target_GlyphOfWarding_Cold_8 = SpellEffectMap.Target_GlyphOfWarding_Cold_6
SpellEffectMap.Target_GlyphOfWarding_Cold_9 = SpellEffectMap.Target_GlyphOfWarding_Cold_6
SpellEffectMap.Target_GlyphOfWarding_Detonation = [[data "SpellProperties" "GROUND:Summon(747689bc-762c-4ebc-98cf-7305431a114f,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Detonation_4 = [[data "SpellProperties" "GROUND:Summon(eaaa2dce-7fc1-4c92-bbd6-712cfe28a070,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Detonation_5 = [[data "SpellProperties" "GROUND:Summon(7088f16c-4a73-405b-986e-87fa4ea39726,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Detonation_6 = [[data "SpellProperties" "GROUND:Summon(54a3207c-057c-4065-8cad-4467f558dc3b,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Detonation_7 = SpellEffectMap.Target_GlyphOfWarding_Detonation_6
SpellEffectMap.Target_GlyphOfWarding_Detonation_8 = SpellEffectMap.Target_GlyphOfWarding_Detonation_6
SpellEffectMap.Target_GlyphOfWarding_Detonation_9 = SpellEffectMap.Target_GlyphOfWarding_Detonation_6
SpellEffectMap.Target_GlyphOfWarding_Fire = [[data "SpellProperties" "GROUND:Summon(08f18dbc-f862-48c2-afcc-036f2e82b2a6,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Fire_4 = [[data "SpellProperties" "GROUND:Summon(2a08a626-6566-484a-b485-6bfcf8fd85a3,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Fire_5 = [[data "SpellProperties" "GROUND:Summon(e2b37ae4-774c-4a29-b276-1344a15a2ee3,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Fire_6 = [[data "SpellProperties" "GROUND:Summon(231bc4cf-f720-4f00-8ca3-6050cfa29d03,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Fire_7 = SpellEffectMap.Target_GlyphOfWarding_Fire_6
SpellEffectMap.Target_GlyphOfWarding_Fire_8 = SpellEffectMap.Target_GlyphOfWarding_Fire_6
SpellEffectMap.Target_GlyphOfWarding_Fire_9 = SpellEffectMap.Target_GlyphOfWarding_Fire_6
SpellEffectMap.Target_GlyphOfWarding_Lightning = [[data "SpellProperties" "GROUND:Summon(0ab48ea9-84ed-43e8-8dde-b90797dba3a5,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Lightning_4 = [[data "SpellProperties" "GROUND:Summon(92c93591-62ed-4d53-92da-3d9a7c5e045d,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Lightning_5 = [[data "SpellProperties" "GROUND:Summon(b1ad66af-0a33-4806-888f-b0572c0a7a8a,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Lightning_6 = [[data "SpellProperties" "GROUND:Summon(7de969cb-9076-41e0-9afd-60b75c97ede7,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Lightning_7 = SpellEffectMap.Target_GlyphOfWarding_Lightning_6
SpellEffectMap.Target_GlyphOfWarding_Lightning_8 = SpellEffectMap.Target_GlyphOfWarding_Lightning_6
SpellEffectMap.Target_GlyphOfWarding_Lightning_9 = SpellEffectMap.Target_GlyphOfWarding_Lightning_6
SpellEffectMap.Target_GlyphOfWarding_Sleep = [[data "SpellProperties" "GROUND:Summon(181cdccc-80ea-43c7-8ca7-3ba0214f26f3,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Sleep_4 = [[data "SpellProperties" "GROUND:Summon(eefacc50-6e08-458d-ba08-da228da35097,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Sleep_5 = [[data "SpellProperties" "GROUND:Summon(0d97c93e-8a5f-44d7-bfd1-362a6a5bca98,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Sleep_6 = [[data "SpellProperties" "GROUND:Summon(4e4ac973-4232-4f52-b59f-37662ee937be,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Sleep_7 = SpellEffectMap.Target_GlyphOfWarding_Sleep_6
SpellEffectMap.Target_GlyphOfWarding_Sleep_8 = SpellEffectMap.Target_GlyphOfWarding_Sleep_6
SpellEffectMap.Target_GlyphOfWarding_Sleep_9 = SpellEffectMap.Target_GlyphOfWarding_Sleep_6
SpellEffectMap.Target_GlyphOfWarding_Thunder = [[data "SpellProperties" "GROUND:Summon(2a452d78-853d-4aee-ab9e-0d36d7003f7c,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Thunder_4 = [[data "SpellProperties" "GROUND:Summon(12d84cb9-61f4-4d23-a32a-52f659f19cd9,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Thunder_5 = [[data "SpellProperties" "GROUND:Summon(e8d4cf27-7b91-4530-8d0b-a8b31fa5e9a0,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Thunder_6 = [[data "SpellProperties" "GROUND:Summon(fd5f41c9-4d1c-47da-8e91-418278c9a7af,UntilLongRest,Projectile_AiHelper_Summon_Weak,,GlyphOfWardingStack,EXPLOSIVE_RUNES)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Target_GlyphOfWarding_Thunder_7 = SpellEffectMap.Target_GlyphOfWarding_Thunder_6
SpellEffectMap.Target_GlyphOfWarding_Thunder_8 = SpellEffectMap.Target_GlyphOfWarding_Thunder_6
SpellEffectMap.Target_GlyphOfWarding_Thunder_9 = SpellEffectMap.Target_GlyphOfWarding_Thunder_6

SpellEffectMap.Zone_LightningBolt = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(8d6,Lightning,Magical)"
data "SpellFail" "DealDamage((8d6)/2, Lightning,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]
SpellEffectMap.Zone_LightningBolt_4 = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(9d6,Lightning,Magical)"
data "SpellFail" "DealDamage((9d6)/2, Lightning,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]
SpellEffectMap.Zone_LightningBolt_5 = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(10d6,Lightning,Magical)"
data "SpellFail" "DealDamage((10d6)/2, Lightning,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]
SpellEffectMap.Zone_LightningBolt_6 = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(11d6,Lightning,Magical)"
data "SpellFail" "DealDamage((11d6)/2, Lightning,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]
SpellEffectMap.Zone_LightningBolt_7 = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(12d6,Lightning,Magical)"
data "SpellFail" "DealDamage((12d6)/2, Lightning,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]
SpellEffectMap.Zone_LightningBolt_8 = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(13d6,Lightning,Magical)"
data "SpellFail" "DealDamage((13d6)/2, Lightning,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]
SpellEffectMap.Zone_LightningBolt_9 = [[data "SpellProperties" ""
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(14d6,Lightning,Magical)"
data "SpellFail" "DealDamage((14d6)/2, Lightning,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]

SpellEffectMap.Projectile_VitriolicSphere = [[data "SpellProperties" ""
data "AreaRadius" "6"
data "ExplodeRadius" "6"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(VITRIOLIC_SPHERE,100,1);DealDamage(10d4,Acid,Magical)"
data "SpellFail" "DealDamage((10d4)/2,Acid,Magical)"
data "TargetConditions" "not (HasPassive('SculptSpells', context.Source) and Ally())"]]
SpellEffectMap.Projectile_VitriolicSphere_5 = [[data "SpellProperties" ""
data "AreaRadius" "6"
data "ExplodeRadius" "6"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(VITRIOLIC_SPHERE,100,1);DealDamage(12d4,Acid,Magical)"
data "SpellFail" "DealDamage((12d4)/2,Acid,Magical)"
data "TargetConditions" "not (HasPassive('SculptSpells', context.Source) and Ally())"]]
SpellEffectMap.Projectile_VitriolicSphere_6 = [[data "SpellProperties" ""
data "AreaRadius" "6"
data "ExplodeRadius" "6"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(VITRIOLIC_SPHERE,100,1);DealDamage(14d4,Acid,Magical)"
data "SpellFail" "DealDamage((14d4)/2,Acid,Magical)"
data "TargetConditions" "not (HasPassive('SculptSpells', context.Source) and Ally())"]]
SpellEffectMap.Projectile_VitriolicSphere_7 = [[data "SpellProperties" ""
data "AreaRadius" "6"
data "ExplodeRadius" "6"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(VITRIOLIC_SPHERE,100,1);DealDamage(16d4,Acid,Magical)"
data "SpellFail" "DealDamage((16d4)/2,Acid,Magical)"
data "TargetConditions" "not (HasPassive('SculptSpells', context.Source) and Ally())"]]
SpellEffectMap.Projectile_VitriolicSphere_8 = [[data "SpellProperties" ""
data "AreaRadius" "6"
data "ExplodeRadius" "6"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(VITRIOLIC_SPHERE,100,1);DealDamage(18d4,Acid,Magical)"
data "SpellFail" "DealDamage((18d4)/2,Acid,Magical)"
data "TargetConditions" "not (HasPassive('SculptSpells', context.Source) and Ally())"]]
SpellEffectMap.Projectile_VitriolicSphere_9 = [[data "SpellProperties" ""
data "AreaRadius" "6"
data "ExplodeRadius" "6"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "ApplyStatus(VITRIOLIC_SPHERE,100,1);DealDamage(20d4,Acid,Magical)"
data "SpellFail" "DealDamage((20d4)/2,Acid,Magical)"
data "TargetConditions" "not (HasPassive('SculptSpells', context.Source) and Ally())"]]

SpellEffectMap.Target_Cloudkill = [[data "ConcentrationSpellID" "Target_Cloudkill_Recast"
data "SpellProperties" "GROUND:CreateSurface(6,10,CloudkillCloud,true);GROUND:ApplyStatus(SELF,CLOUDKILL_CASTER,100,10);ApplyStatus(CLOUDKILL,100,1)"]]
SpellEffectMap.Target_Cloudkill_6 = [[data "ConcentrationSpellID" "Target_Cloudkill_Recast_6"
data "SpellProperties" "GROUND:CreateSurface(6,10,Cloudkill6Cloud,true);GROUND:ApplyStatus(SELF,CLOUDKILL_CASTER,100,10);ApplyStatus(CLOUDKILL,100,1)"]]
SpellEffectMap.Target_Cloudkill_7 = SpellEffectMap.Target_Cloudkill_6
SpellEffectMap.Target_Cloudkill_8 = SpellEffectMap.Target_Cloudkill_6
SpellEffectMap.Target_Cloudkill_9 = SpellEffectMap.Target_Cloudkill_6

SpellEffectMap.Target_SynapticStatic = [[data "SpellProperties" "GROUND:CreateExplosion(Projectile_PsychicEffect_Explosion)"
data "AreaRadius" "6"
data "SpellRoll" "not SavingThrow(Ability.Intelligence, SourceSpellDC(), false, true)"
data "SpellSuccess" "IF(IntelligenceGreaterThan(2)):DealDamage(8d6,Psychic);IF(IntelligenceGreaterThan(2)):ApplyStatus(SYNAPTIC_STATIC,100,10)"
data "SpellFail" "IF(IntelligenceGreaterThan(2)):DealDamage(8d6/2,Psychic)"
data "TargetConditions" "not Dead() and not Item()"]]
SpellEffectMap.Target_SynapticStatic_6 = SpellEffectMap.Target_SynapticStatic
SpellEffectMap.Target_SynapticStatic_7 = SpellEffectMap.Target_SynapticStatic
SpellEffectMap.Target_SynapticStatic_8 = SpellEffectMap.Target_SynapticStatic
SpellEffectMap.Target_SynapticStatic_9 = SpellEffectMap.Target_SynapticStatic

SpellEffectMap.Projectile_AcidSplash = [[not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)]]
SpellEffectMap.Target_TrueStrike = [[data "SpellProperties" "ApplyStatus(TRUE_STRIKE,100,2);ApplyStatus(SELF,TRUE_STRIKE_OWNER,100,2)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_EldritchBlast = [[data "SpellProperties" "DealDamage(1d10,Force,Magical);IF(HasPassive('RepellingBlast',context.Source)):Force(4.5)"
data "SpellRoll" ""
data "SpellSuccess" ""
data "SpellFail" ""]]

SpellEffectMap.Zone_BurningHands = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);TARGET:IF(Item()):ApplyStatus(BURNING,100,2);"
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(3d6, Fire,Magical)"
data "SpellFail" "DealDamage(3d6/2, Fire,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]
SpellEffectMap.Zone_BurningHands_2 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);TARGET:IF(Item()):ApplyStatus(BURNING,100,2);"
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(4d6, Fire,Magical)"
data "SpellFail" "DealDamage(4d6/2, Fire,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]
SpellEffectMap.Zone_BurningHands_3 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);TARGET:IF(Item()):ApplyStatus(BURNING,100,2);"
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(5d6, Fire,Magical)"
data "SpellFail" "DealDamage(5d6/2, Fire,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]
SpellEffectMap.Zone_BurningHands_4 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);TARGET:IF(Item()):ApplyStatus(BURNING,100,2);"
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(6d6, Fire,Magical)"
data "SpellFail" "DealDamage(6d6/2, Fire,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]
SpellEffectMap.Zone_BurningHands_5 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);TARGET:IF(Item()):ApplyStatus(BURNING,100,2);"
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(7d6, Fire,Magical)"
data "SpellFail" "DealDamage(7d6/2, Fire,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]
SpellEffectMap.Zone_BurningHands_6 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);TARGET:IF(Item()):ApplyStatus(BURNING,100,2);"
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(8d6, Fire,Magical)"
data "SpellFail" "DealDamage(8d6/2, Fire,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]
SpellEffectMap.Zone_BurningHands_7 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);TARGET:IF(Item()):ApplyStatus(BURNING,100,2);"
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(9d6, Fire,Magical)"
data "SpellFail" "DealDamage(9d6/2, Fire,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]
SpellEffectMap.Zone_BurningHands_8 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);TARGET:IF(Item()):ApplyStatus(BURNING,100,2);"
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(10d6, Fire,Magical)"
data "SpellFail" "DealDamage(10d6/2, Fire,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]
SpellEffectMap.Zone_BurningHands_9 = [[data "SpellProperties" "GROUND:SurfaceChange(Ignite);GROUND:SurfaceChange(Melt);TARGET:IF(Item()):ApplyStatus(BURNING,100,2);"
data "SurfaceType" "Sentinel"
data "SurfaceLifetime" "0"
data "SurfaceGrowStep" "5"
data "SurfaceGrowInterval" "10"
data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"
data "SpellSuccess" "DealDamage(11d6, Fire,Magical)"
data "SpellFail" "DealDamage(11d6/2, Fire,Magical)"
data "TargetConditions" "not Dead() and not (HasPassive('SculptSpells', context.Source) and Ally()) and not Tagged('INVISIBLE_HELPER')"]]

SpellEffectMap.Target_CharmPerson = [[data "SpellProperties" ""
data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),AdvantageOnCharmPerson(),true)"
data "SpellSuccess" "ApplyStatus(CHARMED,100,10)"
data "SpellFail" "ApplyStatus(SAVED_AGAINST_HOSTILE_SPELL_CHARM_SUBTLE, 100, 0)"]]
SpellEffectMap.Target_CharmPerson_2 = SpellEffectMap.Target_CharmPerson
SpellEffectMap.Target_CharmPerson_3 = SpellEffectMap.Target_CharmPerson
SpellEffectMap.Target_CharmPerson_4 = SpellEffectMap.Target_CharmPerson
SpellEffectMap.Target_CharmPerson_5 = SpellEffectMap.Target_CharmPerson
SpellEffectMap.Target_CharmPerson_6 = SpellEffectMap.Target_CharmPerson
SpellEffectMap.Target_CharmPerson_7 = SpellEffectMap.Target_CharmPerson
SpellEffectMap.Target_CharmPerson_8 = SpellEffectMap.Target_CharmPerson
SpellEffectMap.Target_CharmPerson_9 = SpellEffectMap.Target_CharmPerson

SpellEffectMap.Zone_ColorSpray = [[data "SpellProperties" "ApplyStatus(COLOR_SPRAY,100,1)"]]
SpellEffectMap.Zone_ColorSpray_2 = SpellEffectMap.Zone_ColorSpray
SpellEffectMap.Zone_ColorSpray_3 = SpellEffectMap.Zone_ColorSpray
SpellEffectMap.Zone_ColorSpray_4 = SpellEffectMap.Zone_ColorSpray
SpellEffectMap.Zone_ColorSpray_5 = SpellEffectMap.Zone_ColorSpray
SpellEffectMap.Zone_ColorSpray_6 = SpellEffectMap.Zone_ColorSpray
SpellEffectMap.Zone_ColorSpray_7 = SpellEffectMap.Zone_ColorSpray
SpellEffectMap.Zone_ColorSpray_8 = SpellEffectMap.Zone_ColorSpray
SpellEffectMap.Zone_ColorSpray_9 = SpellEffectMap.Zone_ColorSpray

SpellEffectMap.Target_FogCloud = [[]]
SpellEffectMap.Target_FogCloud_2 = [[]]
SpellEffectMap.Target_FogCloud_3 = [[]]
SpellEffectMap.Target_FogCloud_4 = [[]]
SpellEffectMap.Target_FogCloud_5 = [[]]
SpellEffectMap.Target_FogCloud_6 = [[]]
SpellEffectMap.Target_FogCloud_7 = [[]]
SpellEffectMap.Target_FogCloud_8 = [[]]
SpellEffectMap.Target_FogCloud_9 = [[]]

SpellEffectMap.Target_Sleep = [[]]
SpellEffectMap.Target_Sleep_2 = [[]]
SpellEffectMap.Target_Sleep_3 = [[]]
SpellEffectMap.Target_Sleep_4 = [[]]
SpellEffectMap.Target_Sleep_5 = [[]]
SpellEffectMap.Target_Sleep_6 = [[]]
SpellEffectMap.Target_Sleep_7 = [[]]
SpellEffectMap.Target_Sleep_8 = [[]]
SpellEffectMap.Target_Sleep_9 = [[]]

SpellEffectMap.Projectile_WitchBolt = [[data "SpellRoll" ""
data "SpellSuccess" "ApplyStatus(WITCH_BOLT,100,10);DealDamage(1d12,Lightning,Magical);ApplyStatus(AI_HELPER_WITCHBOLT,100,2)"]]
SpellEffectMap.Projectile_WitchBolt_2 = [[data "SpellRoll" ""
data "SpellSuccess" "ApplyStatus(WITCH_BOLT,100,10);DealDamage(2d12,Lightning,Magical);ApplyStatus(AI_HELPER_WITCHBOLT,100,2)"]]
SpellEffectMap.Projectile_WitchBolt_3 = [[data "SpellRoll" ""
data "SpellSuccess" "ApplyStatus(WITCH_BOLT,100,10);DealDamage(3d12,Lightning,Magical);ApplyStatus(AI_HELPER_WITCHBOLT,100,2)"]]
SpellEffectMap.Projectile_WitchBolt_4 = [[data "SpellRoll" ""
data "SpellSuccess" "ApplyStatus(WITCH_BOLT,100,10);DealDamage(4d12,Lightning,Magical);ApplyStatus(AI_HELPER_WITCHBOLT,100,2)"]]
SpellEffectMap.Projectile_WitchBolt_5 = [[data "SpellRoll" ""
data "SpellSuccess" "ApplyStatus(WITCH_BOLT,100,10);DealDamage(5d12,Lightning,Magical);ApplyStatus(AI_HELPER_WITCHBOLT,100,2)"]]
SpellEffectMap.Projectile_WitchBolt_6 = [[data "SpellRoll" ""
data "SpellSuccess" "ApplyStatus(WITCH_BOLT,100,10);DealDamage(6d12,Lightning,Magical);ApplyStatus(AI_HELPER_WITCHBOLT,100,2)"]]
SpellEffectMap.Projectile_WitchBolt_7 = [[data "SpellRoll" ""
data "SpellSuccess" "ApplyStatus(WITCH_BOLT,100,10);DealDamage(7d12,Lightning,Magical);ApplyStatus(AI_HELPER_WITCHBOLT,100,2)"]]
SpellEffectMap.Projectile_WitchBolt_8 = [[data "SpellRoll" ""
data "SpellSuccess" "ApplyStatus(WITCH_BOLT,100,10);DealDamage(8d12,Lightning,Magical);ApplyStatus(AI_HELPER_WITCHBOLT,100,2)"]]
SpellEffectMap.Projectile_WitchBolt_9 = [[data "SpellRoll" ""
data "SpellSuccess" "ApplyStatus(WITCH_BOLT,100,10);DealDamage(9d12,Lightning,Magical);ApplyStatus(AI_HELPER_WITCHBOLT,100,2)"]]

SpellEffectMap.Target_Command_Halt = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"]]
SpellEffectMap.Target_Command_Halt_2 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Halt_3 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Halt_4 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Halt_5 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Halt_6 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Halt_7 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Halt_8 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Halt_9 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Approach = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Approach_2 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Approach_3 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Approach_4 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Approach_5 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Approach_6 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Approach_7 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Approach_8 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Approach_9 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Drop = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Drop_2 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Drop_3 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Drop_4 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Drop_5 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Drop_6 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Drop_7 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Drop_8 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Drop_9 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Flee = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Flee_2 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Flee_3 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Flee_4 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Flee_5 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Flee_6 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Flee_7 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Flee_8 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Flee_9 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Grovel = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Grovel_2 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Grovel_3 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Grovel_4 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Grovel_5 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Grovel_6 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Grovel_7 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Grovel_8 = SpellEffectMap.Target_Command_Halt
SpellEffectMap.Target_Command_Grovel_9 = SpellEffectMap.Target_Command_Halt

SpellEffectMap.Target_Hex_Strength = [[data "SpellRoll" ""]]
SpellEffectMap.Target_Hex_Strength_2 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Strength_3 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Strength_4 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Strength_5 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Strength_6 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Strength_7 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Strength_8 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Strength_9 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Dexterity = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Dexterity_2 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Dexterity_3 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Dexterity_4 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Dexterity_5 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Dexterity_6 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Dexterity_7 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Dexterity_8 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Dexterity_9 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Constitution = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Constitution_2 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Constitution_3 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Constitution_4 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Constitution_5 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Constitution_6 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Constitution_7 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Constitution_8 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Constitution_9 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Intelligence = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Intelligence_2 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Intelligence_3 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Intelligence_4 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Intelligence_5 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Intelligence_6 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Intelligence_7 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Intelligence_8 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Intelligence_9 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Wisdom = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Wisdom_2 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Wisdom_3 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Wisdom_4 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Wisdom_5 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Wisdom_6 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Wisdom_7 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Wisdom_8 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Wisdom_9 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Charisma = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Charisma_2 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Charisma_3 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Charisma_4 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Charisma_5 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Charisma_6 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Charisma_7 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Charisma_8 = SpellEffectMap.Target_Hex_Strength
SpellEffectMap.Target_Hex_Charisma_9 = SpellEffectMap.Target_Hex_Strength

SpellEffectMap.Target_FaerieFire = [[data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"]]
SpellEffectMap.Target_FaerieFire_2 = SpellEffectMap.Target_FaerieFire
SpellEffectMap.Target_FaerieFire_3 = SpellEffectMap.Target_FaerieFire
SpellEffectMap.Target_FaerieFire_4 = SpellEffectMap.Target_FaerieFire
SpellEffectMap.Target_FaerieFire_5 = SpellEffectMap.Target_FaerieFire
SpellEffectMap.Target_FaerieFire_6 = SpellEffectMap.Target_FaerieFire
SpellEffectMap.Target_FaerieFire_7 = SpellEffectMap.Target_FaerieFire
SpellEffectMap.Target_FaerieFire_8 = SpellEffectMap.Target_FaerieFire
SpellEffectMap.Target_FaerieFire_9 = SpellEffectMap.Target_FaerieFire

SpellEffectMap.Target_DissonantWhispers = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), AdvantageOnFrightened(), true)"]]
SpellEffectMap.Target_DissonantWhispers_2 = SpellEffectMap.Target_DissonantWhispers
SpellEffectMap.Target_DissonantWhispers_3 = SpellEffectMap.Target_DissonantWhispers
SpellEffectMap.Target_DissonantWhispers_4 = SpellEffectMap.Target_DissonantWhispers
SpellEffectMap.Target_DissonantWhispers_5 = SpellEffectMap.Target_DissonantWhispers
SpellEffectMap.Target_DissonantWhispers_6 = SpellEffectMap.Target_DissonantWhispers
SpellEffectMap.Target_DissonantWhispers_7 = SpellEffectMap.Target_DissonantWhispers
SpellEffectMap.Target_DissonantWhispers_8 = SpellEffectMap.Target_DissonantWhispers
SpellEffectMap.Target_DissonantWhispers_9 = SpellEffectMap.Target_DissonantWhispers

SpellEffectMap.Zone_GustOfWind = [[data "SpellRoll" "not SavingThrow(Ability.Strength, SourceSpellDC(), false, true)"]]
SpellEffectMap.Zone_GustOfWind_3 = SpellEffectMap.Zone_GustOfWind
SpellEffectMap.Zone_GustOfWind_4 = SpellEffectMap.Zone_GustOfWind
SpellEffectMap.Zone_GustOfWind_5 = SpellEffectMap.Zone_GustOfWind
SpellEffectMap.Zone_GustOfWind_6 = SpellEffectMap.Zone_GustOfWind
SpellEffectMap.Zone_GustOfWind_7 = SpellEffectMap.Zone_GustOfWind
SpellEffectMap.Zone_GustOfWind_8 = SpellEffectMap.Zone_GustOfWind
SpellEffectMap.Zone_GustOfWind_9 = SpellEffectMap.Zone_GustOfWind

SpellEffectMap.Projectile_AcidArrow = [[data "SpellRoll" ""
data "SpellFail" ""]]
SpellEffectMap.Projectile_AcidArrow_3 = SpellEffectMap.Projectile_AcidArrow
SpellEffectMap.Projectile_AcidArrow_4 = SpellEffectMap.Projectile_AcidArrow
SpellEffectMap.Projectile_AcidArrow_5 = SpellEffectMap.Projectile_AcidArrow
SpellEffectMap.Projectile_AcidArrow_6 = SpellEffectMap.Projectile_AcidArrow
SpellEffectMap.Projectile_AcidArrow_7 = SpellEffectMap.Projectile_AcidArrow
SpellEffectMap.Projectile_AcidArrow_8 = SpellEffectMap.Projectile_AcidArrow
SpellEffectMap.Projectile_AcidArrow_9 = SpellEffectMap.Projectile_AcidArrow

SpellEffectMap.Target_Shatter = [[data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(),false,true)"]]
SpellEffectMap.Target_Shatter_3 = SpellEffectMap.Target_Shatter
SpellEffectMap.Target_Shatter_4 = SpellEffectMap.Target_Shatter
SpellEffectMap.Target_Shatter_5 = SpellEffectMap.Target_Shatter
SpellEffectMap.Target_Shatter_6 = SpellEffectMap.Target_Shatter
SpellEffectMap.Target_Shatter_7 = SpellEffectMap.Target_Shatter
SpellEffectMap.Target_Shatter_8 = SpellEffectMap.Target_Shatter
SpellEffectMap.Target_Shatter_9 = SpellEffectMap.Target_Shatter

SpellEffectMap.Target_CalmEmotions = [[data "SpellRoll" ""]]
SpellEffectMap.Target_CalmEmotions_3 = SpellEffectMap.Target_CalmEmotions
SpellEffectMap.Target_CalmEmotions_4 = SpellEffectMap.Target_CalmEmotions
SpellEffectMap.Target_CalmEmotions_5 = SpellEffectMap.Target_CalmEmotions
SpellEffectMap.Target_CalmEmotions_6 = SpellEffectMap.Target_CalmEmotions
SpellEffectMap.Target_CalmEmotions_7 = SpellEffectMap.Target_CalmEmotions
SpellEffectMap.Target_CalmEmotions_8 = SpellEffectMap.Target_CalmEmotions
SpellEffectMap.Target_CalmEmotions_9 = SpellEffectMap.Target_CalmEmotions

SpellEffectMap.Target_Enthrall = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(),AdvantageOnCharmPerson(),true)"]]
SpellEffectMap.Target_Enthrall_3 = SpellEffectMap.Target_Enthrall
SpellEffectMap.Target_Enthrall_4 = SpellEffectMap.Target_Enthrall
SpellEffectMap.Target_Enthrall_5 = SpellEffectMap.Target_Enthrall
SpellEffectMap.Target_Enthrall_6 = SpellEffectMap.Target_Enthrall
SpellEffectMap.Target_Enthrall_7 = SpellEffectMap.Target_Enthrall
SpellEffectMap.Target_Enthrall_8 = SpellEffectMap.Target_Enthrall
SpellEffectMap.Target_Enthrall_9 = SpellEffectMap.Target_Enthrall

SpellEffectMap.Zone_Fear = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), AdvantageOnFrightened(), true)"]]
SpellEffectMap.Zone_Fear_4 = SpellEffectMap.Zone_Fear
SpellEffectMap.Zone_Fear_5 = SpellEffectMap.Zone_Fear
SpellEffectMap.Zone_Fear_6 = SpellEffectMap.Zone_Fear
SpellEffectMap.Zone_Fear_7 = SpellEffectMap.Zone_Fear
SpellEffectMap.Zone_Fear_8 = SpellEffectMap.Zone_Fear
SpellEffectMap.Zone_Fear_9 = SpellEffectMap.Zone_Fear

SpellEffectMap.Target_HypnoticPattern = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), AdvantageOnCharmed(), true)"]]
SpellEffectMap.Target_HypnoticPattern_4 = SpellEffectMap.Target_HypnoticPattern
SpellEffectMap.Target_HypnoticPattern_5 = SpellEffectMap.Target_HypnoticPattern
SpellEffectMap.Target_HypnoticPattern_6 = SpellEffectMap.Target_HypnoticPattern
SpellEffectMap.Target_HypnoticPattern_7 = SpellEffectMap.Target_HypnoticPattern
SpellEffectMap.Target_HypnoticPattern_8 = SpellEffectMap.Target_HypnoticPattern
SpellEffectMap.Target_HypnoticPattern_9 = SpellEffectMap.Target_HypnoticPattern

SpellEffectMap.Target_SleetStorm = [[data "SpellRoll" ""]]
SpellEffectMap.Target_SleetStorm_4 = SpellEffectMap.Target_SleetStorm
SpellEffectMap.Target_SleetStorm_5 = SpellEffectMap.Target_SleetStorm
SpellEffectMap.Target_SleetStorm_6 = SpellEffectMap.Target_SleetStorm
SpellEffectMap.Target_SleetStorm_7 = SpellEffectMap.Target_SleetStorm
SpellEffectMap.Target_SleetStorm_8 = SpellEffectMap.Target_SleetStorm
SpellEffectMap.Target_SleetStorm_9 = SpellEffectMap.Target_SleetStorm

SpellEffectMap.Target_StinkingCloud = [[data "SpellRoll" ""]]
SpellEffectMap.Target_StinkingCloud_4 = SpellEffectMap.Target_StinkingCloud
SpellEffectMap.Target_StinkingCloud_5 = SpellEffectMap.Target_StinkingCloud
SpellEffectMap.Target_StinkingCloud_6 = SpellEffectMap.Target_StinkingCloud
SpellEffectMap.Target_StinkingCloud_7 = SpellEffectMap.Target_StinkingCloud
SpellEffectMap.Target_StinkingCloud_8 = SpellEffectMap.Target_StinkingCloud
SpellEffectMap.Target_StinkingCloud_9 = SpellEffectMap.Target_StinkingCloud

SpellEffectMap.Target_VampiricTouch = [[data "SpellRoll" ""]]
SpellEffectMap.Target_VampiricTouch_4 = SpellEffectMap.Target_VampiricTouch
SpellEffectMap.Target_VampiricTouch_5 = SpellEffectMap.Target_VampiricTouch
SpellEffectMap.Target_VampiricTouch_6 = SpellEffectMap.Target_VampiricTouch
SpellEffectMap.Target_VampiricTouch_7 = SpellEffectMap.Target_VampiricTouch
SpellEffectMap.Target_VampiricTouch_8 = SpellEffectMap.Target_VampiricTouch
SpellEffectMap.Target_VampiricTouch_9 = SpellEffectMap.Target_VampiricTouch

SpellEffectMap.Target_HungerOfHadar = [[data "SpellRoll" ""]]
SpellEffectMap.Target_HungerOfHadar_4 = SpellEffectMap.Target_HungerOfHadar
SpellEffectMap.Target_HungerOfHadar_5 = SpellEffectMap.Target_HungerOfHadar
SpellEffectMap.Target_HungerOfHadar_6 = SpellEffectMap.Target_HungerOfHadar
SpellEffectMap.Target_HungerOfHadar_7 = SpellEffectMap.Target_HungerOfHadar
SpellEffectMap.Target_HungerOfHadar_8 = SpellEffectMap.Target_HungerOfHadar
SpellEffectMap.Target_HungerOfHadar_9 = SpellEffectMap.Target_HungerOfHadar

SpellEffectMap.Target_PlantGrowth = [[data "SpellRoll" ""]]
SpellEffectMap.Target_PlantGrowth_4 = SpellEffectMap.Target_PlantGrowth
SpellEffectMap.Target_PlantGrowth_5 = SpellEffectMap.Target_PlantGrowth
SpellEffectMap.Target_PlantGrowth_6 = SpellEffectMap.Target_PlantGrowth
SpellEffectMap.Target_PlantGrowth_7 = SpellEffectMap.Target_PlantGrowth
SpellEffectMap.Target_PlantGrowth_8 = SpellEffectMap.Target_PlantGrowth
SpellEffectMap.Target_PlantGrowth_9 = SpellEffectMap.Target_PlantGrowth

SpellEffectMap.Target_Blight = [[data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(), false, true"]]
SpellEffectMap.Target_Blight_5 = SpellEffectMap.Target_Blight
SpellEffectMap.Target_Blight_6 = SpellEffectMap.Target_Blight
SpellEffectMap.Target_Blight_7 = SpellEffectMap.Target_Blight
SpellEffectMap.Target_Blight_8 = SpellEffectMap.Target_Blight
SpellEffectMap.Target_Blight_9 = SpellEffectMap.Target_Blight

SpellEffectMap.Target_Confusion = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"]]
SpellEffectMap.Target_Confusion_5 = SpellEffectMap.Target_Confusion
SpellEffectMap.Target_Confusion_6 = SpellEffectMap.Target_Confusion
SpellEffectMap.Target_Confusion_7 = SpellEffectMap.Target_Confusion
SpellEffectMap.Target_Confusion_8 = SpellEffectMap.Target_Confusion
SpellEffectMap.Target_Confusion_9 = SpellEffectMap.Target_Confusion

SpellEffectMap.Target_BlackTentacles = [[data "SpellRoll" ""]]
SpellEffectMap.Target_BlackTentacles_5 = SpellEffectMap.Target_BlackTentacles
SpellEffectMap.Target_BlackTentacles_6 = SpellEffectMap.Target_BlackTentacles
SpellEffectMap.Target_BlackTentacles_7 = SpellEffectMap.Target_BlackTentacles
SpellEffectMap.Target_BlackTentacles_8 = SpellEffectMap.Target_BlackTentacles
SpellEffectMap.Target_BlackTentacles_9 = SpellEffectMap.Target_BlackTentacles

SpellEffectMap.Target_IceStorm = [[data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"]]
SpellEffectMap.Target_IceStorm_5 = SpellEffectMap.Target_IceStorm
SpellEffectMap.Target_IceStorm_6 = SpellEffectMap.Target_IceStorm
SpellEffectMap.Target_IceStorm_7 = SpellEffectMap.Target_IceStorm
SpellEffectMap.Target_IceStorm_8 = SpellEffectMap.Target_IceStorm
SpellEffectMap.Target_IceStorm_9 = SpellEffectMap.Target_IceStorm

SpellEffectMap.Target_PhantasmalKiller = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"]]
SpellEffectMap.Target_PhantasmalKiller_5 = SpellEffectMap.Target_PhantasmalKiller
SpellEffectMap.Target_PhantasmalKiller_6 = SpellEffectMap.Target_PhantasmalKiller
SpellEffectMap.Target_PhantasmalKiller_7 = SpellEffectMap.Target_PhantasmalKiller
SpellEffectMap.Target_PhantasmalKiller_8 = SpellEffectMap.Target_PhantasmalKiller
SpellEffectMap.Target_PhantasmalKiller_9 = SpellEffectMap.Target_PhantasmalKiller

SpellEffectMap.Target_DominateBeast = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), AdvantageOnCharmed(), true)"]]
SpellEffectMap.Target_DominateBeast_5 = SpellEffectMap.Target_DominateBeast
SpellEffectMap.Target_DominateBeast_6 = SpellEffectMap.Target_DominateBeast
SpellEffectMap.Target_DominateBeast_7 = SpellEffectMap.Target_DominateBeast
SpellEffectMap.Target_DominateBeast_8 = SpellEffectMap.Target_DominateBeast
SpellEffectMap.Target_DominateBeast_9 = SpellEffectMap.Target_DominateBeast

SpellEffectMap.Zone_ConeOfCold = [[data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(), false, true)"]]
SpellEffectMap.Zone_ConeOfCold_6 = SpellEffectMap.Zone_ConeOfCold
SpellEffectMap.Zone_ConeOfCold_7 = SpellEffectMap.Zone_ConeOfCold
SpellEffectMap.Zone_ConeOfCold_8 = SpellEffectMap.Zone_ConeOfCold
SpellEffectMap.Zone_ConeOfCold_9 = SpellEffectMap.Zone_ConeOfCold

SpellEffectMap.Target_PlanarBinding = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), AdvantageOnCharmed(), true)"]]
SpellEffectMap.Target_PlanarBinding_6 = SpellEffectMap.Target_PlanarBinding
SpellEffectMap.Target_PlanarBinding_7 = SpellEffectMap.Target_PlanarBinding
SpellEffectMap.Target_PlanarBinding_8 = SpellEffectMap.Target_PlanarBinding
SpellEffectMap.Target_PlanarBinding_9 = SpellEffectMap.Target_PlanarBinding

SpellEffectMap.Target_InsectPlague = [[data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(), false, true)"]]
SpellEffectMap.Target_InsectPlague_6 = SpellEffectMap.Target_InsectPlague
SpellEffectMap.Target_InsectPlague_7 = SpellEffectMap.Target_InsectPlague
SpellEffectMap.Target_InsectPlague_8 = SpellEffectMap.Target_InsectPlague
SpellEffectMap.Target_InsectPlague_9 = SpellEffectMap.Target_InsectPlague

SpellEffectMap.Target_FlameStrike = [[data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"]]
SpellEffectMap.Target_FlameStrike_6 = SpellEffectMap.Target_FlameStrike
SpellEffectMap.Target_FlameStrike_7 = SpellEffectMap.Target_FlameStrike
SpellEffectMap.Target_FlameStrike_8 = SpellEffectMap.Target_FlameStrike
SpellEffectMap.Target_FlameStrike_9 = SpellEffectMap.Target_FlameStrike

SpellEffectMap.Projectile_ChainLightning = [[data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"]]
SpellEffectMap.Projectile_ChainLightning_7 = SpellEffectMap.Projectile_ChainLightning
SpellEffectMap.Projectile_ChainLightning_8 = SpellEffectMap.Projectile_ChainLightning
SpellEffectMap.Projectile_ChainLightning_9 = SpellEffectMap.Projectile_ChainLightning

SpellEffectMap.Target_CircleOfDeath = [[data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(), false, true)"]]
SpellEffectMap.Target_CircleOfDeath_7 = SpellEffectMap.Target_CircleOfDeath
SpellEffectMap.Target_CircleOfDeath_8 = SpellEffectMap.Target_CircleOfDeath
SpellEffectMap.Target_CircleOfDeath_9 = SpellEffectMap.Target_CircleOfDeath

SpellEffectMap.Projectile_Disintegrate = [[data "SpellRoll" "not SavingThrow(Ability.Dexterity, SourceSpellDC(), false, true)"]]
SpellEffectMap.Projectile_Disintegrate_7 = SpellEffectMap.Projectile_Disintegrate
SpellEffectMap.Projectile_Disintegrate_8 = SpellEffectMap.Projectile_Disintegrate
SpellEffectMap.Projectile_Disintegrate_9 = SpellEffectMap.Projectile_Disintegrate

SpellEffectMap.Target_Eyebite_Asleep = [[data "SpellRoll" "not SavingThrow(Ability.Wisdom, SourceSpellDC(), false, true)"]]
SpellEffectMap.Target_Eyebite_Asleep_7 = SpellEffectMap.Target_Eyebite_Asleep
SpellEffectMap.Target_Eyebite_Asleep_8 = SpellEffectMap.Target_Eyebite_Asleep
SpellEffectMap.Target_Eyebite_Asleep_9 = SpellEffectMap.Target_Eyebite_Asleep
SpellEffectMap.Target_Eyebite_Panicked = SpellEffectMap.Target_Eyebite_Asleep
SpellEffectMap.Target_Eyebite_Panicked_7 = SpellEffectMap.Target_Eyebite_Asleep
SpellEffectMap.Target_Eyebite_Panicked_8 = SpellEffectMap.Target_Eyebite_Asleep
SpellEffectMap.Target_Eyebite_Panicked_9 = SpellEffectMap.Target_Eyebite_Asleep
SpellEffectMap.Target_Eyebite_Sickened = SpellEffectMap.Target_Eyebite_Asleep
SpellEffectMap.Target_Eyebite_Sickened_7 = SpellEffectMap.Target_Eyebite_Asleep
SpellEffectMap.Target_Eyebite_Sickened_8 = SpellEffectMap.Target_Eyebite_Asleep
SpellEffectMap.Target_Eyebite_Sickened_9 = SpellEffectMap.Target_Eyebite_Asleep

SpellEffectMap.Target_FleshToStone = [[data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(), false, true)"]]
SpellEffectMap.Target_FleshToStone_7 = SpellEffectMap.Target_FleshToStone
SpellEffectMap.Target_FleshToStone_8 = SpellEffectMap.Target_FleshToStone
SpellEffectMap.Target_FleshToStone_9 = SpellEffectMap.Target_FleshToStone

SpellEffectMap.Target_GlobeOfInvulnerability = [[data "SpellRoll" ""]]
SpellEffectMap.Target_GlobeOfInvulnerability_7 = SpellEffectMap.Target_GlobeOfInvulnerability
SpellEffectMap.Target_GlobeOfInvulnerability_8 = SpellEffectMap.Target_GlobeOfInvulnerability
SpellEffectMap.Target_GlobeOfInvulnerability_9 = SpellEffectMap.Target_GlobeOfInvulnerability

SpellEffectMap.Target_IrresistibleDance = [[data "SpellRoll" ""]]
SpellEffectMap.Target_IrresistibleDance_7 = SpellEffectMap.Target_IrresistibleDance
SpellEffectMap.Target_IrresistibleDance_8 = SpellEffectMap.Target_IrresistibleDance
SpellEffectMap.Target_IrresistibleDance_9 = SpellEffectMap.Target_IrresistibleDance

SpellEffectMap.Zone_Sunbeam = [[data "SpellRoll" "not SavingThrow(Ability.Constitution, SourceSpellDC(), false, true)"]]
SpellEffectMap.Zone_Sunbeam_7 = SpellEffectMap.Zone_Sunbeam
SpellEffectMap.Zone_Sunbeam_8 = SpellEffectMap.Zone_Sunbeam
SpellEffectMap.Zone_Sunbeam_9 = SpellEffectMap.Zone_Sunbeam

return SpellEffectMap