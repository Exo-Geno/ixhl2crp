-- Item Statistics

ITEM.name = "Colt Python .357 Magnum"
ITEM.description = "A sidearm utilising .357 Caliber ammunition."
ITEM.category = "Weapons"

-- Item Configuration

ITEM.model = "models/weapons/w_357.mdl"
ITEM.skin = 0

-- Item Inventory Size Configuration


-- Item Custom Configuration

ITEM.class = "weapon_357"
ITEM.weaponCategory = "sidearm"


ITEM.width = 2
ITEM.height = 1
ITEM.iconCam = {
	pos = Vector(6.06, -734.27, 4.43),
	ang = Angle(0.46, 90.62, 0),
	fov = 1.35
}



local red = Color(255, 0, 0)

function ITEM:PopulateTooltip(tooltip)
    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(red, tooltip)
    data:SetText("Red Contraband")
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()
end



