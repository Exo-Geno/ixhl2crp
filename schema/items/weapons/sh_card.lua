
ITEM.name = "Combine Card"
ITEM.model = Model("models/c17_downtown/key-card_alliance.mdl")
ITEM.description = "A Combine Key Card,used for certain Lock types (ONLY USEFUL IN CITY 32,DO NOT USE ANYWHERE ELSE)"
ITEM.weaponCategory = "grenade"
ITEM.class = "combine_card"
ITEM.width = 1
ITEM.height = 1

local cop = Color(0, 213, 255)

function ITEM:PopulateTooltip(tooltip)
    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(cop, tooltip)
    data:SetText("Property of the Universal Union")
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()
end
