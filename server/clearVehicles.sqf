/* Clears inventory of all empty vehicles
*
* executed via server\vehicleMarkers.sqf on server
*/

_emptyCars = _this select 0;
_emptyBoats = _this select 1;

{
  clearWeaponCargoGlobal _x;
  clearItemCargoGlobal _x;
  clearMagazineCargoGlobal _x;
  clearBackpackCargoGlobal _x;
} forEach _emptyCars;

{
  clearWeaponCargoGlobal _x;
  clearItemCargoGlobal _x;
  clearMagazineCargoGlobal _x;
  clearBackpackCargoGlobal _x;
} forEach _emptyBoats;
