
FACTION.name = "Enslaved Vortigaunt"
FACTION.description = "--."
FACTION.color = Color(0, 102, 102 )
FACTION.models = {"models/willardnetworks/vortigaunt.mdl"}
FACTION.weapons = {"swep_vortigaunt_sweep"}
FACTION.isDefault = false
FACTION.isGloballyRecognized = false

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetModel(self.models[1])
end

FACTION_ENSLAVEDVORTIGAUNT = FACTION.index
