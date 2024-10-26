local Spells = Ext.Require("Server/DynamicSpells/Templates/SpellTemplate.lua")
local Statuses = Ext.Require("Server/DynamicSpells/Templates/StatusTemplate.lua")
local Passives = Ext.Require("Server/DynamicSpells/Templates/PassiveTemplate.lua")
local Interrupts = Ext.Require("Server/DynamicSpells/Templates/InterruptTemplate.lua")
local DynHelper = Ext.Require("Server/DynamicSpells/DynamicHelper.lua")

local combiner = [[%s

%s]]
local function generateData(spellID, spell, output)
    output.data = string.format(combiner, output.data, Spells.CreateSpells(spellID, spell, output))
    output.data = string.format(combiner, output.data, Spells.CreatePayload(spellID, spell, output))
    output.data = string.format(combiner, output.data, Statuses.CreateStatuses(spellID, spell, output))
    output.data = string.format(combiner, output.data, Passives.CreatePassive(spellID, spell, output))
    output.data = string.format(combiner, output.data, Interrupts.CreateInterrupt(spellID, spell, output))
end

local function handleSpell(spellID, spell, output)
    generateData(spellID, spell, output)
    if spell.Level > 0 then
        for i=spell.Level,9,1 do
            local upcastID = spellID .. "_" .. i
            local upcastSpell = Ext.Stats.Get(upcastID)
            if upcastSpell then
                generateData(upcastID, upcastSpell, output)
            end
        end
    end
end

local supportedSpellLists = {
    "32893c8b-b54e-4168-83af-4f6dc7ce9388",
    "56e512fe-093c-47b6-bada-f5b4c379f01b",
    "d360c3b2-4eff-4263-b87b-9a8de6e62522",
    "012a228e-66f0-480f-ac19-e181822caf77",
    "963990c5-6d40-4881-80ac-6bdce6314f49",
    "966a37fb-e0d7-43b1-864c-625440e6a315"
}
Ext.RegisterConsoleCommand("GenerateBoundSpells", function (cmd, ...)
    local output = {
        data = "//This file was generated automatically from Server/DynamicSpells/DynamicBindingSpells.lua",
        loca = ""
    }
    for _,listID in pairs(supportedSpellLists) do
        local list = Ext.StaticData.Get(listID, "SpellList")
        for _,spellID in pairs(list.Spells) do
            local spell = Ext.Stats.Get(spellID) --[[@as SpellData]]
            if DynHelper.isSpellBindable(spell) then
                if spell.ContainerSpells and spell.ContainerSpells ~= "" then
                    local containedSpellTable = DynHelper.SplitString(spell.ContainerSpells, ";")
                    for _,containedID in pairs(containedSpellTable) do
                        local containedSpell = Ext.Stats.Get(containedID) --[[@as SpellData]]
                        handleSpell(containedID, containedSpell, output)
                    end
                else
                    handleSpell(spellID, spell, output)
                end
            end
        end
    end
    Ext.IO.SaveFile("Spellbinder_BindableSpells.txt", output.data)
    Ext.IO.SaveFile("Spellbinder_LocaDump.txt", output.loca)
end)