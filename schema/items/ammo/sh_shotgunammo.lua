ITEM.name = "12 Gauge Shotgun Shells"
ITEM.model = "models/Items/BoxBuckshot.mdl"
ITEM.ammo = "buckshot" -- type of the ammo
ITEM.ammoAmount = 15 -- amount of the ammo
ITEM.description = "A Box of %s Shotgun Shells"

local red = Color(255, 0, 0)

function ITEM:PopulateTooltip(tooltip)
    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(red, tooltip)
    data:SetText("Red Contraband")
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()
end