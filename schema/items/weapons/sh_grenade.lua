ITEM.name = "Grenade"
ITEM.description = "A small, green colored MK3A2 grenade that explodes a few seconds after it is thrown."
ITEM.model = "models/weapons/w_grenade.mdl"
ITEM.class = "weapon_frag"
ITEM.weaponCategory = "grenade"
ITEM.classes = {CLASS_EOW}
ITEM.flag = "V"
ITEM.width = 1
ITEM.height = 1

ITEM.bDropOnDeath = true

local cop = Color(0, 213, 255)

function ITEM:PopulateTooltip(tooltip)
    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(cop, tooltip)
    data:SetText("Property of the Universal Union")
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()
end