CLASS.name = "Specialist Police Functionary"
CLASS.faction = FACTION_MPF
CLASS.isDefault = false


function CLASS:CanSwitchTo(client)
	return Schema:IsCombineRank(client:Name(), "s3" , "s2" , "s1")
end

CLASS_EMP = CLASS.index
