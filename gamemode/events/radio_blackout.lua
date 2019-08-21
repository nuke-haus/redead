
local EVENT = {}

EVENT.Chance = 0.75
EVENT.Type = EVENT_BAD
EVENT.TimeText = { translate.Get("thirty_seconds"), translate.Get("one_minute"), translate.Get("ninety_seconds") }  
EVENT.Times = { 30, 60, 90 }  

function EVENT:Start()
	
	local num = math.random(1,3)
	
	GAMEMODE.RadioBlock = CurTime() + EVENT.Times[ num ]
	
	for k,v in pairs( team.GetPlayers( TEAM_ARMY ) ) do
		
		v:Notice( translate.Format("radio_down_for_x", EVENT.TimeText[ num ]), GAMEMODE.Colors.Red, 5 )
		v:Notice( translate.Get("radio_back_online"), GAMEMODE.Colors.White, 5, EVENT.Times[ num ] )
		
	end
	
end
	
function EVENT:Think()

end

function EVENT:EndThink()

	return true // true ends this immediately

end

function EVENT:End()

end

event.Register( EVENT )
