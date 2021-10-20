

GM.RedemptionCash = 250    // Amount of cash earned for redeeming yourself
GM.RedemptionDamage = 350  // Amount of damage that the zombie lord needs to deal before he is redeemed
GM.RadiationAmount = 0.6   // How much of the radiation on the map should be disabled on map startup? ( 0.6 means 60% will be disabled ) - OBSOLETE?
GM.MaxLoot = 0.35          // Maximum amount of loot to be generated ( 0.05 means 5% of the info_lootspawns will have loot at them. )
GM.WoodPercentage = 0.15   // What percentage of props on the map should be wooden?

// Player class models + weapons + item loadouts

GM.ClassModels = {}
GM.ClassModels[CLASS_SCOUT] = "models/player/riot.mdl"
GM.ClassModels[CLASS_COMMANDO] = "models/player/swat.mdl"
GM.ClassModels[CLASS_SPECIALIST] = "models/player/gasmask.mdl"
GM.ClassModels[CLASS_ENGINEER] = "models/player/urban.mdl"

GM.ClassWeapons = {}
GM.ClassWeapons[CLASS_SCOUT] = "models/weapons/w_pist_glock18.mdl" // use world model names since we have to use the old fucky inventory system
GM.ClassWeapons[CLASS_COMMANDO] = "models/weapons/w_pistol.mdl"
GM.ClassWeapons[CLASS_SPECIALIST] = "models/weapons/w_pist_p228.mdl"
GM.ClassWeapons[CLASS_ENGINEER] = "models/weapons/w_pist_fiveseven.mdl"

GM.ClassLoadouts = {}
GM.ClassLoadouts[CLASS_SCOUT] = { ITEM_MISC, ITEM_MISC, ITEM_SUPPLY, ITEM_SUPPLY }
GM.ClassLoadouts[CLASS_COMMANDO] = { ITEM_MISC, ITEM_MISC, ITEM_SUPPLY, ITEM_SUPPLY }
GM.ClassLoadouts[CLASS_SPECIALIST] = { ITEM_MISC, ITEM_SPECIAL, ITEM_SUPPLY, ITEM_SUPPLY }
GM.ClassLoadouts[CLASS_ENGINEER] = { ITEM_MISC }

GM.ZombieModels = {}
GM.ZombieModels[CLASS_RUNNER] = "models/player/corpse1.mdl"
GM.ZombieModels[CLASS_BANSHEE] = "models/player/charple.mdl"
GM.ZombieModels[CLASS_CONTAGION] = "models/player/zombie_classic.mdl"
GM.ZombieModels[CLASS_LEAPER] = "models/player/zombie_fast.mdl"

GM.ZombieWeapons = {}
GM.ZombieWeapons[CLASS_RUNNER] = "rad_z_runner"
GM.ZombieWeapons[CLASS_BANSHEE] = "rad_z_banshee"
GM.ZombieWeapons[CLASS_CONTAGION] = "rad_z_contagion"
GM.ZombieWeapons[CLASS_LEAPER] = "rad_z_leaper"

GM.ZombieHealth = {}
GM.ZombieHealth[CLASS_RUNNER] = 100
GM.ZombieHealth[CLASS_BANSHEE] = 75
GM.ZombieHealth[CLASS_CONTAGION] = 175
GM.ZombieHealth[CLASS_LEAPER] = 50

GM.ZombieSpeed = {}
GM.ZombieSpeed[CLASS_RUNNER] = 250
GM.ZombieSpeed[CLASS_BANSHEE] = 225
GM.ZombieSpeed[CLASS_CONTAGION] = 200
GM.ZombieSpeed[CLASS_LEAPER] = 275

// Class logos

GM.ClassLogos = {}
GM.ClassLogos[CLASS_SCOUT] = "nuke/redead/scout"
GM.ClassLogos[CLASS_COMMANDO] = "nuke/redead/commando"
GM.ClassLogos[CLASS_SPECIALIST] = "nuke/redead/specialist"
GM.ClassLogos[CLASS_ENGINEER] = "nuke/redead/engineer"

GM.ZombieLogos = {}
GM.ZombieLogos[CLASS_RUNNER] = "nuke/redead/zomb_corpse"
GM.ZombieLogos[CLASS_BANSHEE] = "nuke/redead/zomb_banshee"
GM.ZombieLogos[CLASS_CONTAGION] = "nuke/redead/zomb_zombie"
GM.ZombieLogos[CLASS_LEAPER] = "nuke/redead/zomb_leaper"

// Colors used by notices

GM.Colors = {}
GM.Colors.Green = Color(70,250,170,255)
GM.Colors.Red = Color(250,120,100,255)
GM.Colors.Blue = Color(70,170,250,255)
GM.Colors.Yellow = Color(250,220,70,255)
GM.Colors.White = Color(250,250,250,255)

// Music to play when a player spawns ( randomly picked in table )

GM.OpeningMusic = { "music/HL1_song5.mp3",
"music/HL1_song6.mp3",
"music/HL1_song9.mp3",
"music/HL1_song19.mp3",
"music/HL1_song20.mp3",
"music/HL1_song21.mp3",
"music/HL1_song24.mp3",
"music/HL1_song26.mp3",
"music/HL2_intro.mp3",
"music/HL2_song0.mp3",
"music/HL2_song1.mp3",
"music/HL2_song2.mp3",
"music/HL2_song3.mp3",
"music/HL2_song4.mp3",
"music/HL2_song8.mp3",
"music/HL2_song12_long.mp3",
"music/HL2_song13.mp3",
"music/HL2_song14.mp3",
"music/HL2_song15.mp3",
"music/HL2_song16.mp3",
"music/HL2_song17.mp3",
"music/HL2_song19.mp3",
"music/HL2_song26.mp3",
"music/HL2_song20_submix0.mp3",
"music/HL2_song20_submix4.mp3",
"music/HL2_song26_trainstation1.mp3",
"music/HL2_song27_trainstation2.mp3",
"music/HL2_song30.mp3",
"music/stingers/industrial_suspense1.wav" }

// Music to play on death

GM.DeathMusic = { "music/ravenholm_1.mp3",
"music/HL2_song28.mp3",
"music/stingers/HL1_stinger_song16.mp3",
"music/stingers/HL1_stinger_song7.mp3",
"music/stingers/HL1_stinger_song8.mp3",
"music/stingers/HL1_stinger_song27.mp3",
"music/stingers/HL1_stinger_song28.mp3",
"music/stingers/industrial_suspense2.wav" }

// Win and lose tunes

GM.WinMusic = { "music/HL2_song6.mp3",
"music/HL1_song17.mp3",
"music/HL2_song29.mp3",
"music/HL2_song31.mp3" }

GM.LoseMusic = { "music/HL1_song14.mp3",
"music/HL2_song7.mp3",
"music/HL2_song32.mp3",
"music/HL2_song33.mp3" }

// Last minute

GM.LastMinute = Sound( "nuke/redead/lastminute.mp3" )

if CLIENT then return end // Serverside configuration stuff past this point.

// Headshot combo values

GM.HeadshotCombos = {}
GM.HeadshotCombos[5] = 2    // Get 2 points for 5 consecutive headshots
GM.HeadshotCombos[10] = 5   // Get 5 points for 10 consecutive headshots
GM.HeadshotCombos[15] = 10
GM.HeadshotCombos[20] = 15
GM.HeadshotCombos[50] = 20

// Point values

GM.KillValues = {}
GM.KillValues[ "npc_nb_common" ] = 2
GM.KillValues[ "npc_nb_leaper" ] = 2
GM.KillValues[ "npc_nb_contagion" ] = 3
GM.KillValues[ "npc_nb_poison" ] = 4

GM.AssistValues = {}
GM.AssistValues[ "npc_nb_common" ] = 1
GM.AssistValues[ "npc_nb_leaper" ] = 1
GM.AssistValues[ "npc_nb_contagion" ] = 1
GM.AssistValues[ "npc_nb_poison" ] = 2

GM.PlayerZombieKillValue = 3

// Human movespeeds

GM.WalkSpeed = 175 
GM.RunSpeed = 250

// Chances to spawn each zombie type ( from 100 to 0 %)

GM.SpawnChance = {}
GM.SpawnChance[ "npc_nb_common" ] = 1.0 // 100% chance
GM.SpawnChance[ "npc_nb_contagion" ] = 0.1 // 10% chance
GM.SpawnChance[ "npc_nb_leaper" ] = 0.3
GM.SpawnChance[ "npc_nb_poison" ] = 0.2

// The individual waves and the list of zombies that will spawn. ( more waves means a longer match )

GM.Waves = {}
GM.Waves[1] = { "npc_nb_common" }
GM.Waves[2] = { "npc_nb_common", "npc_nb_leaper" }
GM.Waves[3] = { "npc_nb_common", "npc_nb_contagion", "npc_nb_leaper" }
GM.Waves[4] = { "npc_nb_common", "npc_nb_contagion", "npc_nb_leaper", "npc_nb_poison" }

