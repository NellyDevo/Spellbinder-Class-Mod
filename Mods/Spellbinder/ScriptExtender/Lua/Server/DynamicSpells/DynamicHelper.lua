local DynHelper = {}

---@param spell SpellData
---@param spellID string
DynHelper.DetermineChargesForSpell = function (spell, spellID)
    if spell.Level == 0 then return 4 end
    if spell.AmountOfTargets then
        local targetCount = tonumber(spell.AmountOfTargets)
        if targetCount and targetCount > 0 then return targetCount end
    end
    return 1
end

local function generateHandle()
    return "h"..string.gsub("xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx", "[xy-]", function(c)
        if c == "x" then
            return string.format("%x", Ext.Math.Random(0, 0xf))
        elseif c == "y" then
            return string.format("%x", Ext.Math.Random(8, 0xb))
        elseif c == "-" then
            return "g"
        end
    end)
end

local alreadyGenerated = {}
local combiner = [[%s
%s]]
local locaTemplate = '<content contentuid="%s" version="1">%s</content>'
---@param text string
---@param output table
DynHelper.GenerateTranslationEntry = function(text, output)
    if alreadyGenerated[text] then
        return alreadyGenerated[text]
    end
    local handle = generateHandle()
    output.loca = string.format(combiner, output.loca, string.format(locaTemplate, handle, text))
    alreadyGenerated[text] = handle
    return handle
end

DynHelper.isSpellBindable = function(spell)
    if spell == nil then return false end
    if spell.PowerLevel > 0 then return false end
    if spell.SpellType ~= "Target" and spell.SpellType ~= "Projectile" then return false end
    if spell.SpellSchool == "None" then return false end
    local foundFlag = false
    for _,flag in pairs(spell.SpellFlags) do
        if flag == "IsSpell" then
            foundFlag = true
            break
        end
    end
    if not spell.SpellSuccess and not spell.SpellProperties then return false end
    if not foundFlag then return false end
    if spell.AreaRadius ~= 0 then return false end --TODO: Arcane Sniper level 15 impl
    if string.find(spell.TargetConditions, "not Character()", 1, true) then return false end
    if string.find(spell.TargetConditions, "not Enemy()", 1, true) then return false end
    return true
end

DynHelper.SplitString = function(input, seperator)
    if seperator == nil then
        seperator = "%s"
    end
    local t = {}
    for str in string.gmatch(input, "([^"..seperator.."]+)") do
      table.insert(t, str)
    end
    return t
end

return DynHelper