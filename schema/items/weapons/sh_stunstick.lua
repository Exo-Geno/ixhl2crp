-- Item Statistics

ITEM.name = "Stunstick"
ITEM.description = "An electrified baton that can be used to stun disobedient citizens."
ITEM.category = "Weapons"

-- Item Configuration

ITEM.model = "models/weapons/w_stunbaton.mdl"
ITEM.skin = 0

-- Item Inventory Size Configuration

ITEM.width = 1
ITEM.height = 2

-- Item Custom Configuration

ITEM.class = "ix_stunstick"
ITEM.weaponCategory = "melee"

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(98.23, 69.47, 159.77),
	ang = Angle(52.79, 214.56, 0),
	fov = 6.87
}

local cop = Color(68, 141, 259)

function ITEM:PopulateTooltip(tooltip)
    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(cop, tooltip)
    data:SetText("Property of the Metropolitan Police Constabulary")
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()
end

ITEM.bDropOnDeath = true