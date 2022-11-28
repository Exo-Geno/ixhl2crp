-- Item Statistics

ITEM.name = "Crowbar"
ITEM.description = "A slightly rusty looking crowbar."
ITEM.category = "Weapons"

-- Item Configuration

ITEM.model = "models/weapons/w_crowbar.mdl"
ITEM.skin = 0

-- Item Inventory Size Configuration

ITEM.width = 1
ITEM.height = 2

-- Item Custom Configuration

ITEM.class = "weapon_crowbar"
ITEM.weaponCategory = "melee"

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(66.62, 77.77, 172.12),
	ang = Angle(59.09, 228.7, 0),
	fov = 9.01
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