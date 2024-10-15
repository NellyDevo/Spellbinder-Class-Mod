Ext.Require("Server/CharacterCreationWeapon.lua")
Ext.Require("Server/WeaponMastery.lua")

function LazyExport(fileName, entity)
    Ext.IO.SaveFile(fileName .. ".json", Ext.DumpExport(entity:GetAllComponents()))
end