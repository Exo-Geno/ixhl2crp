ITEM.name = "Black Padded Pants"
ITEM.description = "A pair of padded black pants, often worn by resistance figures."
ITEM.category = "Clothing"
ITEM.model = "models/willardnetworks/clothingitems/legs_rebel3.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.iconCam = {
    pos = Vector(-0.76, -0.13, 200),
    ang = Angle(90.22, 189.79, 0),
    fov = 6.03
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

ITEM.outfitCategory = "Legs"

ITEM.bodyGroups = {
    ["legs"] = 8
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