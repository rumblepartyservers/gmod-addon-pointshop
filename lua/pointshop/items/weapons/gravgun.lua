ITEM.Name = 'Gravity Gun'
ITEM.Price = 0
ITEM.Model = 'models/weapons/w_physics.mdl'
ITEM.WeaponClass = 'weapon_physcannon'
ITEM.SingleUse = true
ITEM.AdminOnly = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end