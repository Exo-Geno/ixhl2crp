ITEM.name = "M40 Gas Mask"
ITEM.description = "Provides adequate protection against harmful fumes, gases, and some foul odours. it is also fairly compact"
ITEM.category = "Clothing"
ITEM.model = "models/willardnetworks/update_items/m40_item.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.gasImmunity = true
ITEM.iconCam = {
    pos = Vector(-117.67, -98.6, 71.58),
    ang = Angle(25, 400, 0),
    fov = 4.96
}

local Green = Color(0, 255, 0)

function ITEM:PopulateTooltip(tooltip)
    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(Green, tooltip)
    data:SetText("Green Contraband")
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()
end

ITEM.outfitCategory = "Face"
ITEM.bodyGroups = {
    ["face"] = 3
}

ITEM.allowedModels = {
    "models/willardnetworks/citizens/female_01.mdl",
    "models/willardnetworks/citizens/female_02.mdl",
    "models/willardnetworks/citizens/female_03.mdl",
    "models/willardnetworks/citizens/female_04.mdl",
    "models/willardnetworks/citizens/female_06.mdl",
    "models/willardnetworks/citizens/female_07.mdl",
    
    "models/willardnetworks/citizens/male01.mdl",
    "models/willardnetworks/citizens/male02.mdl",
    "models/willardnetworks/citizens/male03.mdl",
    "models/willardnetworks/citizens/male04.mdl",
    "models/willardnetworks/citizens/male05.mdl",
    "models/willardnetworks/citizens/male06.mdl",
    "models/willardnetworks/citizens/male07.mdl",
    "models/willardnetworks/citizens/male08.mdl",
    "models/willardnetworks/citizens/male09.mdl",
    "models/willardnetworks/citizens/male10.mdl",
}
