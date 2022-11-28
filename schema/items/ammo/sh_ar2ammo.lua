ITEM.name = "Dark-Energy Pulse Ammunition"
ITEM.model = "models/items/combine_rifle_cartridge01.mdl"
ITEM.ammo = "ar2" -- type of the ammo
ITEM.ammoAmount = 30 -- amount of the ammo
ITEM.description = "A Cartridge that contains %s of AR2 Ammo"
ITEM.classes = {CLASS_EOW}

local red = Color(255, 0, 0)

function ITEM:PopulateTooltip(tooltip)
    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(red, tooltip)
    data:SetText("Red Contraband")
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()
end