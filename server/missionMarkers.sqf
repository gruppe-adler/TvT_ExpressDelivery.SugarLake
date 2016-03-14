/*  Creates global markers for mission
*
*   executed via init.sqf on server
*/

//Blufor Dropoff
_pos = getPos trigger_dropoff_blue;
_size = triggerArea trigger_dropoff_blue;
_marker = createMarker ["marker_dropoff_blue", _pos];
_marker setMarkerType "mil_end";
_marker setMarkerColor "COLORWEST";

_marker = createMarker ["marker_dropoff_blue_circle", _pos];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerSize [_size select 0, _size select 1];
_marker setMarkerBrush "Border";
_marker setMarkerColor "COLORWEST";

//Opfor Dropoff
_pos = getPos trigger_dropoff_red;
_size = triggerArea trigger_dropoff_red;
_marker = createMarker ["marker_dropoff_red", _pos];
_marker setMarkerType "mil_end";
_marker setMarkerColor "COLOREAST";

_marker = createMarker ["marker_dropoff_red_circle", _pos];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerSize [_size select 0, _size select 1];
_marker setMarkerBrush "Border";
_marker setMarkerColor "COLOREAST";

//Ind Dropoff
_pos = getPos trigger_dropoff_green;
_size = triggerArea trigger_dropoff_green;
_marker = createMarker ["marker_dropoff_green", _pos];
_marker setMarkerType "mil_end";
_marker setMarkerColor "COLORGUER";

_marker = createMarker ["marker_dropoff_green_circle", _pos];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerSize [_size select 0, _size select 1];
_marker setMarkerBrush "Border";
_marker setMarkerColor "COLORGUER";



_legendMarkerPos = [8500,8100,0];
_yIncrement = -350;
_mcd_fnc_legendmarker = {
  _markername = format ["marker_legend_%1", (_legendMarkerPos select 1)];
  _marker = createMarker [_markername, _legendMarkerPos];
  _marker setMarkerType (_this select 0);
  _marker setMarkerColor (_this select 1);
  _marker setMarkerText (_this select 2);

  _legendMarkerPos = _legendMarkerPos vectorAdd [0,_yIncrement,0];
};

_legendMarkers = [
  ["mil_arrow", "COLORCIV", "Startpunkt des Transportbootes"],
  ["mil_pickup", "COLORCIV", "Haltepunkt zum Be-/Entladen"],
  ["mil_start", "COLORCIV", "Fracht wird auf LKW verladen"],
  ["mil_dot", "COLORCIV", "Route des LKWs"],
  ["mil_end", "COLORCIV", "Endpunkt des LKWs"],
  ["mil_flag", "COLORWEST", "Basis Spezialeinsatzkräfte"],
  ["mil_flag", "COLOREAST", "Basis russische Mafia"],
  ["mil_flag", "COLORGUER", "Basis Rebellen"],
  ["mil_end", "COLORWEST", "Abgabepunkt Spezialeinsatzkräfte"],
  ["mil_end", "COLOREAST", "Abgabepunkt russische Mafia"],
  ["mil_end", "COLORGUER", "Abgabepunkt Rebellen"],
  ["c_car", "COLORBLACK", "Leere(s) Fahrzeug(e)"],
  ["c_ship", "COLORBLACK", "Leere(s) Boot(e)"]
];

{_x call _mcd_fnc_legendmarker} forEach _legendMarkers;
