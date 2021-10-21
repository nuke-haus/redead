
// This is the ID given to any weapon item for all teams
ITEM_WPN_COMMON = 11

function FUNC_DROPWEAPON( ply, id, client, icon )

	if icon then return "icon16/arrow_down.png" end
	if client then return translate.Get( "rd_ui_shop_drop" ) end
	
	local tbl = item.GetByID( id )
	
	local prop = ents.Create( "sent_droppedgun" )
	prop:SetPos( ply:GetItemDropPos() )
	
	if tbl.DropModel then
			
		prop:SetModel( tbl.DropModel )
				
	else
			
		prop:SetModel( tbl.Model )
				
	end
	
	prop:Spawn()
	
	ply:EmitSound( Sound( "items/ammopickup.wav" ) )
	ply:RemoveFromInventory( id )
	
	if not ply:HasItem( id ) then
	
		ply:StripWeapon( tbl.Weapon )
		
	end

end

function FUNC_REMOVEWEAPON( ply, id )

	local tbl = item.GetByID( id )
	
	if not ply:HasItem( id ) then
	
		ply:StripWeapon( tbl.Weapon )
		
	end

end

function FUNC_GRABWEAPON( ply, id )

	local tbl = item.GetByID( id )
	
	ply:Give( tbl.Weapon )
	
	return true

end

item.Register( { 
	Name = "rd_items_hammer_name", 
	Description = "rd_items_hammer_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 3, 
	Price = 35,
	Rarity = 0.40,
	Model = "models/weapons/w_hammer.mdl",
	Weapon = "rad_hammer",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,-28,0),
	CamOrigin = Vector(0,0,5)
} )

item.Register( { 
	Name = "rd_items_axe_name", 
	Description = "rd_items_axe_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 5, 
	Price = 50,
	Rarity = 0.60,
	Model = "models/weapons/w_axe.mdl",
	Weapon = "rad_axe",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,-42,0),
	CamOrigin = Vector(0,0,8)
} )

item.Register( { 
	Name = "rd_items_crowbar_name", 
	Description = "rd_items_crowbar_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	SaleOverride = true,
	Weight = 5, 
	Price = 50,
	Rarity = 0.20,
	Model = "models/weapons/w_crowbar.mdl",
	Weapon = "rad_crowbar",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,0,-44),
	CamOrigin = Vector(0,0,8)
} )

item.Register( { 
	Name = "rd_items_fn_fiveseven_name", 
	Description = "rd_items_fn_fiveseven_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	SaleOverride = true,
	Weight = 3, 
	Price = 8,
	Rarity = 0.90,
	Model = "models/weapons/w_pist_fiveseven.mdl",
	Weapon = "rad_fiveseven",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,17,5),
	CamOrigin = Vector(2,0,3)
} )

item.Register( { 
	Name = "rd_items_usp_compact_name", 
	Description = "rd_items_usp_compact_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	SaleOverride = true,
	Weight = 3, 
	Price = 8,
	Rarity = 0.90,
	Model = "models/weapons/w_pistol.mdl",
	Weapon = "rad_usp",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,-17,0),
	CamOrigin = Vector(-1,0,-2)
} )

item.Register( { 
	Name = "rd_items_p228_compact_name", 
	Description = "rd_items_p228_compact_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	SaleOverride = true,
	Weight = 3, 
	Price = 8,
	Rarity = 0.90,
	Model = "models/weapons/w_pist_p228.mdl",
	Weapon = "rad_p228",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,17,5),
	CamOrigin = Vector(2,0,3)
} )

item.Register( { 
	Name = "rd_items_glock_19_name", 
	Description = "rd_items_glock_19_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	SaleOverride = true,
	Weight = 3, 
	Price = 8,
	Rarity = 0.90,
	Model = "models/weapons/w_pist_glock18.mdl",
	Weapon = "rad_glock",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,17,5),
	CamOrigin = Vector(2,0,3)
} )

item.Register( { 
	Name = "rd_items_dual_berettas_name", 
	Description = "rd_items_dual_berettas_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 3, 
	Price = 35,
	Rarity = 0.20,
	Model = "models/weapons/w_pist_elite_single.mdl",
	DropModel = "models/weapons/w_pist_elite_dropped.mdl",
	Weapon = "rad_berettas",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,15,-5),
	CamOrigin = Vector(2,0,3)
} )

item.Register( { 
	Name = "rd_items_colt_python_name", 
	Description = "rd_items_colt_python_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 4, 
	Price = 40,
	Rarity = 0.20,
	Model = "models/weapons/w_357.mdl",
	Weapon = "rad_revolver",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,18,0),
	CamOrigin = Vector(6,0,0)
} )

item.Register( { 
	Name = "rd_items_desert_eagle_name", 
	Description = "rd_items_desert_eagle_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 4, 
	Price = 45,
	Rarity = 0.20,
	Model = "models/weapons/w_pist_deagle.mdl",
	Weapon = "rad_deagle",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,15,2),
	CamOrigin = Vector(3,0,4)
} )

item.Register( { 
	Name = "rd_items_mac_10_name", 
	Description = "rd_items_mac_10_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 4, 
	Price = 50,
	Rarity = 0.20,
	Model = "models/weapons/w_smg_mac10.mdl",
	Weapon = "rad_mac10",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,20,5),
	CamOrigin = Vector(2,0,3)
} )

item.Register( { 
	Name = "rd_items_ump_45_name", 
	Description = "rd_items_ump_45_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 6, 
	Price = 55,
	Rarity = 0.30,
	Model = "models/weapons/w_smg_ump45.mdl",
	Weapon = "rad_ump45",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,30,5),
	CamOrigin = Vector(-2,0,4)
} )

item.Register( { 
	Name = "rd_items_cmp_250_name", 
	Description = "rd_items_cmp_250_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 4, 
	Price = 60,
	Rarity = 0.30,
	Model = "models/weapons/w_smg1.mdl",
	Weapon = "rad_cmp",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,27,0),
	CamOrigin = Vector(-1,0,-1)
} )

item.Register( { 
	Name = "rd_items_winchester_1887_name", 
	Description = "rd_items_winchester_1887_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 6, 
	Price = 65,
	Rarity = 0.30,
	Model = "models/weapons/w_annabelle.mdl",
	Weapon = "rad_shotgun",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,-50,5),
	CamOrigin = Vector(3,0,1)
} )

item.Register( { 
	Name = "rd_items_tmp_name", 
	Description = "rd_items_tmp_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 4, 
	Price = 70,
	Rarity = 0.40,
	Model = "models/weapons/w_smg_tmp.mdl",
	Weapon = "rad_tmp",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,31,5),
	CamOrigin = Vector(5,0,3)
} )

item.Register( { 
	Name = "rd_items_mp5_name", 
	Description = "rd_items_mp5_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 6, 
	Price = 75,
	Rarity = 0.40,
	Model = "models/weapons/w_smg_mp5.mdl",
	Weapon = "rad_mp5",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,38,5),
	CamOrigin = Vector(2,0,5)
} )

item.Register( { 
	Name = "rd_items_famas_name", 
	Description = "rd_items_famas_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 9, 
	Price = 80,
	Rarity = 0.50,
	Model = "models/weapons/w_rif_famas.mdl",
	Weapon = "rad_famas",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(-7,39,5),
	CamOrigin = Vector(-6,0,5)
} )

item.Register( { 
	Name = "rd_items_fn_p90_name", 
	Description = "rd_items_fn_p90_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 4, 
	Price = 85,
	Rarity = 0.50,
	Model = "models/weapons/w_smg_p90.mdl",
	Weapon = "rad_p90",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,35,5),
	CamOrigin = Vector(1,0,5)
} )

item.Register( { 
	Name = "rd_items_steyr_scout_name", 
	Description = "rd_items_steyr_scout_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 9, 
	Price = 90,
	Rarity = 0.60,
	Model = "models/weapons/w_snip_scout.mdl",
	Weapon = "rad_scout",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,44,5),
	CamOrigin = Vector(0,0,4)
} )

item.Register( { 
	Name = "rd_items_imi_galil_name", 
	Description = "rd_items_imi_galil_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 8, 
	Price = 100,
	Rarity = 0.60,
	Model = "models/weapons/w_rif_galil.mdl",
	Weapon = "rad_galil",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,42,5),
	CamOrigin = Vector(-1,0,3)
} )

item.Register( { 
	Name = "rd_items_spas_12_name", 
	Description = "rd_items_spas_12_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 7, 
	Price = 110,
	Rarity = 0.70,
	Model = "models/weapons/w_shotgun.mdl",
	Weapon = "rad_spas12",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,-34,0),
	CamOrigin = Vector(0,0,0)
} )

item.Register( { 
	Name = "rd_items_ak_47_name", 
	Description = "rd_items_ak_47_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 7, 
	Price = 130,
	Rarity = 0.80,
	Model = "models/weapons/w_rif_ak47.mdl",
	Weapon = "rad_ak47",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,43,5),
	CamOrigin = Vector(0,0,3)
} )

item.Register( { 
	Name = "rd_items_sg_552_name", 
	Description = "rd_items_sg_552_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 8, 
	Price = 150,
	Rarity = 0.90,
	Model = "models/weapons/w_rif_sg552.mdl",
	Weapon = "rad_sg552",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,37,5),
	CamOrigin = Vector(-4,0,5)
} )

item.Register( { 
	Name = "rd_items_g3_sg1_name", 
	Description = "rd_items_g3_sg1_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 9, 
	Price = 170,
	Rarity = 0.90,
	Model = "models/weapons/w_snip_g3sg1.mdl",
	Weapon = "rad_g3",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,42,5),
	CamOrigin = Vector(-3,0,5)
} )

item.Register( { 
	Name = "rd_items_heat_cannon_name", 
	Description = "rd_items_heat_cannon_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 9, 
	Price = 190,
	Rarity = 0.70,
	Model = "models/weapons/w_physics.mdl",
	Weapon = "rad_firegun",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,35,0),
	CamOrigin = Vector(10,0,-1)
} )

item.Register( { 
	Name = "rd_items_ppw_952_name", 
	Description = "rd_items_ppw_952_desc",
	Stackable = false, 
	Type = ITEM_WPN_COMMON,
	TypeOverride = "sent_droppedgun",
	Weight = 9, 
	Price = 200,
	Rarity = 0.70,
	Model = "models/weapons/w_irifle.mdl",
	Weapon = "rad_experimental",
	Functions = { FUNC_DROPWEAPON },
	PickupFunction = FUNC_GRABWEAPON,
	DropFunction = FUNC_REMOVEWEAPON,
	CamPos = Vector(0,-40,0),
	CamOrigin = Vector(5,0,0)
} )
