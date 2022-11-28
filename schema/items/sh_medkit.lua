
ITEM.name = "First Aid Kit"
ITEM.model = Model("models/willardnetworks/skills/medkit.mdl")
ITEM.description = "A Bag with medical items,in case of severe injury."
ITEM.category = "Medical"
ITEM.price = 65

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 50, 100))
	end
}