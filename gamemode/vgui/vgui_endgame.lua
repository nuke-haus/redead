local PANEL = {}

function PANEL:Init()

	self:PerformLayout()
	
	self.Wait = CurTime() + 5
	self.Pos = 1
	self.YPos = 220
	self.ListMode = true
	self.DrawTbl = {} 
	self.Awards = {}
	
	self.Lists = {}
	self.Lists[1] = { 5, ScrW() * 0.30, translate.Get( "rd_ui_endgame_survivors" ), function() return self:GetSurvivors() end, "bot/whoo2.wav" } 
	self.Lists[2] = { ScrW() * 0.50 - ScrW() * 0.15, ScrW() * 0.30, translate.Get( "rd_ui_endgame_top_killers" ), function() return self:GetTopKillers() end, "weapons/357_fire2.wav" } 
	self.Lists[3] = { ScrW() - ( ScrW() * 0.30 ) - 5, ScrW() * 0.30, translate.Get( "rd_ui_endgame_big_spenders" ), function() return self:GetTopSpenders() end, "physics/metal/chain_impact_soft1.wav" } 
	
	local x, w = ScrW() * 0.50 - ScrW() * 0.15, ScrW() * 0.65 - 5
	
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_grey_matter_name" ), translate.Get( "rd_ui_endgame_award_grey_matter_desc" ), function() return self:GetStatMax( "Headshot" ) end, translate.Get( "rd_ui_endgame_award_grey_matter_desc2" ), "player/headshot1.wav" } ) 
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_silent_partner_name" ), translate.Get( "rd_ui_endgame_award_silent_partner_desc" ), function() return self:GetStatMax( "Assist" ) end, translate.Get( "rd_ui_endgame_award_silent_partner_desc2" ), "weapons/357/357_spin1.wav" } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_longshot_name" ), translate.Get( "rd_ui_endgame_award_longshot_desc" ), function() return self:GetStatMax( "Longshot" ) end, translate.Get( "rd_ui_endgame_award_longshot_desc2" ), "weapons/fx/nearmiss/bulletLtoR05.wav" } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_big_game_hunter_name" ), translate.Get( "rd_ui_endgame_award_big_game_hunter_desc" ), function() return self:GetStatMax( "Meat" ) end, translate.Get( "rd_ui_endgame_award_big_game_hunter_desc2" ), "nuke/gore/blood01.wav", true } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_bullet_hose_name" ), translate.Get( "rd_ui_endgame_award_bullet_hose_desc" ), function() return self:GetStatMax( "Bullets" ) end, translate.Get( "rd_ui_endgame_award_bullet_hose_desc2" ), "player/pl_shell1.wav" } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_meat_grinder_name" ), translate.Get( "rd_ui_endgame_award_meat_grinder_desc" ), function() return self:GetStatMax( "Knife" ) end, translate.Get( "rd_ui_endgame_award_meat_grinder_desc2" ), "weapons/knife/knife_hit2.wav", true } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_demolitionist_name" ), translate.Get( "rd_ui_endgame_award_demolitionist_desc" ), function() return self:GetStatMax( "Explode" ) end, translate.Get( "rd_ui_endgame_award_demolitionist_desc2" ), "weapons/underwater_explode3.wav", true } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_firebug_name" ), translate.Get( "rd_ui_endgame_award_firebug_desc" ), function() return self:GetStatMax( "Igniter" ) end, translate.Get( "rd_ui_endgame_award_firebug_desc2" ), "ambient/fire/mtov_flame2.wav", true } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_kleptomaniac_name" ), translate.Get( "rd_ui_endgame_award_kleptomaniac_desc" ), function() return self:GetStatMax( "Loot" ) end, translate.Get( "rd_ui_endgame_award_kleptomaniac_desc2" ), "items/itempickup.wav" } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_broke_the_bank_name" ), translate.Get( "rd_ui_endgame_award_broke_the_bank_desc" ), function() return self:GetStatMax( "Pricey" ) end, translate.Get( "rd_ui_endgame_award_broke_the_bank_desc2" ), "ambient/office/coinslot1.wav" } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_meet_the_engineer_name" ), translate.Get( "rd_ui_endgame_award_meet_the_engineer_desc" ), function() return self:GetStatMax( translate.Get( "rd_items_wood_name" ) ) end, translate.Get( "rd_ui_endgame_award_meet_the_engineer_desc2" ), "npc/dog/dog_servo6.wav", true } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_brain_munch_name" ), translate.Get( "rd_ui_endgame_award_brain_munch_desc" ), function() return self:GetStatMax( "ZedDamage" ) end, translate.Get( "rd_ui_endgame_award_brain_munch_desc2" ), "npc/zombie/zombie_voice_idle2.wav", true } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_get_to_ze_choppa_name" ), translate.Get( "rd_ui_endgame_award_get_to_ze_choppa_desc" ), function() return self:GetStatMax( "Evac" ) end, nil, "ambient/machines/spinup.wav", true } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_martyr_name" ), translate.Get( "rd_ui_endgame_award_martyr_desc" ), function() return self:GetStatMax( "Martyr" ) end, nil, "npc/crow/alert1.wav", true } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_unhealthy_glow_name" ), translate.Get( "rd_ui_endgame_award_unhealthy_glow_desc" ), function() return self:GetStatMax( "Rad" ) end, translate.Get( "rd_ui_endgame_award_unhealthy_glow_desc2" ), "player/geiger3.wav", true } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_cum_dumpster_name" ), translate.Get( "rd_ui_endgame_award_cum_dumpster_desc" ), function() return self:GetStatMax( "Infections" ) end, translate.Get( "rd_ui_endgame_award_cum_dumpster_desc2" ), "ambient/voices/cough1.wav", true } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_accident_prone_name" ), translate.Get( "rd_ui_endgame_award_accident_prone_desc" ), function() return self:GetStatMax( "Damage" ) end, translate.Get( "rd_ui_endgame_award_accident_prone_desc2" ), "bot/pain2.wav" } )
	self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_roleplayer_name" ), translate.Get( "rd_ui_endgame_award_roleplayer_desc" ), function() return self:GetWorstPlayer() end, translate.Get( "rd_ui_endgame_award_roleplayer_desc2" ), "ambient/sheep.wav" } )
	//self:ListNewAward( { x, w, translate.Get( "rd_ui_endgame_award_piss_poor_name" ), translate.Get( "rd_ui_endgame_award_piss_poor_desc" ), function() return self:GetStatMin( "Spent" ) end, translate.Get( "rd_ui_endgame_award_piss_poor_desc2" ), "bot/i_got_nothing.wav" } )
	
end

function PANEL:ListNewAward( tbl )

	table.insert( self.Awards, tbl )

end

function PANEL:GetWorstPlayer()

	local min = 9000
	local ply = NULL

	for k,v in pairs( player.GetAll() ) do
	
		if v:Frags() < min then
		
			min = v:Frags()
			ply = v
		
		end
	
	end
	
	return ply, min

end

function PANEL:GetStatMin( name )

	local min = 9000
	local ply = NULL

	for k,v in pairs( PlayerStats ) do
	
		if v.Stats and ( v.Stats[ name ] or 0 ) < min then
		
			min = ( v.Stats[ name ] or 0 )
			ply = v.Player
		
		end
	
	end
	
	return ply, min

end

function PANEL:GetStatMax( name )

	local max = -1
	local ply = NULL

	for k,v in pairs( PlayerStats ) do
	
		if v.Stats and ( v.Stats[ name ] or 0 ) > max then
		
			max = ( v.Stats[ name ] or 0 )
			ply = v.Player
		
		end
	
	end
	
	return ply, max

end

function PANEL:GetSurvivors()

	local tbl = {}
	
	for k,v in pairs( team.GetPlayers( TEAM_ARMY ) ) do
	
		table.insert( tbl, { v } )
	
	end

	return tbl

end

function PANEL:GetTopSpenders()

	local num = math.min( #player.GetAll(), 5 )
	local tbl = {}
	local ignore = {}
	
	for i=1, num do
	
		local count = -1
		local ply = NULL
	
		for k,v in pairs( PlayerStats ) do
		
			if v.Stats and ( v.Stats[ "Spent" ] or 0 ) > count and not table.HasValue( ignore, v.Player ) then
			
				ply = v.Player
				count = ( v.Stats[ "Spent" ] or 0 )
			
			end
		
		end
		
		if ply != NULL then
			
			table.insert( tbl, { ply, count } )
			table.insert( ignore, ply )
			
		end
	
	end
	
	return tbl

end

function PANEL:GetTopKillers()

	local num = math.min( #player.GetAll(), 5 )
	local plys = player.GetAll()
	local tbl = {}
	
	for i=1, num do
	
		local count = -1
		local ply = NULL
		local pos = 0
	
		for k,v in pairs( plys ) do
		
			if v:Frags() > count then
			
				ply = v
				pos = k
				count = v:Frags()
			
			end
		
		end
		
		if ply != NULL then
		
			table.remove( plys, pos )
			table.insert( tbl, { ply, ply:Frags() } )
			
		end
	
	end
	
	return tbl

end

function PANEL:PerformLayout()
	
	self:SetSize( ScrW(), ScrH() )
	
end

function PANEL:AddList( pos, width, title, players, sound )

	surface.PlaySound( sound )

	table.insert( self.DrawTbl, { X = pos + width * 0.5, Y = 35, Text = title, Style = TEXT_ALIGN_CENTER, Font = "EndGameBig" } )
	
	if not players[1] then return end
	
	local ypos = 60
	
	for k,v in pairs( players ) do

		local list = vgui.Create( "PlayerPanel" )
		list:SetPlayerEnt( v[1] )
		list:SetCount( v[2] )
		list:SetTall( 26 )
		list:SetWide( width )
		list:SetPos( pos, ypos )  
		
		ypos = ypos + 31 

	end

end

function PANEL:AddAward( ypos, pos, width, title, desc, ply, amt, append, sound, condition )

	if condition and amt < 1 then 
		
		self.Wait = 0
	
		return 
		
	end
	
	surface.PlaySound( sound )

	self.YPos = self.YPos + 31
	self.Wait = CurTime() + 1.5

	table.insert( self.DrawTbl, { X = pos + 2, Y = ypos + 5, Text = title, Style = TEXT_ALIGN_LEFT, Font = "EndGame" } )
	
	local offset = 150
	
	local list = vgui.Create( "PlayerPanel" )
	list:SetPlayerEnt( ply )
	list:SetDescription( desc )
	list:SetTall( 26 )
	list:SetWide( width - offset )
	list:SetPos( pos + offset, ypos ) 
	
	if append then
	
		list:SetCount( amt .. " " .. append )
	
	end

end

function PANEL:Think()

	if self.Wait and self.Wait < CurTime() then
	
		self.Wait = CurTime() + 0.5
		
		if self.ListMode then
		
			local alist = self.Lists[ self.Pos ]
		
			self:AddList( alist[1], alist[2], alist[3], alist[4](), alist[5] )
			
			self.Pos = self.Pos + 1
			
			if self.Pos > #self.Lists then
			
				self.ListMode = false
				self.Wait = CurTime() + 1.5
				self.Pos = 1
			
			end
			
		else
		
			local alist = self.Awards[ self.Pos ] 
			
			local ply, amt = alist[5]()
		
			self:AddAward( self.YPos, alist[1], alist[2], alist[3], alist[4], ply, amt, alist[6], alist[7], alist[8] )
			
			self.Pos = self.Pos + 1
			
			if self.Pos > #self.Awards then
			
				self.Wait = nil
			
			end
		
		end
	
	end

end

function PANEL:Paint()

	for k,v in pairs( self.DrawTbl ) do
	
		draw.SimpleText( v.Text, v.Font, v.X, v.Y, Color( 255, 255, 255 ), v.Style, v.Style )
	
	end

end

derma.DefineControl( "EndGame", "The end-game stat page", PANEL, "PanelBase" )
