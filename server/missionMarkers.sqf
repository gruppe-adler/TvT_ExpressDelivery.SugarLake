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
_marker setMarkerShape "CIRCLE";
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
_marker setMarkerShape "CIRCLE";
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
_marker setMarkerShape "CIRCLE";
_marker setMarkerSize [_size select 0, _size select 1];
_marker setMarkerBrush "Border";
_marker setMarkerColor "COLORGUER";
