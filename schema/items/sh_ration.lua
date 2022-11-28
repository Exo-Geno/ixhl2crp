
ITEM.name = "Minimal Tier Ration"
ITEM.model = Model("models/weapons/w_packati.mdl")
ITEM.description = "A shrink-wrapped packet containing some food and money."
ITEM.items = {"baking_bread_slice", "drink_boboriginal"}

ITEM.functions.Open = {
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()

		for k, v in ipairs(itemTable.items) do
			if (!character:GetInventory():Add(v)) then
				ix.item.Spawn(v, client)
			end
		end

		character:GiveMoney(ix.config.Get("rationTokens", 10))
		client:EmitSound("ambient/fire/mtov_flame2.wav", 75, math.random(160, 180), 0.35)
	end
}
