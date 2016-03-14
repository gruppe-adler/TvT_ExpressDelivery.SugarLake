/* Detects if the objective still exists and ends mission if not
*
* executed via init.sqf on server
*/

if (!isServer) exitWith {};
waitUntil {ALLTEAMSSTARTED};
diag_log "detectObjectiveDead.sqf starting...";

[] spawn {
  while {true} do {
    if (isNull theobjective) then {
      [["Niemand"], "helpers\endMission.sqf"] remoteExec ["execVM",0,false];
    };

    sleep 10;
  };
};
