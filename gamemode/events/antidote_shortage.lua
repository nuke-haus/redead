
local EVENT = {}

EVENT.Chance = 0.75
EVENT.Type = EVENT_BAD
EVENT.TimeText = { translate.Get("one_minute"), translate.Get("two_minutes"), translate.Get("three_minutes") }  
EVENT.Times = { 60, 120, 180 }  

function EVENT:Start()
	
	local num = math.random(1,3)
	
	EVENT.EndTime = CurTime() + EVENT.Times[ num ]
	EVENT.ThinkTime = 0
	
	for k,v in pairs( team.GetPlayers( TEAM_ARMY ) ) do
		
		v:Notice( translate.Format("antidot_supply_low_for", EVENT.TimeText[ num ]), GAMEMODE.Colors.Red, 5 )
		v:Notice( translate.Get("antidot_shortage_end"), GAMEMODE.Colors.White, 5, EVENT.Times[ num ] )
		
	end
	
end
	
function EVENT:Think()

	if EVENT.ThinkTime < CurTime() then
		
		EVENT.ThinkTime = CurTime() + 3
		
		if IsValid( GAMEMODE.Antidote ) and GAMEMODE.Antidote:CuresLeft() > 1 then
		
			GAMEMODE.Antidote:SetCures( 1 )
		
		end
	
	end

end

function EVENT:EndThink()

	return EVENT.EndTime < CurTime() // true ends this immediately

end

function EVENT:End()

end

event.Register( EVENT )
