local PANEL = {}

function PANEL:Init()

end

function PANEL:OnChoose(color)
	-- nothing, gets over-ridden
end

function PANEL:SetBodyGroups(body_groups)

end

vgui.Register('DPointShopBodyGroupChooser', PANEL, 'DFrame')
