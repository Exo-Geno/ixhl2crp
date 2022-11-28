local PLUGIN = PLUGIN
ENT.Type = "anim"
ENT.PrintName = "Business Terminal"
ENT.Category = "HL2 RP"
ENT.Spawnable = true
ENT.AdminOnly = true
ENT.bNoPersist = true
function ENT:Initialize()
	if (SERVER) then
		self:SetModel("models/props_combine/combine_interface002.mdl")
		self:SetUseType(SIMPLE_USE)
		self:SetMoveType(MOVETYPE_NONE)
		self:DrawShadow(true)
		self:SetSolid(SOLID_BBOX)
		self:PhysicsInit(SOLID_BBOX)
		local physObj = self:GetPhysicsObject()

		if (IsValid(physObj)) then
			physObj:EnableMotion(false)
			physObj:Sleep()
		end
	end
end
function ENT:Use(player)
    if IsValid(player) and player:IsPlayer() then
        PLUGIN:Interact(player,self)
    end
end