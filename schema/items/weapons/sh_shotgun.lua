ITEM.name = "LUIGI FRANCHI SPAS-12A2"
ITEM.description = "A powerful pump-action version of the iconic SPAS-12 shotgun. It has the inscription 'CALIBRO 12' "
ITEM.model = "models/weapons/w_shotgun.mdl"
ITEM.class = "weapon_shotgun"
ITEM.weaponCategory = "primary"
ITEM.classes = {CLASS_EOW}
ITEM.width = 4
ITEM.height = 2
ITEM.iconCam = {
    pos = Vector(0, 200, 1),
    ang = Angle(0, 270, 0),
    fov = 10
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

ITEM.bDropOnDeath = true