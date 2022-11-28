-- Item Statistics

ITEM.name = "Overwatch Standard Issue Pulse Assault Rifle"
ITEM.description = "A dark energy powered assault rifle."
ITEM.category = "Weapons"

-- Item Configuration

ITEM.model = "models/weapons/w_irifle.mdl"
ITEM.skin = 0

-- Item Inventory Size Configuration

ITEM.width = 6
ITEM.height = 2

-- Item Custom Configuration

ITEM.class = "weapon_ar2"
ITEM.weaponCategory = "primary"

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(0, 200, 0),
	ang = Angle(-0.57, 271.79, 0),
	fov = 13.18
}

local soldier = Color(165, 38, 38)

function ITEM:PopulateTooltip(tooltip)
    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(soldier, tooltip)
    data:SetText("Property of the Overwatch Transhuman Arm")
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()
end
