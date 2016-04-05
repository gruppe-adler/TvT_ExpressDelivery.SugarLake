waitUntil {ALLTEAMSSTARTED};
diag_log "server - dropoffTriggers.sqf starting...";

mcd_fnc_gameProgressHint = {
  //parse static text
  _headline = parseText format ["<t align='center'>Team %1 muss noch %2 Sekunden durchhalten.</t>", _this select 0, _this select 1];
  _rule = parseText "<t align='center'><t color='#708090'>----------------------------------------------<br /></t></t>";
  _lineBreak = parseText "<br />";

  //remote execute hint
  _hintTxt = composeText [_rule,_headline,_lineBreak,_rule];
  _hintTxt remoteExec ["hint", 0, false];
};

mcd_fnc_firstMessage = {
  //parse static text
  _headline = parseText format ["<t align='center'>Team %1 ist beim Abgabepunkt!</t>", _this select 0];
  _rule = parseText "<t align='center'><t color='#708090'>----------------------------------------------<br /></t></t>";
  _lineBreak = parseText "<br />";

  //remote execute hint
  _hintTxt = composeText [_rule,_headline,_lineBreak,_rule];
  _hintTxt remoteExec ["hint", 0, false];
};

mcd_fnc_endGame = {
  _teamName = _this select 0;

  //GREEN
  if (_teamName == "Grün") then {
    _veh = createVehicle ["COREV_I_TME_Mi8AMTSh", [-72.5681,3372.77,50], [], 0, "FLY"];
    createVehicleCrew _veh;
    _wp = group _veh addWaypoint [getPos trigger_dropoff_green, 0];
    _wp setWaypointType "MOVE";
    _wp setWaypointCombatMode "RED";

    GAME_OVER = true;
    publicVariable "GAME_OVER";
    sleep 45;

    [["Grün"], "helpers\endMission.sqf"] remoteExec ["execVM",0,false];
  };

  //BLUE
  if (_teamName == "Blau") then {
    _veh = createVehicle ["B_Heli_Transport_01_F", [9452.1,7962.36,50], [], 0, "FLY"];
    createVehicleCrew _veh;
    _wp = group _veh addWaypoint [getPos trigger_dropoff_blue, 0];
    _wp setWaypointType "MOVE";
    _wp setWaypointCombatMode "RED";

    GAME_OVER = true;
    publicVariable "GAME_OVER";
    sleep 45;

    [["Blau"], "helpers\endMission.sqf"] remoteExec ["execVM",0,false];
  };

  //RED
  if (_teamName == "Rot") then {
    _veh = createVehicle ["O_Heli_Light_02_v2_F", [9481.85,1989.82,50], [], 0, "FLY"];
    createVehicleCrew _veh;
    _wp = group _veh addWaypoint [getPos trigger_dropoff_red, 0];
    _wp setWaypointType "MOVE";
    _wp setWaypointCombatMode "RED";

    GAME_OVER = true;
    publicVariable "GAME_OVER";
    sleep 45;

    [["Rot"], "helpers\endMission.sqf"] remoteExec ["execVM",0,false];
  };
};

//TEAM GRÜN ====================================================================
[] spawn {
  _startTime = DEFENSE_TIME_GREEN;
  _gameWon = false;
  _firstMessageSent = false;

  //check if trigger is active in this loop
  while {true} do {

    //if it is, do this
    while {TRIGGER_GREEN_ACTIVE} do {

      //hint every 20%
      if (_firstMessageSent) then {
        if ((DEFENSE_TIME_GREEN*5) mod _startTime == 0) then {
          ["Grün", DEFENSE_TIME_GREEN] spawn mcd_fnc_gameProgressHint;
        };
      };

      if (!_firstMessageSent) then {
        ["Grün"] spawn mcd_fnc_firstMessage;
        _firstMessageSent = true;
      };

      if (DEFENSE_TIME_GREEN <= 0) exitWith {_gameWon = true};

      sleep 1;
      DEFENSE_TIME_GREEN = DEFENSE_TIME_GREEN - 1;
    };

    if (_gameWon) exitWith {["Grün"] call mcd_fnc_endGame};
    sleep 2;
  };
};


//TEAM BLAU ====================================================================
[] spawn {
  _startTime = DEFENSE_TIME_BLUE;
  _gameWon = false;
  _firstMessageSent = false;

  //check if trigger is active in this loop
  while {true} do {

    //if it is, do this
    while {TRIGGER_BLUE_ACTIVE} do {

      //hint every 20%
      if (_firstMessageSent) then {
        if ((DEFENSE_TIME_BLUE*5) mod _startTime == 0) then {
          ["Blau", DEFENSE_TIME_BLUE] spawn mcd_fnc_gameProgressHint;
        };
      };

      if (!_firstMessageSent) then {
        ["Blau"] spawn mcd_fnc_firstMessage;
        _firstMessageSent = true;
      };

      if (DEFENSE_TIME_BLUE <= 0) exitWith {_gameWon = true};

      sleep 1;
      DEFENSE_TIME_BLUE = DEFENSE_TIME_BLUE - 1;
    };

    if (_gameWon) exitWith {["Blau"] call mcd_fnc_endGame};
    sleep 2;
  };
};

//TEAM ROT =====================================================================
[] spawn {
  _startTime = DEFENSE_TIME_RED;
  _gameWon = false;
  _firstMessageSent = false;

  //check if trigger is active in this loop
  while {true} do {

    //if it is, do this
    while {TRIGGER_RED_ACTIVE} do {

      //hint every 20%
      if (_firstMessageSent) then {
        if ((DEFENSE_TIME_RED*5) mod _startTime == 0) then {
          ["Rot", DEFENSE_TIME_RED] spawn mcd_fnc_gameProgressHint;
        };
      };

      if (!_firstMessageSent) then {
        ["Rot"] spawn mcd_fnc_firstMessage;
        _firstMessageSent = true;
      };

      if (DEFENSE_TIME_RED <= 0) exitWith {_gameWon = true};

      sleep 1;
      DEFENSE_TIME_RED = DEFENSE_TIME_RED - 1;
    };

    if (_gameWon) exitWith {["Rot"] call mcd_fnc_endGame};
    sleep 2;
  };
};
