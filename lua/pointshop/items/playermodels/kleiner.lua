ITEM.Name = 'Kleiner'
ITEM.Price = 250
ITEM.Model = 'models/player/kleiner.mdl'
ITEM.Modify = true

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
	PS:ShowPlyColorChooser(self, modifications)
end

function ITEM:OnModify(ply, modifications)
	local color = Vector(modifications.plycolor[1], modifications.plycolor[2], modifications.plycolor[3])
	ply:SetPlayerColor(ply, color)
end

function ITEM:SanitizeTable(modifications)
	local picked_color = Color(modifications.plycolor.r or 255,
	                           modifications.plycolor.g or 255,
	                           modifications.plycolor.b or 255)

	return
	{
		plycolor = modifications.plycolor and picked_color or Color(255, 255, 255)
	}
end
