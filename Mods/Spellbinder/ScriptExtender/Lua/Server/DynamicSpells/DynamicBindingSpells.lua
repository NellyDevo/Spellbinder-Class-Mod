local Spells = Ext.Require("Server/DynamicSpells/Templates/SpellTemplate.lua")
local Statuses = Ext.Require("Server/DynamicSpells/Templates/StatusTemplate.lua")
local Passives = Ext.Require("Server/DynamicSpells/Templates/PassiveTemplate.lua")
local Interrupts = Ext.Require("Server/DynamicSpells/Templates/InterruptTemplate.lua")
local DynHelper = Ext.Require("Server/DynamicSpells/DynamicHelper.lua")

local comment = "//This file was generated automatically from Server/DynamicSpells/DynamicBindingSpells.lua"
local combiner = [[%s

%s]]
local function generateData(spellID, spell, output)
    local spellData = Spells.CreateSpells(spellID, spell, output)
    spellData = string.format(combiner, spellData, Spells.CreatePayload(spellID, spell, output))
    spellData = string.format(combiner, spellData, Statuses.CreateStatuses(spellID, spell, output))
    spellData = string.format(combiner, spellData, Passives.CreatePassive(spellID, spell, output))
    return string.format(combiner, spellData, Interrupts.CreateInterrupt(spellID, spell, output))
end

local function generateWithUpcasts(spellID, spell, output)
    local spellData = generateData(spellID, spell, output)
    if spell.Level > 0 then
        for i=spell.Level,9,1 do
            local upcastID = spellID .. "_" .. i
            local upcastSpell = Ext.Stats.Get(upcastID)
            if upcastSpell then
                spellData = string.format(combiner, spellData, generateData(upcastID, upcastSpell, output))
            end
        end
    end
    if output.AllBoundSpellData then
        output.AllBoundSpellData = string.format(combiner, output.AllBoundSpellData, spellData)
    else
        output["Spellbinder_Bind_" .. spellID] = string.format(combiner, comment, spellData)
    end
end

local function handleSpell(spellID, output)
    local spell = Ext.Stats.Get(spellID) --[[@as SpellData]]
    if spell then
        if DynHelper.isSpellBindable(spell) then
            if spell.ContainerSpells and spell.ContainerSpells ~= "" then
                local containedSpellTable = DynHelper.SplitString(spell.ContainerSpells, ";")
                for _,containedID in pairs(containedSpellTable) do
                    local containedSpell = Ext.Stats.Get(containedID) --[[@as SpellData]]
                    generateWithUpcasts(containedID, containedSpell, output)
                end
            else
                generateWithUpcasts(spellID, spell, output)
            end
        end
    else
        _P("No spell found with ID: .. spellID")
    end

end

local function interpretArgs(argTable)
    local retVal = {
        SpellLists = {},
        Spells = {},
        Separated = false
    }
    local guidPattern = "%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x"
    if argTable ~= nil then
        for i,arg in pairs(argTable) do
            if arg == "help" then
                return nil
            end
            if i == "n" then
            elseif arg == "!Separated" then
                retVal.Separated = true
            elseif arg:match(guidPattern) then
                retVal.SpellLists:insert(arg)
            else
                retVal.Spells:insert(arg)
            end
        end
    end
    return retVal
end

local defaultSpellLists = {
    "32893c8b-b54e-4168-83af-4f6dc7ce9388",
    "56e512fe-093c-47b6-bada-f5b4c379f01b",
    "d360c3b2-4eff-4263-b87b-9a8de6e62522",
    "012a228e-66f0-480f-ac19-e181822caf77",
    "963990c5-6d40-4881-80ac-6bdce6314f49",
    "966a37fb-e0d7-43b1-864c-625440e6a315"
}
Ext.RegisterConsoleCommand("GenerateBoundSpells", function (cmd, ...)
    local args = interpretArgs(table.pack(...))
    if not args then
        _P("This command accepts any number of arguments. Each argument can either be \"help\", \"!Separated\", a spell list guid, or a spell ID.")
        _P("-- help: causes the command to not run and instead display these messages. real helpful I know :)")
        _P("-- !Separated: when this flag is set, each spell will spit out a different file with all the bound spell data related to it. By default it makes one very large file.")
        _P("-- spell ID: causes the command to manually add this spell ID, if found, to the list of spells to generate")
        _P("-- spell list guid: adds this spell list, if it exists, to the list of spells to process.")
        _P("-- If no spell lists and no spell IDs are specified, the command will generate all the spells from the default spellbinder spell lists.")
        _P("-- The command also generates new localization handles as appropriate. Those entries are dumped into a file named \"GeneratedLocalization.txt\" and you simply need to paste the contents into your own .xml localization file")
        return
    end
    local output = {
        AllBoundSpellData = comment,
        GeneratedLocalization = comment
    }
    if args.Separated then
        output.AllBoundSpellData = nil
    end
    local lists = args.SpellLists
    if #args.SpellLists == 0 and #args.Spells == 0 then
        lists = defaultSpellLists
    end
    for _,listID in pairs(lists) do
        local list = Ext.StaticData.Get(listID, "SpellList")
        if list ~= nil then
            for _,spellID in pairs(list.Spells) do
                handleSpell(spellID, output)
            end
        else
            _P("No spell list found with guid: " .. listID)
        end
    end
    for _,spellID in pairs(args.Spells) do
        handleSpell(spellID, output)
    end
    for outputFile,outputResult in pairs(output) do
        Ext.IO.SaveFile(outputFile .. ".txt", outputResult)
        if output.AllBoundSpellData then
            _P("Successfully saved \"" .. outputFile .. ".txt" .. "\" to Script Extender folder.")
        end
    end
    if not output.AllBoundSpellData then
        _P("Successfully saved " .. #output .. " files to Script Extender folder.")
    end
end)