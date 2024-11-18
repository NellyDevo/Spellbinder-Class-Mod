local function requireAll(prefix, fileNameList)
    for _,fileName in pairs(fileNameList) do
        Ext.Require(prefix .. "/" .. fileName .. ".lua")
    end
end
Ext.Require("Server/DynamicSpells/DynamicBindingSpells.lua")
requireAll("Server/BoundSpells", {"BoundWeaponThrown","RemoveBoundSpellTag","UnlockBindSpells","RemoveRecentlyBoundStatus","ReweaveToBind"})
requireAll("Server", {"CharacterCreationWeapon","WeaponMastery","AbilityScalingFix","SpectralArrows","BattleDance"})

--Ext.Require("NuclearDumps.lua")

function LazyExport(fileName, entity)
    Ext.IO.SaveFile(fileName .. ".json", Ext.DumpExport(entity:GetAllComponents()))
end