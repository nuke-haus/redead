local PANEL = {}

GM.ZombieNames = {}
GM.ZombieNames[CLASS_RUNNER] = "rd_zombie_class_runner"
GM.ZombieNames[CLASS_BANSHEE] = "rd_zombie_class_banshee"
GM.ZombieNames[CLASS_CONTAGION] = "rd_zombie_class_contagion"
GM.ZombieNames[CLASS_LEAPER] = "rd_zombie_class_leaper"

GM.ZombieDescriptions = {}
GM.ZombieDescriptions[CLASS_RUNNER] = "rd_zombie_class_runner_text"
GM.ZombieDescriptions[CLASS_BANSHEE] = "rd_zombie_class_banshee_text"
GM.ZombieDescriptions[CLASS_CONTAGION] = "rd_zombie_class_contagion_text"
GM.ZombieDescriptions[CLASS_LEAPER] = "rd_zombie_class_leaper_text"

function PANEL:Init()

	//self:SetTitle( "" )
	//self:ShowCloseButton( false )
	self:ChooseParent()
	
	self.Items = {}
	
	for k,v in pairs( GAMEMODE.ZombieNames ) do

		local desc = translate.Get( GAMEMODE.ZombieDescriptions[k] ) or "TEH"
		local logo = GAMEMODE.ZombieLogos[k] or "brick/brick_model"
		
		local button = vgui.Create( "DImageButton", self )
		button:SetImage( logo )
		button:SetSize( 100, 100 )
		button.OnMousePressed = function() RunConsoleCommand( "changeclass", k ) surface.PlaySound( "npc/zombie/claw_strike1.wav" ) self:Remove() end
		button.ID = id

		local label = vgui.Create( "DLabel", self )
		label:SetWrap( true )
		label:SetText( desc )
		label:SetFont( "ItemDisplayFont" )
		label:SetSize( 300, 100 )
			
		table.insert( self.Items, { button, label } )
		
	end
	
end

function PANEL:Think()

	self.Dragging = false

end

function PANEL:ChooseParent()
	
end

function PANEL:GetPadding()

	return 5
	
end

function PANEL:PerformLayout()

	local x,y = self:GetPadding(), self:GetPadding() + 50

	for k,v in pairs( self.Items ) do
	
		v[1]:SetPos( x, y )
		v[2]:SetPos( x + 100 + self:GetPadding(), y )
		
		y = y + 100 + self:GetPadding()
	
	end
	
	self:SizeToContents()

end

function PANEL:Paint()

	draw.RoundedBox( 4, 0, 0, self:GetWide(), self:GetTall(), Color( 0, 0, 0, 255 ) )
	draw.RoundedBox( 4, 1, 1, self:GetWide() - 2, self:GetTall() - 2, Color( 150, 150, 150, 150 ) )
	
	draw.SimpleText( translate.Get( "rd_ui_zombie_class_menu" ), "ItemDisplayFont", self:GetWide() * 0.5, 10, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )

end

derma.DefineControl( "ZombieClassPicker", "A zombie class picker menu.", PANEL, "PanelBase" )
