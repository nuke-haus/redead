
local EVENT = {}

EVENT.Chance = 0.75
EVENT.Type = EVENT_BAD
EVENT.TimeText = { "rd_notices_radio_communications_are_offline_time", "rd_notices_radio_communications_are_offline_time2", "rd_notices_radio_communications_are_offline_time3" }  
EVENT.Times = { 30, 60, 90 }  

function EVENT:Start()
	
	local num = math.random(1,3)
	
	GAMEMODE.RadioBlock = CurTime() + EVENT.Times[ num ]
	
	for k,v in pairs( team.GetPlayers( TEAM_ARMY ) ) do
		
		v:Notice( translate.ClientFormat( v, "rd_notices_radio_communications_are_offline_for_x", translate.ClientGet( v, EVENT.TimeText[ num ] ) ), GAMEMODE.Colors.Red, 5 )
		v:Notice( translate.ClientGet( v, "rd_notices_radio_communications_are_online" ), GAMEMODE.Colors.White, 5, EVENT.Times[ num ] )
		
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
