STARTDELAY_BLUE = 60;
STARTDELAY_RED = 70;
STARTDELAY_GREEN = 40;
STARTDELAY_CIV = 0;


if (isServer) then {

  [theobjective, theboat] call ace_cargo_fnc_loadItem;

  STARTDELAYS = [[STARTDELAY_BLUE,STARTDELAY_RED,STARTDELAY_GREEN]] call BIS_fnc_sortBy;
  STARTORDER = [["STARTDELAY_BLUE","STARTDELAY_RED","STARTDELAY_GREEN"], [], {call compile _x}] call BIS_fnc_sortBy;

  OBJECTIVE_MARKER_POS = [0,0,0];
  publicVariable "OBJECTIVE_MARKER_POS";
  OBJECTIVE_MARKER_HIDDEN = true;
  publicVariable "OBJECTIVE_MARKER_HIDDEN";

  [] execVM "server\missionMarkers.sqf";
  [] execVM "server\objectiveMarker.sqf";
  [] execVM "server\startGame.sqf";


  //Groups
  ["Initialize"] call BIS_fnc_dynamicGroups;

  //TFAR
  if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {
    [] execVM "tfarsettings.sqf";
  };
};


if (hasInterface) then {

  [] execVM "player\objectiveMarker.sqf";

  //Groups
  ["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

  if (!didJIP) then {
    //Intro
    //[] execVM "helpers\intro.sqf";
  };

};
