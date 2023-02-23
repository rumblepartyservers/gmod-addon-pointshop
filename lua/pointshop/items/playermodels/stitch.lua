ITEM.Name = 'Stitch'
ITEM.Price = 250
ITEM.Model = 'models/stitch_player.mdl' --stitch_rebel.mdl
ITEM.Modify = true
ITEM.BodyGroup = true

function ITEM:OnEquip(ply, modifications)
	if not ply._OldModel then
		ply._OldModel = ply:GetModel()
	end
	
	timer.Simple(1, function() ply:SetModel(self.Model) end)
end

function ITEM:OnHolster(ply)
	if ply._OldModel then
		ply:SetModel(ply._OldModel)
	end
end

function ITEM:PlayerSetModel(ply)
	ply:SetModel(self.Model)
end

function ITEM:Modify(modifiers)
	for k, v in pairs(modifiers) do
		print(tostring(k)..' - '..tostring(v))
	end
end

function ITEM:BodyGroup(modifiers)
	for k, v in pairs(modifiers) do
		print(tostring(k)..' - '..tostring(v))
	end
end
