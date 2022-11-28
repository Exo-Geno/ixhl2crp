-- Item Statistics

ITEM.name = "Crossbow"
ITEM.description = "A home-made crossbow that uses energy heated metal rods."
ITEM.category = "Weapons"

-- Item Configuration

ITEM.model = "models/weapons/w_crossbow.mdl"
ITEM.skin = 0

-- Item Inventory Size Configuration

ITEM.width = 5
ITEM.height = 2

-- Item Custom Configuration

ITEM.class = "weapon_crossbow"
ITEM.weaponCategory = "primary"

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(-18.23, -41.6, 201.17),
	ang = Angle(74.7, 58.54, 0),
	fov = 14.35
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