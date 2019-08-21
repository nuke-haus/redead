--[[
English is the standard language that you should base your ID's off of.
If something isn't found in your language file then it will fall back to English.

Valid languages (from gmod's menu): bg cs da de el en en-PT es-ES et fi fr ga-IE he hr hu it ja ko lt nl no pl pt-BR pt-PT ru sk sv-SE th tr uk vi zh-CN zh-TW
You MUST use one of the above when using translate.AddLanguage
]]

--[[
RULES FOR TRANSLATORS!!
* Only translate formally. Do not translate with slang, improper grammar, spelling, etc.
* Comment out things that you have not yet translated in your language file.
  It will then fall back to this file instead of potentially using out of date wording in yours.
]]

translate.AddLanguage("en", "English")

--Zombie Class Menu Top Text
LANGUAGE.class_menu                      = "Class Menu" 

--Zombie Class Names
LANGUAGE.zclass_runner                   = "Runner"
LANGUAGE.zclass_banshee                  = "Banshee"
LANGUAGE.zclass_contagion                = "Contagion"
LANGUAGE.zclass_leaper                   = "Leaper"

--Zombie Class Description
LANGUAGE.zclass_runner_desk              = "The Runner: A resilient and agile zombie. Capable of infecting humans with its claws."
LANGUAGE.zclass_banshee_desk             = "The Banshee: A highly radioactive zombie. Capable of disorienting humans with its scream."
LANGUAGE.zclass_contagion_desk           = "The Contagion: A bloated, festering zombie. When killed it will burst into a shower of acid."
LANGUAGE.zclass_leaper_desk              = "The Leaper: A bony, mutated zombie. Capable of jumping great distances and making humans bleed with its claws."

--Human Class Description
LANGUAGE.hclass_scout_desk               = "The Scout: Wears lightweight kevlar armor, allowing for improved mobility. Starts off with extra %ss."
LANGUAGE.hclass_commando_desk            = "The Commando: Wears prototype kevlar armor, allowing for improved damage resistance."
LANGUAGE.hclass_specialist_desk          = "The Specialist: Has access to restricted utilities and weaponry."
LANGUAGE.hclass_engineer_desk            = "The Technician: Starts off with the tools needed for barricade construction."

--Help Menu Top Text
LANGUAGE.help_menu                       = "Help Menu"

--Help Menu Text
LANGUAGE.read_this                       = "READ THIS!"
LANGUAGE.the_inventory_system            = "The Inventory System:"
LANGUAGE.the_inventory_system_text       = "To toggle your inventory, press your spawn menu button (default Q). Click an item in your inventory to interact with it. To interact with dropped items, press your USE key (default E) on them."
LANGUAGE.purchasing_items                = "Purchasing Items:"
LANGUAGE.purchasing_items_text           = "Press F2 to purchase and order items to be airdropped to you. You can only order items outdoors."
LANGUAGE.the_panic_button                = "The Panic Button:"
LANGUAGE.the_panic_button_text           = "Press F3 to activate the panic button. It automatically detects your ailments and attempts to fix them using what you have in your inventory."
LANGUAGE.the_hud                         = "The HUD:"
LANGUAGE.the_hud_text                    = "The location of important locations and items are marked on your screen. Your teammates are highlighted through walls, as well as the antidote." 
LANGUAGE.radiation_poison                = "If you have radiation poisoning, an icon indicating the severity of the poisoning will appear on the bottom left of your screen. An icon will also appear if you are bleeding or infected."
LANGUAGE.evacuation                      = "Evacuation:"
LANGUAGE.evacuation_text                 = "At the last minute of the round, a helicopter will come to rescue your squad. Run to the evac zone marked on your HUD to be rescued."
LANGUAGE.the_infection                   = "The Infection:"
LANGUAGE.the_infection_text              = "The common undead will infect you when they hit you. To cure infection, go to the antidote and press your USE key to access it. The antidote location is always marked on your HUD."
LANGUAGE.the_zombie_lord                 = "The Zombie Lord:"
LANGUAGE.the_zombie_lord_text            = "If there are more than 8 players then a zombie lord will be chosen. If the zombie lord manages to fill their blood meter, they will respawn as a human with a special reward."
LANGUAGE.radiation                       = "Radiation:"
LANGUAGE.radiation_text                  = "Radiation is visually unnoticeable. When near radiation, your handheld geiger counter will make sounds indicating how close you are to a radioactive deposit. Radiation poisoning is cured by vodka or Anti-Rad."

--Help Menu Button Text
LANGUAGE.b_word1                         = "Holy Shit I Don't Care"
LANGUAGE.b_word2                         = "I Didn't Read Any Of That"
LANGUAGE.b_word3                         = "That's A Lot Of Words"
LANGUAGE.b_word4                         = "I'd Rather Just Whine For Help"
LANGUAGE.b_word5                         = "Just Wanna Play Video Games"
LANGUAGE.b_word6                         = "Who Gives A Shit?"
LANGUAGE.b_word7                         = "Help Menus Are For Nerds"
LANGUAGE.b_word8                         = "I Thought This Was A Roleplay Server"
LANGUAGE.b_word9                         = "How I Shoot Zobies"
LANGUAGE.b_word10                        = "How Do I Buy Wepon"
LANGUAGE.b_word11                        = "HEY GUYS WHERES ANTIDOTE this game suck"
LANGUAGE.b_word12                        = "WHERE MY INVENTOREY"
LANGUAGE.b_word13                        = "TL;DR"
LANGUAGE.b_word14                        = "FUCK OFF"

--Scoreboard
LANGUAGE.member                          = " Member )"
LANGUAGE.members                         = " Members )"
LANGUAGE.kills                           = "Kills"
LANGUAGE.sss                             = "s"
LANGUAGE.ping                            = "Ping"
LANGUAGE.unit_9                          = "Unit 9"
LANGUAGE.the_undead                      = "The Undead"

--Inventory Category
LANGUAGE.category_weapons                = "Weapons"
LANGUAGE.category_ammunition             = "Ammunition"
LANGUAGE.category_supplies               = "Supplies"
LANGUAGE.category_misc                   = "Miscellaneous"

--Inventory Stuff
LANGUAGE.drop                            = "Drop"
LANGUAGE.cash_i                          = "Cash: $%s"

--Shop Stuff
LANGUAGE.cancel                          = "Cancel"
LANGUAGE.buy_multiple                    = "Buy Multiple"         
LANGUAGE.drop_multiple                   = "Drop Multiple"
LANGUAGE.drop_all                        = "Drop All"
LANGUAGE.cost_na                         = "Cost: N/A"
LANGUAGE.cost_x                          = "Cost: %x Bones"
LANGUAGE.airdrop_items                   = "Airdrop  Items"

--Screen Notice
LANGUAGE.evac_in                         = " minutes until evac arrives"
LANGUAGE.evac_in_route                   = "The evac chopper is en route"
LANGUAGE.evac_has_arrived                = "The evac chopper has arrived"
LANGUAGE.evac_has_arrived2               = "You have 45 seconds to reach the evac zone"
LANGUAGE.evac_has_arrived3               = "The location has been marked"
LANGUAGE.evac_success                    = "You were successfully evacuated"
LANGUAGE.evac_has_arrived3               = "The location has been marked"
LANGUAGE.press_to_help                   = "Press F1 to view the help menu"
LANGUAGE.press_to_buy                    = "Press F2 to buy items and weapons"
LANGUAGE.press_to_panic                  = "Press F3 to activate the panic button"
LANGUAGE.onslaught_begun                 = "The undead onslaught has begun"
LANGUAGE.press_to_zombielord             = "Press F4 if you want to be the zombie lord"
LANGUAGE.antidot_location                = "The antidote resupply location has changed"
LANGUAGE.new_mutation                    = "New undead mutations have been spotted"
LANGUAGE.your_health_bellow30            = "Your health has dropped below 30%"
LANGUAGE.your_health_bellow30_tip        = "Health doesn't regenerate when below 30%"
LANGUAGE.earn_5_bone_headshot            = "Headshot combos earn you more Bones"
LANGUAGE.prepare_to_respawn_human        = "Prepare to respawn as a human"
LANGUAGE.the_undead_overhelmet           = "The undead have overwhelmed %n"
LANGUAGE.successfully_evac               = "%n has successfully evacuated"
LANGUAGE.next_map                        = "Next map: %n"
LANGUAGE.evac_left_without_you           = "The evac chopper left without you"
LANGUAGE.cannot_use_radio                = "You cannot use your radio indoors"
LANGUAGE.radio_offline                   = "Radio communications are offline"
LANGUAGE.panic_button_detected           = "Panic button detected that you were %v"
LANGUAGE.panic_button_didnot             = "Panic button did not detect any usable items"
LANGUAGE.one_minute                      = "1 minute"
LANGUAGE.two_minutes                     = "2 minutes"
LANGUAGE.three_minutes                   = "3 minutes"
LANGUAGE.thirty_seconds                  = "30 seconds"
LANGUAGE.ninety_seconds                  = "90 seconds"
LANGUAGE.antidot_supply_low_for          = "Antidote supplies will be low for %t"
LANGUAGE.antidot_shortage_end            = "The antidote shortage has ended"
LANGUAGE.nukelear_fallout                = "Nuclear fallout contamination is imminent"
LANGUAGE.enter_building                  = "Enter a building to avoid radiation poisoning"
LANGUAGE.subvise_for_x                   = "The atmospheric fallout will subside in %t"
LANGUAGE.radioactivity_end               = "Atmospheric radioactivity levels are now safe"
LANGUAGE.radio_down_for_x                = "Radio communications will be down for %t"
LANGUAGE.radio_back_online               = "Radio communications are back online"
LANGUAGE.surviving_scientist_found       = "A surviving field researcher has been sighted"
LANGUAGE.keep_eye_on_supply              = "Keep an eye out for a civilian weapon cache"
LANGUAGE.weather_worseing                = "The weather conditions are worsening"

--HUD stuff
LANGUAGE.total_hud                       = "TOTAL"
LANGUAGE.ammo_hud                        = "AMMO"
LANGUAGE.bones_hud                       = "%c Bones"
LANGUAGE.bone                            = "Bone"
 










