-- Item Statistics

ITEM.name = "Rocket Propelled Grenade Launcher"
ITEM.description = "A Modified RPG,made by the rebels."
ITEM.category = "Weapons"

-- Item Configuration

ITEM.model = "models/weapons/w_rocket_launcher.mdl"
ITEM.skin = 0

-- Item Inventory Size Configuration

ITEM.width = 8
ITEM.height = 2

-- Item Custom Configuration

ITEM.class = "weapon_rpg"
ITEM.weaponCategory = "primary"

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(0, 200, 0),
	ang = Angle(-0.67, 275.21, 0),
	fov = 15.14
}

ITEM.bDropOnDeath = true

local red = Color(255, 0, 0)

function ITEM:PopulateTooltip(tooltip)
    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(red, tooltip)
    data:SetText("Red Contraband")
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()
end