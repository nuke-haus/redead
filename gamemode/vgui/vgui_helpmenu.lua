local PANEL = {}

PANEL.Text = { "<html><body style=\"background-color:DimGray;\">",
"<p style=\"font-family:tahoma;color:red;font-size:25;text-align:center\"><b>"..translate.Get("read_this").."</b></p>",
"<p style=\"font-family:verdana;color:black;font-size:10px;text-align:left\"><b>"..translate.Get("the_inventory_system").."</b> ",
""..translate.Get("the_inventory_system_text").."<br><br>",
"<b>"..translate.Get("purchasing_items").."</b> "..translate.Get("purchasing_items_text").."<br><br>",
"<b>"..translate.Get("the_panic_button").."</b> "..translate.Get("the_panic_button_text").."<br><br>",
"<b>"..translate.Get("the_hud").."</b> "..translate.Get("the_hud_text").."",
""..translate.Get("radiation_poison").."<br><br>",
"<b>"..translate.Get("evacuation").."</b> "..translate.Get("evacuation_text").."<br><br>",
"<b>"..translate.Get("the_infection").."</b> "..translate.Get("the_infection_text").."<br><br>",
"<b>"..translate.Get("the_zombie_lord").."</b> "..translate.Get("the_zombie_lord_text").."<br><br>",
"<b>"..translate.Get("radiation").."</b> "..translate.Get("radiation_text").."<br><br>" }

PANEL.ButtonText = { translate.Get("b_word1"),
translate.Get("b_word2"),
translate.Get("b_word3"),
translate.Get("b_word4"),
translate.Get("b_word5"),
translate.Get("b_word6"),
translate.Get("b_word7"),
translate.Get("b_word8"),
translate.Get("b_word9"),
translate.Get("b_word10"),
translate.Get("b_word11"),
translate.Get("b_word12"),
translate.Get("b_word13"),
translate.Get("b_word14") }

function PANEL:Init()

	//self:SetTitle( "" )
	//self:ShowCloseButton( false )
	self:ChooseParent()
	
	local text = ""
	
	for k,v in pairs( self.Text ) do
	
		text = text .. v
	
	end
	
	self.Label = vgui.Create( "HTML", self )
	self.Label:SetHTML( text )
	
	self.Button = vgui.Create( "DButton", self )
	self.Button:SetText( table.Random( self.ButtonText ) )
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
	
	draw.SimpleText( translate.Get("help_menu"), "ItemDisplayFont", self:GetWide() * 0.5, 10, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )

end

derma.DefineControl( "HelpMenu", "A help menu.", PANEL, "PanelBase" )
