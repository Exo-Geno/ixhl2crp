ITEM.name = "RPG Missile"
ITEM.model = "models/weapons/w_missile_closed.mdl"
ITEM.ammo = "rpg_round" -- type of the ammo
ITEM.ammoAmount = 1 -- amount of the ammo
ITEM.width = 2
ITEM.description = "A Package of %s Rockets"
ITEM.iconCam = {
	ang	= Angle(-0.70499622821808, 268.25439453125, 0),
	fov	= 12.085652091515,
	pos	= Vector(7, 200, -2)
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