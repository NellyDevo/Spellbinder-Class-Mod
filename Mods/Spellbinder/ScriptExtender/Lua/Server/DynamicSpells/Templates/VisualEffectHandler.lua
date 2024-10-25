local VFX = {}

local SHV_Mist_Necro = [[data "StatusEffect" "ed4dc026-086c-4f7c-9af1-1ac530acdf9f"]]
local SHV_Mist_Cyan = [[data "StatusEffect" "ed4dc026-0a7a-43a3-a01a-79fa23ebd22e"]]
local SHV_Mist_Green = [[data "StatusEffect" "ed4dc026-5bd6-4f90-8bdf-3c29015a9b94"]]
local SHV_Mist_Blue = [[data "StatusEffect" "ed4dc026-1bcf-4b26-b2db-d0e431c31dbe"]]
local SHV_Mist_Purple = [[data "StatusEffect" "ed4dc026-896e-46cb-906a-9c3b25641421"]]
local SHV_Mist_Red = [[data "StatusEffect" "ed4dc026-de83-4f37-87a1-c35dfee7867b"]]
local SHV_Mist_Brass = [[data "StatusEffect" "ed4dc026-7e27-44b4-bbd4-758813eb69d0"]]
local SHV_Mist_Light = [[data "StatusEffect" "ed4dc026-7fc0-460b-8a4b-d8802aa2ea1b"]]
local SHV_Mist_Chaos = [[data "StatusEffect" "ed4dc026-5771-45bc-b5fe-c89f14bfd325"]]
local SHV_Mist_Copper = [[data "StatusEffect" "ed4dc026-b868-41aa-8e57-2cbc71f138c9"]]
local SHV_Mist_Silver = [[data "StatusEffect" "ed4dc026-76ba-45e2-9428-9bc15fa5bf34"]]

local SHV_Lightning_Chilled = [[data "StatusEffect" "cebfcdab-086a-48cb-a3d8-fcd9399d0db0"]]
local SHV_Lightning_Green = [[data "StatusEffect" "cebfcdab-ce61-47e6-89ef-ad931c0e78f1"]]
local SHV_Lightning_Blue = [[data "StatusEffect" "cebfcdab-a6fb-4fbe-a459-07ca7378e8b2"]]
local SHV_Lightning_Purple = [[data "StatusEffect" "cebfcdab-7ee5-40b3-a68c-08abc9335a1d"]]
local SHV_Lightning_Red = [[data "StatusEffect" "cebfcdab-6c7e-4a16-83ce-10447fcc5c18"]]
local SHV_Lightning_Yellow = [[data "StatusEffect" "cebfcdab-de2c-4cd3-be2b-4555821bd4fc"]]
local SHV_Lightning_Light = [[data "StatusEffect" "cebfcdab-c690-46ae-b187-84e9b748b177"]]
local SHV_Lightning_Necro = [[data "StatusEffect" "cebfcdab-02fc-4a9f-9983-ede11689a36f"]]
local SHV_Lightning_Chaos = [[data "StatusEffect" "cebfcdab-7061-4fb9-9729-d6662e142b9c"]]

local SHV_Frost_Chilled = [[data "StatusEffect" "cabafbec-6843-4d20-9822-578787502b5e"]]
local SHV_Frost_Green = [[data "StatusEffect" "cabafbec-df08-47a8-93b3-6be0b1c63906"]]
local SHV_Frost_Blue = [[data "StatusEffect" "cabafbec-7091-4916-91b7-0fa6dd81e613"]]
local SHV_Frost_Purple = [[data "StatusEffect" "cabafbec-1d27-4dfc-9531-ee986861f5ca"]]
local SHV_Frost_Red = [[data "StatusEffect" "cabafbec-1b00-4df2-bbda-2307364bbfca"]]
local SHV_Frost_Yellow = [[data "StatusEffect" "cabafbec-fa84-41f5-8eb9-fae3c073c10c"]]
local SHV_Frost_Light = [[data "StatusEffect" "cabafbec-ba4e-483d-a691-cd1f9bdbffb2"]]
local SHV_Frost_Necro = [[data "StatusEffect" "cabafbec-8f34-4067-9bee-c35049df4a22"]]
local SHV_Frost_Chaos = [[data "StatusEffect" "cabafbec-061c-483d-bdf0-9879ef37859c"]]

local SHV_Everflame_Green = [[data "StatusEffectOverrideForItems" "44d77ebf-8ac5-4c95-b2b5-419424d48aa9"]]
local SHV_Everflame_Blue = [[data "StatusEffectOverrideForItems" "44d77ebf-6843-4d20-9822-578787502b5e"]]
local SHV_Everflame_Purple = [[data "StatusEffectOverrideForItems" "44d77ebf-360c-4be3-ab35-2dcce55b2c5d"]]
local SHV_Everflame_Red = [[data "StatusEffectOverrideForItems" "44d77ebf-264f-4907-be33-efe63d04c70e"]]
local SHV_Everflame_Chaos = [[data "StatusEffectOverrideForItems" "44d77ebf-dea9-4c0d-aafb-036ed6e515a8"]]
local SHV_Everflame_White = [[data "StatusEffectOverrideForItems" "44d77ebf-09a3-4b67-89c2-d0b6e33fe5b4"]]
local SHV_Everflame_Black = [[data "StatusEffectOverrideForItems" "44d77ebf-18df-41be-b936-9fd0d55a862f"]]

local BG3_Poison = [[data "StatusEffectOverride" "86b94e03-b0d5-46aa-9045-88cdc5aeff47"]]

local idOverrides = {
    Target_Light = SHV_Mist_Light,
    Target_MindSliver = SHV_Mist_Purple,
    Target_HideousLaughter = SHV_Mist_Chaos,
    Target_Blindness = SHV_Mist_Necro,
    Target_CrownOfMadness = SHV_Everflame_Chaos,
    Target_HoldPerson = SHV_Lightning_Yellow,
    Target_Invisibility = SHV_Mist_Silver,
    Target_Levitate = SHV_Frost_Chaos,
    Target_MagicWeapon = SHV_Everflame_White,
    Projectile_RayOfEnfeeblement = SHV_Lightning_Green,
    Target_Suggestion = SHV_Mist_Blue,
    Target_DispelMagic = SHV_Lightning_Chaos,
    Target_Haste = SHV_Lightning_Green,
    Target_RemoveCurse = SHV_Mist_Light,
    Target_Slow = SHV_Frost_Red,
    Target_Banishment = SHV_Mist_Chaos,
    Target_CharmMonster = SHV_Mist_Cyan,
    Target_ResilientSphere = SHV_Lightning_Chaos,
    Target_Polymorph = SHV_Everflame_Chaos,
    Target_Contagion_BlindingSickness = SHV_Mist_Necro,
    Target_Contagion_FilthFever = BG3_Poison,
    Target_Contagion_FleshRot = SHV_Mist_Red,
    Target_Contagion_Mindfire = SHV_Everflame_Black,
    Target_Contagion_Seizure = SHV_Lightning_Necro,
    Target_Contagion_SlimyDoom = SHV_Mist_Green,
    Target_DominatePerson = SHV_Mist_Cyan,
    Target_HoldMonster = SHV_Lightning_Yellow
}

local damageTypesToVFX = {
    Necrotic = SHV_Mist_Necro,
    Fire = SHV_Everflame_Red,
    None = SHV_Frost_Light,
    Poison = BG3_Poison,
    Cold = SHV_Frost_Chilled,
    Lightning = SHV_Lightning_Purple,
    Acid = SHV_Mist_Green,
    Thunder = SHV_Lightning_Light,
    Force = SHV_Frost_Red,
    Psychic = SHV_Mist_Purple
}

VFX.GetVFXFor = function(spellID, spellStat)
    local retVal = idOverrides[spellID]
    if not retVal then
        retVal = damageTypesToVFX[spellStat.DamageType]
    end
    if not retVal then
        retVal = [[data "StatusEffect" "TODO"]]
    end
    return retVal
end

return VFX