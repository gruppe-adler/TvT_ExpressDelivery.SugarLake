if (isServer) then {
  OBJECTIVE_MARKER_POS = [0,0,0];
  publicVariable "OBJECTIVE_MARKER_POS";
  OBJECTIVE_MARKER_HIDDEN = true;
  publicVariable "OBJECTIVE_MARKER_HIDDEN";

  [] execVM "server\missionMarkers.sqf";
  [] execVM "server\objectiveMarker.sqf";

};


if (hasInterface) then {

  [] execVM "player\objectiveMarker.sqf";

};
