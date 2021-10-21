
// This is the ID given to any item that doesnt fit in any other category - feel free to add your own items here
ITEM_MISC = 5 // Can be found in stores or in loot
ITEM_BUYABLE = 6 // Only found in stores
ITEM_LOOT = 7 // Only found in loot
ITEM_QUEST_ZOMBIE = 421 // obsolete?

function FUNC_DRINK( ply, id, client, icon )

	if icon then return "icon16/cup.png" end
	if client then return translate.Get( "rd_ui_shop_drink" ) end

	ply:RemoveFromInventory( id )
	ply:EmitSound( table.Random{ "npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav" }, 100, math.random( 90, 110 ) )
	ply:AddHealth( 15 )
	ply:AddStamina( 25 )
	ply:Notice( translate.ClientGet( ply, "rd_notices_plus15_health" ), GAMEMODE.Colors.Green )
	ply:Notice( translate.ClientGet( ply, "rd_notices_plus25_stamina" ), GAMEMODE.Colors.Green )

end

function FUNC_EAT( ply, id, client, icon )

	if icon then return "icon16/cake.png" end
	if client then return translate.Get( "rd_ui_shop_eat" ) end
	
	ply:RemoveFromInventory( id )
	ply:EmitSound( "npc/barnacle/barnacle_crunch2.wav", 100, math.random( 90, 110 ) )
	ply:AddHealth( 25 )
	ply:AddStamina( 15 )
	ply:Notice( translate.ClientGet( ply, "rd_notices_plus25_health" ), GAMEMODE.Colors.Green )
	ply:Notice( translate.ClientGet( ply, "rd_notices_plus15_stamina" ), GAMEMODE.Colors.Green )

end

function FUNC_BOOZE( ply, id, client, icon )

	if icon then return "icon16/drink.png" end
	if client then return translate.Get( "rd_ui_shop_drink" ) end
	
	ply:RemoveFromInventory( id )
	ply:EmitSound( table.Random{ "npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav" }, 100, math.random( 90, 110 ) )
	ply:AddRadiation( -2 )
	ply:AddStamina( 20 )
	ply:Notice( translate.ClientGet( ply, "rd_notices_plus20_stamina" ), GAMEMODE.Colors.Green )
	ply:Notice( translate.ClientGet( ply, "rd_notices_minus2_radiation" ), GAMEMODE.Colors.Green )
	ply:Notice( translate.ClientGet( ply, "rd_notices_plus4_intoxication" ), GAMEMODE.Colors.Red )
	
	umsg.Start( "Drunk", ply )
    umsg.Short( 4 )
	umsg.End()

end

function FUNC_MOONSHINE( ply, id, client, icon )

	if icon then return "icon16/drink.png" end
	if client then return translate.Get( "rd_ui_shop_drink" ) end
	
	ply:RemoveFromInventory( id )
	ply:EmitSound( table.Random{ "npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav" }, 100, math.random( 90, 110 ) )
	ply:AddRadiation( -1 )
	ply:Notice( translate.ClientGet( ply, "rd_notices_minus1_radiation" ), GAMEMODE.Colors.Green )
	ply:Notice( translate.ClientGet( ply, "rd_notices_plus6_intoxication" ), GAMEMODE.Colors.Red )
	
	umsg.Start( "Drunk", ply )
    umsg.Short( 6 )
	umsg.End()

end

function FUNC_BEER( ply, id, client, icon )

	if icon then return "icon16/drink.png" end
	if client then return translate.Get( "rd_ui_shop_drink" ) end
	
	ply:RemoveFromInventory( id )
	ply:EmitSound( table.Random{ "npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav" }, 100, math.random( 90, 110 ) )
	ply:AddStamina( 15 )
	ply:Notice( translate.ClientGet( ply, "rd_notices_plus15_stamina" ), GAMEMODE.Colors.Green )
	ply:Notice( translate.ClientGet( ply, "rd_notices_plus2_intoxication" ), GAMEMODE.Colors.Red )
	
	umsg.Start( "Drunk", ply )
    umsg.Short( 2 )
	umsg.End()

end

function FUNC_SPACEBEER( ply, id, client, icon )

	if icon then return "icon16/drink.png" end
	if client then return translate.Get( "rd_ui_shop_drink" ) end
	
	ply:RemoveFromInventory( id )
	ply:EmitSound( table.Random{ "npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav" }, 100, math.random( 90, 110 ) )
	ply:Notice( translate.ClientGet( ply, "rd_notices_plus15_intoxication" ), GAMEMODE.Colors.Red )
	
	umsg.Start( "Drunk", ply )
    umsg.Short( 15 )
	umsg.End()

end

function FUNC_UNMUTAGEN( ply, id, client, icon )

	if icon then return "icon16/pill.png" end
	if client then return translate.Get( "rd_ui_shop_inject" ) end
	
	ply:RemoveFromInventory( id )
	ply:EmitSound( "Weapon_SMG1.Special1" )
	
	local tbl = {}
	local inc = 0
	
	for i=1,math.random(1,3) do
	
		local rand = math.random(1,6)
		
		while table.HasValue( tbl, rand ) do
		
			rand = math.random(1,6)
		
		end
		
		table.insert( tbl, rand )
		
		if rand == 1 then
		
			ply:Notice( translate.ClientGet( ply, "rd_notices_you_feel_extremely_nauseous" ), GAMEMODE.Colors.Red, 5, inc * 2 )
		
			umsg.Start( "Drunk", ply )
			umsg.Short( 20 )
			umsg.End()
		
		elseif rand == 2 then
		
			local rad = math.random(2,5)
		
			if math.random(1,2) == 1 then
		
				ply:Notice( translate.ClientFormat( ply, "rd_notices_plus_x_radiation", rad ), GAMEMODE.Colors.Red, 5, inc * 2 )
				ply:AddRadiation( rad )
				
			else
			
				ply:Notice( translate.ClientFormat( ply, "rd_notices_minus_x_radiation", rad ), GAMEMODE.Colors.Green, 5, inc * 2 )
				ply:AddRadiation( -rad )
			
			end
		
		elseif rand == 3 then
		
			if ply:IsInfected() then
		
				ply:Notice( translate.ClientGet( ply, "rd_notices_your_infection_has_been_cured" ), GAMEMODE.Colors.Green, 5, inc * 2 )
				ply:SetInfected( false )
				
			else
			
				ply:Notice( translate.ClientGet( ply, "rd_notices_you_were_infected_by_the_drug" ), GAMEMODE.Colors.Red, 5, inc * 2 )
				ply:SetInfected( true )
			
			end
		
		elseif rand == 4 then
		
			if math.random(1,2) == 1 then
		
				ply:Notice( translate.ClientGet( ply, "rd_notices_you_feel_exhausted" ), GAMEMODE.Colors.Red, 5, inc * 2 )
				ply:AddStamina( -50 )
				
			else
			
				ply:Notice( translate.ClientGet( ply, "rd_notices_plus20_stamina" ), GAMEMODE.Colors.Green, 5, inc * 2 )
				ply:AddStamina( 20 )
			
			end
		
		elseif rand == 5 then
		
			ply:Notice( translate.ClientGet( ply, "rd_notices_your_whole_body_aches" ), GAMEMODE.Colors.Red, 5, inc * 2 )
			
			local dmg = math.random(1,5)
			
			ply:AddHealth( dmg * -10 )
			
			if math.random(1,20) == 1 then
			
				local dietime = math.random( 30, 120 )
			
				timer.Simple( dietime - 5, function() ply:Notice( translate.ClientGet( ply, "rd_notices_you_feel_a_sharp_pain_in_your_chest" ), GAMEMODE.Colors.Red, 5 ) end )
				timer.Simple( dietime, function() ply:Kill() end )
			
			end
		
		elseif rand == 6 then
		
			ply:Notice( translate.ClientGet( ply, "rd_notices_your_legs_begin_to_feel_weak" ), GAMEMODE.Colors.Red, 5, inc * 2 )
			ply:SetWalkSpeed( GAMEMODE.WalkSpeed - 80 )
			ply:SetRunSpeed( GAMEMODE.RunSpeed - 80 )
			
			local legtime = math.random( 20, 60 )
			
			timer.Simple( legtime - 5, function() if IsValid( ply ) and ply:Team() == TEAM_ARMY then ply:Notice( translate.ClientGet( ply, "rd_notices_your_legs_start_to_feel_better" ), GAMEMODE.Colors.Green, 5 ) end end )
			timer.Simple( legtime, function() if IsValid( ply ) and ply:Team() == TEAM_ARMY then ply:SetWalkSpeed( GAMEMODE.WalkSpeed ) ply:SetRunSpeed( GAMEMODE.RunSpeed ) end end )
		
		end
		
		inc = inc + 1
		
	end

end

function FUNC_WRENCH( ply, id, client, icon )

	if icon then return "icon16/cake.png" end
	if client then return translate.Get( "rd_ui_shop_eat" ) end
	
	ply:RemoveFromInventory( id )
	ply:EmitSound( "npc/barnacle/barnacle_crunch2.wav", 100, math.random( 90, 110 ) )
	ply:EmitSound( "weapons/crowbar/crowbar_impact2.wav", 100, math.random( 90, 110 ) )
	ply:TakeDamage( 20 )
	ply:Notice( translate.ClientGet( ply, "rd_notices_minus20_health" ), GAMEMODE.Colors.Red )
	ply:Notice( translate.ClientGet( ply, "rd_notices_you_just_ate_a_fucking_wrench" ), GAMEMODE.Colors.Red )

end

function FUNC_OPENSUITCASE( ply, id )
	
	ply:Notice( translate.ClientGet( ply, "rd_notices_you_found_some_bones" ), GAMEMODE.Colors.Green )
	ply:EmitSound( Sound( "Chain.ImpactSoft" ) )
	
	if math.random(1,10) == 1 then
	
		ply:AddCash( math.random(5,50) )
	
	else
	
		ply:AddCash( math.random(2,10) )
		
	end
	
	return false

end

function FUNC_OPENBOX( ply, id )

	local tbl = { ITEM_SUPPLY, ITEM_AMMO, ITEM_MISC, ITEM_SPECIAL, ITEM_WPN_COMMON, ITEM_WPN_SPECIAL }
	local chancetbl = { 0.60,     0.20,     0.50,        0.20,           0.05,           0.03 }
	
	local rnd = math.Rand(0,1)
	local choice = math.random( 1, table.Count( tbl ) ) 
				
	while rnd > chancetbl[ choice ] do
					
		rnd = math.Rand(0,1)
		choice = math.random( 1, table.Count( tbl ) ) 
					
	end
	
	local rand = item.RandomItem( tbl[choice] )
	
	ply:AddIDToInventory( rand.ID )
	ply:EmitSound( "Cardboard.Break" )
	
	return false

end

item.Register( { 
	Name = "rd_items_cardboard_box_name", 
	CollisionOverride = true,
	Type = ITEM_LOOT,
	Rarity = 0.95,
	Model = "models/props_junk/cardboard_box001a.mdl", 
	PickupFunction = FUNC_OPENBOX,
	Functions = {}
} )

item.Register( { 
	Name = "rd_items_cardboard_box_name", 
	CollisionOverride = true,
	Type = ITEM_LOOT,
	Rarity = 0.95,
	Model = "models/props_junk/cardboard_box001b.mdl", 
	PickupFunction = FUNC_OPENBOX,
	Functions = {}
} )

item.Register( { 
	Name = "rd_items_cardboard_box_name", 
	CollisionOverride = true,
	Type = ITEM_LOOT,
	Rarity = 0.95,
	Model = "models/props_junk/cardboard_box002a.mdl", 
	PickupFunction = FUNC_OPENBOX,
	Functions = {}
} )

item.Register( { 
	Name = "rd_items_cardboard_box_name", 
	CollisionOverride = true,
	Type = ITEM_LOOT,
	Rarity = 0.95,
	Model = "models/props_junk/cardboard_box002b.mdl", 
	PickupFunction = FUNC_OPENBOX,
	Functions = {}
} )

item.Register( { 
	Name = "rd_items_cardboard_box_name", 
	CollisionOverride = true,
	Type = ITEM_LOOT,
	Rarity = 0.95,
	Model = "models/props_junk/cardboard_box003a.mdl", 
	PickupFunction = FUNC_OPENBOX,
	Functions = {}
} )

item.Register( { 
	Name = "rd_items_cardboard_box_name", 
	CollisionOverride = true,
	Type = ITEM_LOOT,
	Rarity = 0.95,
	Model = "models/props_junk/cardboard_box003b.mdl", 
	PickupFunction = FUNC_OPENBOX,
	Functions = {}
} )

item.Register( { 
	Name = "rd_items_suitcase_name", 
	CollisionOverride = true,
	Type = ITEM_LOOT,
	Rarity = 0.50,
	Model = "models/props_c17/suitcase_passenger_physics.mdl", 
	PickupFunction = FUNC_OPENSUITCASE,
	Functions = {}
} )

item.Register( { 
	Name = "rd_items_briefcase_name", 
	CollisionOverride = true,
	Type = ITEM_LOOT,
	Rarity = 0.50,
	Model = "models/props_c17/briefcase001a.mdl", 
	PickupFunction = FUNC_OPENSUITCASE,
	Functions = {}
} )

item.Register( { 
	Name = "rd_items_wood_name", 
	Description = "rd_items_wood_desc",
	Stackable = true, 
	Type = ITEM_MISC,
	Weight = 1.50, 
	Price = 15,
	Rarity = 0.15,
	Model = "models/props_debris/wood_chunk04a.mdl",
	Functions = {},
	CamPos = Vector(42,15,0),
	CamOrigin = Vector(0,0,-1)
} )

item.Register( { 
	Name = "rd_items_water_name", 
	Description = "rd_items_water_desc",
	Stackable = true, 
	Type = ITEM_MISC,
	Weight = 0.15, 
	Price = 3,
	Rarity = 0.05,
	Model = "models/props/cs_office/water_bottle.mdl",
	Functions = { FUNC_DRINK },
	CamPos = Vector(12,12,1),
	CamOrigin = Vector(0,0,0)	
} )

item.Register( { 
	Name = "rd_items_canned_food_name", 
	Description = "rd_items_canned_food_desc",
	Stackable = true, 
	Type = ITEM_MISC,
	Weight = 0.15, 
	Price = 3,
	Rarity = 0.05,
	Model = "models/props_junk/garbage_metalcan001a.mdl",
	Functions = { FUNC_EAT },
	CamPos = Vector(10,10,0),
	CamOrigin = Vector(0,0,0)	
} )

item.Register( { 
	Name = "rd_items_wrench_name", 
	Description = "rd_items_wrench_desc",
	Stackable = true, 
	Type = ITEM_LOOT,
	Weight = 0.15, 
	Price = 3,
	Rarity = 0.99,
	Model = "models/props_c17/tools_wrench01a.mdl",
	Functions = { FUNC_WRENCH },
	CamPos = Vector(0,0,29),
	CamOrigin = Vector(0,1,4)	
} )

item.Register( { 
	Name = "rd_items_unstable_name", 
	Description = "rd_items_unstable_desc",
	Stackable = true, 
	Type = ITEM_LOOT,
	Weight = 0.30, 
	Price = 50,
	Rarity = 0.95,
	Model = "models/healthvial.mdl",
	Functions = { FUNC_UNMUTAGEN },
	CamPos = Vector(-16,0,8),
	CamOrigin = Vector(0,0,5)	
} )

item.Register( { 
	Name = "rd_items_beer_name", 
	Description = "rd_items_beer_desc",
	Stackable = true, 
	Type = ITEM_LOOT,
	Weight = 0.30, 
	Price = 5,
	Rarity = 0.30,
	Model = "models/props_junk/glassbottle01a.mdl",
	Functions = { FUNC_BEER },
	CamPos = Vector(16,12,1),
	CamOrigin = Vector(0,0,0)	
} )

item.Register( { 
	Name = "rd_items_tequila_name", 
	Description = "rd_items_tequila_desc",
	Stackable = true, 
	Type = ITEM_LOOT,
	Weight = 0.30, 
	Price = 5,
	Rarity = 0.85,
	Model = "models/props_junk/glassjug01.mdl",
	Functions = { FUNC_SPACEBEER },
	CamPos = Vector(19,0,6),
	CamOrigin = Vector(0,0,5)	
} )

item.Register( { 
	Name = "rd_items_vodka_name", 
	Description = "rd_items_vodka_desc",
	Stackable = true, 
	Type = ITEM_MISC,
	Weight = 0.30, 
	Price = 10,
	Rarity = 0.10,
	Model = "models/props_junk/garbage_glassbottle002a.mdl",
	Functions = { FUNC_BOOZE },
	CamPos = Vector(15,19,4),
	CamOrigin = Vector(0,0,0)
} )

item.Register( { 
	Name = "rd_items_moonshine_vodka_name", 
	Description = "rd_items_moonshine_vodka_desc",
	Stackable = true, 
	Type = ITEM_BUYABLE,
	Weight = 0.30, 
	Price = 5,
	Rarity = 0.25,
	Model = "models/props_junk/garbage_glassbottle003a.mdl",
	Functions = { FUNC_MOONSHINE },
	CamPos = Vector(16,17,1),
	CamOrigin = Vector(0,0,-1)	
} )

--[[item.Register( { 
	Name = "Human Skull", 
	Description = "This human skull looks pretty old. You decided to name it Murray.",
	Stackable = true, 
	Type = ITEM_QUEST_ZOMBIE,
	Weight = 2.50, 
	Price = 1,
	Rarity = 0.75,
	Model = "models/gibs/hgibs.mdl",
	Functions = { },
	CamPos = Vector(15,10,0),
	CamOrigin = Vector(0,0,2)	
} )

item.Register( { 
	Name = "Zombie Claw", 
	Description = "This is the claw of a zombie.",
	Stackable = true, 
	Type = ITEM_QUEST_ZOMBIE,
	Weight = 2.50, 
	Price = 1,
	Rarity = 0.25,
	Model = "models/gibs/antlion_gib_small_1.mdl",
	Functions = { },
	CamPos = Vector(10,15,5),
	CamOrigin = Vector(0,0,1)	
} )

item.Register( { 
	Name = "Zombie Spine", 
	Description = "This is the spine of a zombie.",
	Stackable = true, 
	Type = ITEM_QUEST_ZOMBIE,
	Weight = 2.50, 
	Price = 1,
	Rarity = 0.25,
	Model = "models/gibs/HGIBS_spine.mdl",
	Functions = { },
	CamPos = Vector(15,15,5),
	CamOrigin = Vector(0,0,2)	
} )

item.Register( { 
	Name = "Zombie Rib", 
	Description = "This is the rib of a zombie.",
	Stackable = true, 
	Type = ITEM_QUEST_ZOMBIE,
	Weight = 2.50, 
	Price = 1,
	Rarity = 0.25,
	Model = "models/gibs/HGIBS_rib.mdl",
	Functions = { },
	CamPos = Vector(10,15,3),
	CamOrigin = Vector(0,0,0)	
} )

item.Register( { 
	Name = "Zombie Flesh", 
	Description = "This is a chunk of zombie flesh.",
	Stackable = true, 
	Type = ITEM_QUEST_ZOMBIE,
	Weight = 2.50, 
	Price = 1,
	Rarity = 0.25,
	Model = "models/props_junk/watermelon01_chunk02a.mdl",
	Functions = { },
	CamPos = Vector(8,8,5),
	CamOrigin = Vector(0,0,2.5)	
} )]]
