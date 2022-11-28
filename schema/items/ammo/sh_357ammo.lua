ITEM.name = ".357 Magnum Bullet Box"
ITEM.model = "models/items/357ammo.mdl"
ITEM.ammo = "357" -- type of the ammo
ITEM.ammoAmount = 12 -- amount of the ammo
ITEM.description = "A Box that contains %s of .357 Ammo"
ITEM.classes = {CLASS_EOW}
ITEM.price = 10
ITEM.flag = "V"

local red = Color(255, 0, 0)

function ITEM:PopulateTooltip(tooltip)
    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(red, tooltip)
    data:SetText("Red Contraband")
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()
end