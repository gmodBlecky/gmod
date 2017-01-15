AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

hook.Add("PlayerDeath", "death", function(ply)
	local col = ply:GetPlayerColor()
	local pos = ply:GetPos()
	local vel = ply:GetVelocity()
	function Initialize()
		self:Spawn()
		self:SetPos(pos)
		//self:SetVelocity(vel)
		self:SetModel("models/props_lab/box01a.mdl")

		self:SetColor(col)
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)

		local phys = self:GetPhysicsObject()

		if phys:IsValid() then
			phys:Wake()
		end
	end
end)