include("shared.lua")

function ENT:Initialize()
self.csModel = ClientsideModel("models/food/hotdog.mdl")
self.csModel:SetModelScale(3,0)
self:DrawShadow(false)
self:MarkShadowAsDirty()
end

function ENT:Draw()
	local coinAngle = (CurTime()*90)%360
	local coinHeight = math.sin(CurTime()*3)*5
	self.csModel:SetPos(self:GetPos()+Vector(0,0,coinHeight))
	self.csModel:SetAngles(Angle(0,coinAngle,0))
	end



	function ENT:OnRemove()

self.csModel:Remove()

	end 