ITEM.name = "Loyalist Tier Ration"
ITEM.model = Model("models/weapons/w_packatl.mdl")
ITEM.description = "A shrink-wrapped packet containing some food and money."
ITEM.items = {"comfort_beef", "luxury_choc" , "artificial_skewer" , "fruit_apple" , "baking_doughnut"}

ITEM.functions.Open = {
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()

		for k, v in ipairs(itemTable.items) do
			if (!character:GetInventory():Add(v)) then
				ix.item.Spawn(v, client)
			end
		end

		character:GiveMoney(ix.config.Get("rationTokens", 20))
		client:EmitSound("ambient/fire/mtov_flame2.wav", 75, math.random(160, 180), 0.35)
	end
}