AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")


function ENT:Initialize()

	self:SetModel("models/hunter/blocks/cube05x05x05.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_NONE)
	self:SetSolid(SOLID_VPHYSICS)


	local phys = self:GetPhysicsObject()

	 
	 	if phys:IsValid() then
	 		phys:Wake()
	 	end
	 

	 self:SetCollisionGroup(COLLISION_GROUP_WEAPON)
	 self:SetTrigger(true)
	 self:DrawShadow(false)
	end


	function ENT:StartTouch(ent)
		if ent:IsPlayer() then
			ent:ChatPrint("YUMMMMYYYY")
			if ent:Health()<100 then
				local healthtogive = 25
				while ent:Health()<100 and healthtogive>0 do
					ent:SetHealth(ent:Health()+1)
					healthtogive = healthtogive - 1
				end
			end
			self:Remove()
		end


	end

