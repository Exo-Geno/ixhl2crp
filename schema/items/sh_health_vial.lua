
ITEM.name = "Medical Purpose Syringe"
ITEM.model = Model("models/willardnetworks/syringefull.mdl")
ITEM.description = "A small syringe with green liquid. It states that it is Civil Protection Property"
ITEM.category = "Medical"
ITEM.price = 40

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 20, client:GetMaxHealth()))
	end
}
