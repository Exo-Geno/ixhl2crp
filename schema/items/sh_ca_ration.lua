ITEM.name = "High Priority Tier Ration"
ITEM.model = Model("models/weapons/w_packatp.mdl")
ITEM.description = "A shrink-wrapped packet containing some food and money."
ITEM.items = {"comfort_pancake", "luxury_choc" , "baking_treat" , "fruit_apple" , "baking_doughnut" , "luxury_cheddar" , "drink_premium_water" , "comfort_fish" , "drink_red_wine"}

ITEM.functions.Open = {
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()

		for k, v in ipairs(itemTable.items) do
			if (!character:GetInventory():Add(v)) then
				ix.item.Spawn(v, client)
			end
		end

		character:GiveMoney(ix.config.Get("rationTokens",100))
		client:EmitSound("ambient/fire/mtov_flame2.wav", 75, math.random(160, 180), 0.35)
	end
}