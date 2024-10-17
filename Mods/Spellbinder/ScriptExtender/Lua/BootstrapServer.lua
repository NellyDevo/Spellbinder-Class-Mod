Ext.Require("Server/CharacterCreationWeapon.lua")
Ext.Require("Server/WeaponMastery.lua")
Ext.Require("Server/AbilityScalingFix.lua")

function LazyExport(fileName, entity)
    Ext.IO.SaveFile(fileName .. ".json", Ext.DumpExport(entity:GetAllComponents()))
end