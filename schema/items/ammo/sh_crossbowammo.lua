ITEM.name = "Crossbow Bolts"
ITEM.model = "models/Items/CrossbowRounds.mdl"
ITEM.ammo = "XBowBolt" -- type of the ammo
ITEM.ammoAmount = 5 -- amount of the ammo
ITEM.description = "A Bundle of %s Crossbow Bolts"

local red = Color(255, 0, 0)

function ITEM:PopulateTooltip(tooltip)
    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(red, tooltip)
    data:SetText("Red Contraband")
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()
end