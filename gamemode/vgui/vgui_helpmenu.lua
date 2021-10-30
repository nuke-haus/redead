local PANEL = {}

PANEL.Text = { "rd_ui_help_menu_html_code",
"rd_ui_help_menu_text",
"rd_ui_help_menu_text2",
"rd_ui_help_menu_text3",
"rd_ui_help_menu_text4",
"rd_ui_help_menu_text5",
"rd_ui_help_menu_text6",
"rd_ui_help_menu_text7",
"rd_ui_help_menu_text8",
"rd_ui_help_menu_text9",
"rd_ui_help_menu_text10",
"rd_ui_help_menu_text11",
"rd_ui_help_menu_tip" }

PANEL.ButtonText = { "rd_ui_help_menu_button_text",
"rd_ui_help_menu_button_text2",
"rd_ui_help_menu_button_text3",
"rd_ui_help_menu_button_text4",
"rd_ui_help_menu_button_text5",
"rd_ui_help_menu_button_text6",
"rd_ui_help_menu_button_text7",
"rd_ui_help_menu_button_text8",
"rd_ui_help_menu_button_text9",
"rd_ui_help_menu_button_text10",
"rd_ui_help_menu_button_text11",
"rd_ui_help_menu_button_text12",
"rd_ui_help_menu_button_text13",
"rd_ui_help_menu_button_text14" }

function PANEL:Init()

	//self:SetTitle( "" )
	//self:ShowCloseButton( false )
	self:ChooseParent()
	
	local text = ""
	
	for k,v in pairs( self.Text ) do
	
		text = text .. translate.ClientGet( ply, v )
	
	end
	
	self.Label = vgui.Create( "HTML", self )
	self.Label:SetHTML( text )
	
	self.Button = vgui.Create( "DButton", self )
	self.Button:SetText( translate.ClientGet( ply, table.Random( self.ButtonText ) ) )
	self.Button.OnMousePressed = function()

		self:Remove() 
		
		if LocalPlayer():Team() != TEAM_UNASSIGNED then return end
		
		local classmenu = vgui.Create( "ClassPicker" )
		classmenu:SetSize( 415, 475 )
		classmenu:Center()
		classmenu:MakePopup()
		
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

	local x,y = self:GetPadding(), self:GetPadding() + 10
	
	self.Label:SetSize( self:GetWide() - ( self:GetPadding() * 2 ) - 5, self:GetTall() - 50 )
	self.Label:SetPos( x + 5, y + 5 )
	
	self.Button:SetSize( 250, 20 )
	self.Button:SetPos( self:GetWide() * 0.5 - self.Button:GetWide() * 0.5, self:GetTall() - 30 )
	
	self:SizeToContents()

end

function PANEL:Paint()

	draw.RoundedBox( 4, 0, 0, self:GetWide(), self:GetTall(), Color( 0, 0, 0, 255 ) )
	draw.RoundedBox( 4, 1, 1, self:GetWide() - 2, self:GetTall() - 2, Color( 150, 150, 150, 150 ) )
	
	draw.SimpleText( translate.ClientGet( ply, "rd_ui_help_menu" ), "ItemDisplayFont", self:GetWide() * 0.5, 10, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )

end

derma.DefineControl( "HelpMenu", "A help menu.", PANEL, "PanelBase" )
