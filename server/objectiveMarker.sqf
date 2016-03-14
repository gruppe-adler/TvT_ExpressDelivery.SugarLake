waitUntil {!isNil "theobjective"};
waitUntil {!isNull theobjective};

diag_log "server - objectiveMarker.sqf starting";

_heightForLoaded = -30;

_objectivePos = getPosASL theobjective;
_inVehicle = ((_objectivePos select 2) < _heightForLoaded);
if (_inVehicle) then {OBJECTIVE_MARKER_HIDDEN = false; publicVariable "OBJECTIVE_MARKER_HIDDEN"};

diag_log format ["theobjective in vehicle? - %1", _inVehicle];

while {true} do {
  //get position of objective
  _objectivePos = getPosASL theobjective;

  //did it change states?
  if (_inVehicle) then {
    //unloaded from vehicle
    if ((_objectivePos select 2) > _heightForLoaded) then {
      _inVehicle = false;
      OBJECTIVE_MARKER_HIDDEN = true;
      publicVariable "OBJECTIVE_MARKER_HIDDEN";

      diag_log "objective was unloaded from vehicle";
    };

  } else {
    //loaded into vehicle
    if ((_objectivePos select 2) < _heightForLoaded) then {
      _inVehicle = true;
      OBJECTIVE_MARKER_HIDDEN = false;
      publicVariable "OBJECTIVE_MARKER_HIDDEN";

      diag_log "objective was loaded into vehicle";
    };
  };

  //broadcast position
  if (_inVehicle) then {
    OBJECTIVE_MARKER_POS = getPosASL theobjective;
    publicVariable "OBJECTIVE_MARKER_POS";
  };

  sleep 1;
};
