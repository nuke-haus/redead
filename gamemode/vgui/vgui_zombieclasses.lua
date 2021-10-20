local PANEL = {}

GM.ZombieNames = {}
GM.ZombieNames[CLASS_RUNNER] = "Runner"
GM.ZombieNames[CLASS_BANSHEE] = "Banshee"
GM.ZombieNames[CLASS_CONTAGION] = "Contagion"
GM.ZombieNames[CLASS_LEAPER] = "Leaper"

GM.ZombieDescriptions = {}
GM.ZombieDescriptions[CLASS_RUNNER] = "The Runner: A resilient and agile zombie. Capable of infecting humans with its claws."
GM.ZombieDescriptions[CLASS_BANSHEE] = "The Banshee: A highly radioactive zombie. Capable of disorienting humans with its scream."
GM.ZombieDescriptions[CLASS_CONTAGION] = "The Contagion: A bloated, festering zombie. When killed it will burst into a shower of acid."
GM.ZombieDescriptions[CLASS_LEAPER] = "The Leaper: A bony, mutated zombie. Capable of jumping great distances and making humans bleed with its claws."

function PANEL:Init()

	//self:SetTitle( "" )
	//self:ShowCloseButton( false )
	self:ChooseParent()
	
	self.Items = {}
	
	for k,v in pairs( GAMEMODE.ZombieNames ) do

		local desc = GAMEMODE.ZombieDescriptions[k] or "TEH"
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
	
	draw.SimpleText( "Class Menu", "ItemDisplayFont", self:GetWide() * 0.5, 10, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )

end

derma.DefineControl( "ZombieClassPicker", "A zombie class picker menu.", PANEL, "PanelBase" )
