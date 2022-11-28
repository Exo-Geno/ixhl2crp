
ITEM.name = "Bandaid"
ITEM.model = Model("models/willardnetworks/skills/bandaid.mdl")
ITEM.description = "A box with Bandaids to cure your boo boos."
ITEM.category = "Medical"
ITEM.price = 18

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 20, 100))
	end
}
