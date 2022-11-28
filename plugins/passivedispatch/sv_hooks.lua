

function PLUGIN:EmitRandomChatter(player)
	local randomSounds = {
		"npc/overwatch/cityvoice/f_innactionisconspiracy_spkr.wav",
		"npc/overwatch/cityvoice/f_trainstation_offworldrelocation_spkr.wav",
		"npc/overwatch/cityvoice/fprison_missionfailurereminder.wav"
	}
	

	
	local randomSound = randomSounds[ math.random(1, #randomSounds) ];
		if(randomSound == "npc/overwatch/cityvoice/f_innactionisconspiracy_spkr.wav") then
			ix.chat.Send(player, "dispatchs", "Citizen reminder. Inaction is conspiracy. Report counter behaviour to a Civil Protection team immediately.", true)
		end
		if(randomSound == "npc/overwatch/cityvoice/f_trainstation_offworldrelocation_spkr.wav") then
			ix.chat.Send(player, "dispatchs", "Citizen notice. Failure to co-operate will result in permanent off-world relocation",true)
		end
		if(randomSound == "npc/overwatch/cityvoice/fprison_missionfailurereminder.wav") then
			ix.chat.Send(player, "dispatchs", "Attention ground units. Mission failure will result in permanent off-world assignment. Code reminder: SACRIFICE, COAGULATE, PLAN.",true)
		end
		
	player:EmitSound( randomSound, 60)
end

-- Color(150, 100, 100)

function PLUGIN:Tick()
	for k, v in ipairs( player.GetAll() ) do
		
			local curTime = CurTime()
			
			if (!self.nextChatterEmit) then 
				self.nextChatterEmit = curTime + math.random(580, 600)
			end
			
			if ( (curTime >= self.nextChatterEmit) ) then
				self.nextChatterEmit = nil
				
				self:EmitRandomChatter(v)
			end

	end
end