CLASS.name = "Metropolitan Police Recruit"
CLASS.faction = FACTION_MPF
CLASS.isDefault = true

function CLASS:CanSwitchTo(client)
	return Schema:IsCombineRank(client:Name(), "RCT")
end

CLASS_MPR = CLASS.index