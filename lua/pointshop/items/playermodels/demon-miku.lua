ITEM.Name = 'Demon Miku'
ITEM.Price = 250
ITEM.Model = 'models/player/dewobedil/vocaloid/demon_miku/default_f.mdl' -- default_p.mdl

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
