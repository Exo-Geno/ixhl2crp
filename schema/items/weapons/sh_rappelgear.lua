ITEM.name = "Rappel Kit"
ITEM.description = "A Metropolice Rappel Gear."
ITEM.model = "models/props_junk/cardboard_box004a.mdl"
ITEM.class = "rappel_gear"
ITEM.weaponCategory = "melee"
ITEM.flag = "v"
ITEM.width = 2
ITEM.height = 2
ITEM.iconCam = {
	ang	= Angle(-0.23955784738064, 270.44906616211, 0),
	fov	= 10.780103254469,
	pos	= Vector(0, 200, 0)
}


local cop = Color(0, 213, 255)

function ITEM:PopulateTooltip(tooltip)
    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(cop, tooltip)
    data:SetText("Property of the Universal Union")
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()
end

ITEM.bDropOnDeath = true