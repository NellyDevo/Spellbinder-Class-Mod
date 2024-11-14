Ext.Events.StatsLoaded:Subscribe(function (e)
    local counterspellStat = Ext.Stats.Get("Interrupt_Counterspell") --[[@as InterruptData]]
    counterspellStat.Conditions = counterspellStat.Conditions .. " and not ~HasUseCosts('FauxTagIsBoundSpell')"
    counterspellStat:Sync()
end)