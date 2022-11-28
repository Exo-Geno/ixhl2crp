ITEM.name = "Heckler & Koch GMbH MP7A4"
ITEM.description = "A compact, fully automatic sub-machine gun chambered in 4.6x30mm. It has the inscription 'MASCHINEN PISTOLE 7 AUSFÜHRUNG 4' "
ITEM.model = "models/weapons/w_smg1.mdl"
ITEM.class = "weapon_smg1"
ITEM.weaponCategory = "primary"
ITEM.classes = {CLASS_EMP, CLASS_EOW}
ITEM.flag = "V"
ITEM.width = 3
ITEM.height = 2
ITEM.iconCam = {
	ang	= Angle(-0.020070368424058, 270.40155029297, 0),
	fov	= 7.2253324508038,
	pos	= Vector(0, 200, -1)
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