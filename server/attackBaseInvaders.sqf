/* Makes military base civ guards attack anyone who enters
*
* executed via init.sqf on server
*
*/

//wait until game has started
waitUntil {ALLTEAMSSTARTED};

//updated by trigger
MILBASEUNITS = [];
waitUntil {!isNil "MILBASETRIGGER"};
waitUntil {!isNull MILBASETRIGGER};

diag_log "attackBaseInvaders.sqf starting...";

while {true} do {
  MILBASEUNITS = list MILBASETRIGGER;
  //remove objects
  {
    if (_x isKindOf "Man") then {} else {MILBASEUNITS = MILBASEUNITS - [_x]};
  } forEach MILBASEUNITS;

  //check if there are any non-civs inside the trigger
  if (civilian countSide MILBASEUNITS != count MILBASEUNITS) then {
    diag_log "non-civ unit in military base trigger detected";
    MILBASEUNITS = MILBASEUNITS;
    {
      if (str side _x == "CIV" || !alive _x) then {
        MILBASEUNITS = MILBASEUNITS - [_x];
      };
    } forEach MILBASEUNITS;

    units group guard1 doTarget (MILBASEUNITS select 0);
    units group guard1 doFire (MILBASEUNITS select 0);
    sleep 5;
  };

  sleep 5;
};
