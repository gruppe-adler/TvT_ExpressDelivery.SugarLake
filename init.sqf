disableRemoteSensors true;

STARTDELAY_BLUE = 20;
STARTDELAY_RED = 15;
STARTDELAY_GREEN = 10;
STARTDELAY_CIV = 0;

DEFENSE_TIME = 60;

//SERVER =======================================================================
if (isServer) then {

  //setup
  [theobjective, theboat] call ace_cargo_fnc_loadItem;
  STARTDELAYS = [[STARTDELAY_BLUE,STARTDELAY_RED,STARTDELAY_GREEN]] call BIS_fnc_sortBy;
  STARTORDER = [["STARTDELAY_BLUE","STARTDELAY_RED","STARTDELAY_GREEN"], [], {call compile _x}] call BIS_fnc_sortBy;

  //public variables
  RED_ELIMINATED = false;
  publicVariable "RED_ELIMINATED";
  BLUE_ELIMINATED = false;
  publicVariable "BLUE_ELIMINATED";
  GREEN_ELIMINATED = false;
  publicVariable "GREEN_ELIMINATED";
  GAME_OVER = false;
  publicVariable "GAME_OVER";
  ALLTEAMSSTARTED = false;
  publicVariable "ALLTEAMSSTARTED";
  OBJECTIVE_MARKER_POS = [0,0,0];
  publicVariable "OBJECTIVE_MARKER_POS";
  OBJECTIVE_MARKER_HIDDEN = true;
  publicVariable "OBJECTIVE_MARKER_HIDDEN";
  TRIGGER_GREEN_ACTIVE = false;
  publicVariable "TRIGGER_GREEN_ACTIVE";
  TRIGGER_BLUE_ACTIVE = false;
  publicVariable "TRIGGER_BLUE_ACTIVE";
  TRIGGER_RED_ACTIVE = false;
  publicVariable "TRIGGER_RED_ACTIVE";
  DEFENSE_TIME_GREEN = DEFENSE_TIME;
  publicVariable "DEFENSE_TIME_GREEN";
  DEFENSE_TIME_BLUE = DEFENSE_TIME;
  publicVariable "DEFENSE_TIME_BLUE";
  DEFENSE_TIME_RED = DEFENSE_TIME;
  publicVariable "DEFENSE_TIME_RED";

  //scripts
  [] execVM "server\missionMarkers.sqf";
  [] execVM "server\vehicleMarkers.sqf";
  [] execVM "server\objectiveMarker.sqf";
  [] execVM "server\startGame.sqf";
  [] execVM "server\dropoffTriggers.sqf";
  [] execVM "server\detectAllDead.sqf";
  [] execVM "server\detectObjectiveDead.sqf";
  [] execVM "server\attackBaseInvaders.sqf";

  //Groups
  ["Initialize"] call BIS_fnc_dynamicGroups;

  //TFAR
  if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {
    [] execVM "tfarsettings.sqf";
  };

  [] execVM "helpers\medical_settings.sqf";
};

//PLAYER =======================================================================
if (hasInterface) then {

  [] execVM "player\objectiveMarker.sqf";

  //loadout
  [] spawn {
    sleep (random 3);
    [] execVM "equipment\startLoadout.sqf";
  };

  //Groups
  ["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

  if (!didJIP) then {
    //Intro
    //[] execVM "helpers\intro.sqf";
  };

};
