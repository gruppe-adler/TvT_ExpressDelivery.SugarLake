/* Starts the game for each team
*
* executed via server\startGame.sqf on server
*/

//start game for team
_mcd_fnc_startTeam = {
  {
    _x lock false;
  } forEach (_this select 0);

};

//call function for specific team
switch (_this select 0) do {
  case "STARTDELAY_BLUE": {_boats = [boat_blue_1, boat_blue_2, boat_blue_3]; [_boats] call _mcd_fnc_startTeam};
  case "STARTDELAY_RED": {_boats = [boat_red_1, boat_red_2, boat_red_3]; [_boats] call _mcd_fnc_startTeam};
  case "STARTDELAY_GREEN": {_boats = [boat_green_1, boat_green_2, boat_green_3]; [_boats] call _mcd_fnc_startTeam};
  default {diag_log "startTeam.sqf - team not found."};
};
