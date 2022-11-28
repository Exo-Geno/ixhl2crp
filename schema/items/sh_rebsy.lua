
ITEM.name = "Medi-Gel Syringe"
ITEM.model = Model("models/willardnetworks/skills/hpsyringe.mdl")
ITEM.description = "A small syringe with green liquid. It is in an old syringe,so it probably was made by a rebel"
ITEM.category = "Medical"
ITEM.price = 40

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 20, client:GetMaxHealth()))
	end
}
