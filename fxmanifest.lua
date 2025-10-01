fx_version 'adamant'

game 'gta5'

description 'Outlaw Gym Shop'

version '50.0'

shared_script '@ox_lib/init.lua'

server_scripts {
	'@mysql-async/lib/MySQL.lua',  -- enable this and remove oxmysql line (line 11) if you use mysql-async (only enable this for qbcore/esx framework)
	--'@oxmysql/lib/MySQL.lua', -- enable this and remove mysql async line (line 10) if you use oxmysql (only enable this for qbcore/esx framework)
	'config.lua',
	'language/main.lua',
	'server/main.lua',
	'server/other.lua'
}

client_scripts {
	'config.lua',
	'language/main.lua',
	'client/main.lua',
	'client/stats.lua'
}

files {
	'html/ui.html',
	'html/styles.css',
	'html/scripts.js',
	'html/debounce.min.js',
	'html/BebasNeueBold.ttf',
	'html/img/*.png'
}

ui_page 'html/ui.html'

server_exports {
	'SavePlayer',  -- exports["outlaw_gym"]:SavePlayer(source) Use this export to save player
	'AddStats', -- exports["outlaw_gym"]:AddStats(source, "condition", 25.0) Use this export to add specific player stats
	'RemoveStats', -- exports["outlaw_gym"]:RemoveStats(source, "condition", 25.0) Use this export to remove specific player stats
	'UpdateStats', -- exports["outlaw_gym"]:UpdateStats(source, "condition", 25.0) Use this export to replace the player's specific stat
	'GetStats', -- exports["outlaw_gym"]:GetStats(source, "condition") Through this export you will gain a specific player stat
	'GetAllStats', -- exports["outlaw_gym"]:GetAllStats(source)  Through this export you gain all player stats
}

exports {
	'GetStats',  -- exports["outlaw_gym"]:GetStats("condition") Through this export you will gain a specific player stat
	'GetAllStats', -- exports["outlaw_gym"]:GetAllStats()  Through this export you gain all player stats
	'IsPlayerExercise', -- exports["outlaw_gym"]:IsPlayerExercise()  Through this export you can check if the player is exercising
	'IsPlayerShowering', -- exports["outlaw_gym"]:IsPlayerShowering()  Through this export you can check if the player taking a shower
}

lua54 'yes'

escrow_ignore {
  'config.lua',
  'language/main.lua',
  'server/other.lua',
  'client/stats.lua'
}
dependency '/assetpacks'
