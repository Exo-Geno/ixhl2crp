ITEM.name = "20 Millimetre Grenades"
ITEM.model = "models/weapons/w_defuser.mdl"
ITEM.ammo = "smg1_grenade" -- type of the ammo
ITEM.ammoAmount = 5 -- amount of the ammo
ITEM.description = "A Box that contains %s of SMG Ammo"
ITEM.classes = {CLASS_EMP, CLASS_EOW}
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