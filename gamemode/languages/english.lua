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

-- Zombie Class Names
LANGUAGE.zclass_runner                   = "Runner"
LANGUAGE.zclass_banshee                  = "Banshee"
LANGUAGE.zclass_contagion                = "Contagion"
LANGUAGE.zclass_leaper                   = "Leaper"

-- Zombie Class Description
LANGUAGE.zclass_runner_desk              = "The Runner: A resilient and agile zombie. Capable of infecting humans with its claws."
LANGUAGE.zclass_banshee_desk             = "The Banshee: A highly radioactive zombie. Capable of disorienting humans with its scream."
LANGUAGE.zclass_contagion_desk           = "The Contagion: A bloated, festering zombie. When killed it will burst into a shower of acid."
LANGUAGE.zclass_leaper_desk              = "The Leaper: A bony, mutated zombie. Capable of jumping great distances and making humans bleed with its claws."

-- Human Class Description
LANGUAGE.hclass_scout_desk               = "The Scout: Wears lightweight kevlar armor, allowing for improved mobility. Starts off with extra %ss."
LANGUAGE.hclass_commando_desk            = "The Commando: Wears prototype kevlar armor, allowing for improved damage resistance."
LANGUAGE.hclass_specialist_desk          = "The Specialist: Has access to restricted utilities and weaponry."
LANGUAGE.hclass_engineer_desk            = "The Technician: Starts off with the tools needed for barricade construction."





