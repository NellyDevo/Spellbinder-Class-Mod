local sideName = Ext.IsServer() and "SERVER" or "CLIENT"
local timeSinceLast = {}
local timeBuffer = 1000

local function handle(componentType, action, entity, compType, component)
    local timeSince = timeSinceLast[componentType] or 0
    local time = Ext.Utils.MonotonicTime()
    if time - timeSince >= timeBuffer then
        local name = string.format("%s_%s_%s_%s.json", time, componentType, action, sideName)
        Ext.Utils.PrintError(name, Ext.Types.GetObjectType(entity), compType, Ext.Types.GetObjectType(component))
        Ext.IO.SaveFile(("Dumps/All/%s"):format(name), Ext.DumpExport(entity:GetAllComponents()))
        timeSinceLast[componentType] = time
    end
end

local function DumpDeferredComponent(componentType, dumpComponent)
    pcall(function ()
        Ext.Entity.OnCreate(componentType, function (entity, compType, component)
            handle(componentType, "CREATED", entity, compType, component)
        end)
        Ext.Entity.OnDestroy(componentType, function (entity, compType, component)
            handle(componentType, "DESTROYED", entity, compType, component)
        end)
    end)
end

for k,v in pairs(Ext.Enums.ExtComponentType) do
    DumpDeferredComponent(tostring(v))
end