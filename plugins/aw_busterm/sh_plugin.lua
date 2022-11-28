PLUGIN.name = "Medicine"
PLUGIN.author = "Alan Wake"
PLUGIN.description = "Adds a terminal for buy items"

ix.config.Add("DefaultLicencePrice", 100, "How much will be cost licence for players.", nil, {
	data = {min = 1, max = 50000},
	category = "Business Terminal"
})
ix.config.Add("TerminalDefaultPrice", 10, "How much will be cost item without price.", nil, {
	data = {min = 1, max = 50000},
	category = "Business Terminal"
})
PLUGIN.LicencesWhichPlayersCantBuy = { -- Licences, what you want to disable for all players. They will can't buy it. 
    ["Weapons"] = true,
}

PLUGIN.ItemCategories = {} -- Don't touch or your players will be crashed

PLUGIN.LicencesPrices = { -- Prices on Licences. You can find their names in business interface. Default is 100 tokens.
    ["Permits"] = 250,
}
function PLUGIN:StoreCategories()
    for k,v in pairs(ix.item.list)do
        self.ItemCategories[v.category] = true
    end
end
ix.util.Include("sv_plugin.lua")

if CLIENT then
    netstream.Hook("aw_ShowTerminalMenu",function() vgui.Create("aw_TerminalInterface") end)
end
PLUGIN:StoreCategories()