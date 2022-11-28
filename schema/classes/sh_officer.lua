CLASS.name = "Metropolitan Commanding Functionary"
CLASS.faction = FACTION_MPF

function CLASS:CanSwitchTo(client)
	local name = client:Name()
	local bStatus = false

	for k, v in ipairs({ "o3", "o2", "o1" }) do
		if (Schema:IsCombineRank(name, v)) then
			bStatus = true

			break
		end
	end

	return bStatus
end

CLASS_MCF = CLASS.index