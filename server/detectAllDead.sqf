/* Checks if two teams are dead
*	from Breaking Contact by @nomisum
*
* executed via init.sqf on server
*/

if (!isServer) exitWith {};
waitUntil {ALLTEAMSSTARTED};
diag_log "server - detectAllDead.sqf starting...";

checkForReal = {
	_varName = _this select 0;
	_bool = call compile (_this select 0);

	for [{_i=0}, {_i<20}, {_i=_i+1}] do
	{
		if (!_bool) exitWith {};
		sleep 1;
	};
	if (_bool && _varName == "RED_PRE_ELIMINATED") then {RED_ELIMINATED = true;};
	if (_bool && _varName == "BLUE_PRE_ELIMINATED") then {BLUE_ELIMINATED = true;};
	if (_bool && _varName == "GREEN_PRE_ELIMINATED") then {GREEN_ELIMINATED = true;};
};

[] spawn {
    while {true} do {
        RED_PRE_ELIMINATED = (({side _x == east} count playableUnits) + ({side _x == east} count switchableUnits) == 0);
        BLUE_PRE_ELIMINATED = (({side _x == west} count playableUnits)  + ({side _x == west} count switchableUnits) == 0);
				GREEN_PRE_ELIMINATED = (({side _x == resistance} count playableUnits)  + ({side _x == resistance} count switchableUnits) == 0);

        if (RED_PRE_ELIMINATED) then {["RED_PRE_ELIMINATED"] spawn checkForReal;};
        if (BLUE_PRE_ELIMINATED) then {["BLUE_PRE_ELIMINATED"] spawn checkForReal;};
				if (GREEN_PRE_ELIMINATED) then {["GREEN_PRE_ELIMINATED"] spawn checkForReal;};

				if (RED_ELIMINATED && BLUE_ELIMINATED && !GAME_OVER) exitWith {
					diag_log "Green won - ending mission.";
					[["Grün"], "helpers\endMission.sqf"] remoteExec ["execVM",0,false];
				};

				if (RED_ELIMINATED && GREEN_ELIMINATED && !GAME_OVER) exitWith {
					diag_log "Blue won - ending mission";
					[["Blau"], "helpers\endMission.sqf"] remoteExec ["execVM",0,false];
				};

				if (BLUE_ELIMINATED && GREEN_ELIMINATED && !GAME_OVER) exitWith {
					diag_log "Red won - ending mission";
					[["Rot"], "helpers\endMission.sqf"] remoteExec ["execVM",0,false];
				};
        sleep 2;
    };
};
