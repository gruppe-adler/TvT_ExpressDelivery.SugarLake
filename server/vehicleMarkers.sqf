/* Creates markers for all empty vehicles on the map
*
* executed via init.sqf on server
*/

_minDist = 100;   //minimum distance between markers
_mapCenter = [4180.04,4174.98];

//find empty cars and boats
_playerBoats = [boat_blue_1,boat_blue_2,boat_blue_3,boat_green_1,boat_green_2,boat_green_3,boat_red_1,boat_red_2,boat_red_3,theboat];
_playerCars = [thetruck,truck_prop_1,truck_prop_2,car_prop_1,car_prop_2];

_allCars = nearestObjects [_mapCenter, ["Car"],10000];
_emptyCars = _allCars - _playerCars;

_allBoats = nearestObjects [_mapCenter, ["Ship"], 10000];
_emptyBoats = _allBoats - _playerBoats;

//clean inventory
[_emptyCars, _emptyBoats] execVM "server\clearVehicles.sqf";


//create car markers ===========================================================
_carMarkers = [];
for [{_i=0}, {_i < (count _emptyCars)}, {_i = _i + 1}] do {

  //get car position
  _carPos = getPos (_emptyCars select _i);

  //check if there are any markers too close
  _tooClose = false;
  {
    _markerPos = getMarkerPos _x;
    if ((_markerPos distance2D _carPos) < _minDist) then {
      _tooClose = true;
    };
  } forEach _carMarkers;

  //create marker
  if (!_tooClose) then {
    _markerName = format ["carMarker_%1", _i];
    _marker = createMarker [_markerName, _carPos];
    _marker setMarkerType "c_car";
    _carMarkers pushBack _marker;
  };
};
diag_log format ["vehicleMarkers.sqf - Created %1 car markers.", count _carMarkers];


//create boat markers ==========================================================
_boatMarkers = [];
for [{_i=0}, {_i < (count _emptyBoats)}, {_i = _i + 1}] do {

  //get car position
  _boatPos = getPos (_emptyBoats select _i);

  //check if there are any markers too close
  _tooClose = false;
  {
    _markerPos = getMarkerPos _x;
    if ((_markerPos distance2D _boatPos) < _minDist) then {
      _tooClose = true;
    };
  } forEach _boatMarkers;

  //create marker
  if (!_tooClose) then {
    _markerName = format ["boatMarker_%1", _i];
    _marker = createMarker [_markerName, _boatPos];
    _marker setMarkerType "c_ship";
    _boatMarkers pushBack _marker;
  };
};
diag_log format ["vehicleMarkers.sqf - Created %1 boat markers.", count _boatMarkers];
