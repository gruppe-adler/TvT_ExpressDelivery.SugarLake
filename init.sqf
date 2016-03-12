STARTDELAY_BLUE = 60;
STARTDELAY_RED = 70;
STARTDELAY_GREEN = 40;
STARTDELAY_CIV = 10;


if (isServer) then {
  OBJECTIVE_MARKER_POS = [0,0,0];
  publicVariable "OBJECTIVE_MARKER_POS";
  OBJECTIVE_MARKER_HIDDEN = true;
  publicVariable "OBJECTIVE_MARKER_HIDDEN";

  [] execVM "server\missionMarkers.sqf";
  [] execVM "server\objectiveMarker.sqf";
  [] execVM "server\startGame.sqf";

};


if (hasInterface) then {

  [] execVM "player\objectiveMarker.sqf";

};
