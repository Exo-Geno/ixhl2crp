
FACTION.name = "City 32 Metropolitan Police Constabulary"
FACTION.description = "A metropolice unit working as Civil Protection."
FACTION.color = Color(50, 100, 150)
FACTION.pay = 10
FACTION.models = 
{
	
	"models/wn7new/metropolice/male_01.mdl",
    "models/wn7new/metropolice/female_01.mdl",
	"models/wn7new/metropolice/male_02.mdl",
    "models/wn7new/metropolice/female_02.mdl",
	"models/wn7new/metropolice/male_03.mdl",
    "models/wn7new/metropolice/female_03.mdl",
	"models/wn7new/metropolice/male_04.mdl",
    "models/wn7new/metropolice/female_04.mdl",
	"models/wn7new/metropolice/male_05.mdl",
    "models/wn7new/metropolice/female_06.mdl",
	"models/wn7new/metropolice/male_06.mdl",
    "models/wn7new/metropolice/female_07.mdl",
	"models/wn7new/metropolice/male_07.mdl",
    "models/wn7new/metropolice/male_08.mdl",
	"models/wn7new/metropolice/male_09.mdl",

}
FACTION.isDefault = false
FACTION.isGloballyRecognized = true
FACTION.runSounds = {[0] = "NPC_MetroPolice.RunFootstepLeft", [1] = "NPC_MetroPolice.RunFootstepRight"}

function FACTION:OnSpawn(ply)
    ply:SetHealth(100)
    ply:SetMaxHealth(100)
    ply:SetArmor(50)
    ply:SetMaxArmor(100)
end

function FACTION:GetDefaultName(client)
	return "C32:MPC-i5." .. Schema:ZeroNumber(math.random(1, 99999), 5), true
end

function FACTION:OnTransferred(character)
	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

function FACTION:OnNameChanged(client, oldValue, value)
	local character = client:GetCharacter()


	if Schema:IsCombineRank(oldValue, "SCN") and Schema:IsCombineRank(value, "SCN")
	 then
		character:JoinClass(CLASS_MPS)
	end

end

FACTION_MPF = FACTION.index
