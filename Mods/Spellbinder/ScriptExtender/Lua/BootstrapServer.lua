Ext.Require("Server/CharacterCreationWeapon.lua")
Ext.Require("Server/WeaponMastery.lua")
Ext.Require("Server/AbilityScalingFix.lua")
Ext.Require("Server/DynamicSpells/DynamicBindingSpells.lua")
Ext.Require("Server/BoundSpells/BoundWeaponThrown.lua")
Ext.Require("Server/BoundSpells/RemoveBoundSpellTag.lua")
Ext.Require("Server/BoundSpells/BoundSpellDynamicDuration.lua")
Ext.Require("Server/UnlockBindSpells.lua")
Ext.Require("Server/SpectralArrows.lua")

function LazyExport(fileName, entity)
    Ext.IO.SaveFile(fileName .. ".json", Ext.DumpExport(entity:GetAllComponents()))
end