/* Plays a countdown for safe start
*
* executed via remoteExec by server
*/

if (!hasInterface) exitWith {};
if (str side player == "CIV") exitWith {};

_mcd_fnc_safeStartHint = {

  //parameters
  _startDelay = _this select 0;
  _playerSide = _this select 1;

  //parse static text
  _headline = parseText format ["<t align='center'>Spielstart für %1 in:</t>", _playerSide];
  _rule = parseText "<t align='center'><t color='#708090'>----------------------------------------------<br /></t></t>";
  _lineBreak = parseText "<br />";

  //countdown hint
  for "_i" from 0 to _startDelay-6 do {
    _timeLeft = parseText format ["<t align='center'><t color='#ffff00'>%1s</t></t>", _startDelay - _i];
    hint composeText [_rule,_headline, _lineBreak, _timeLeft, _lineBreak, _rule];
    sleep 1;
  };

  //countdown hint + sound for the last 5 seconds
  for "_i" from _startDelay-5 to _startDelay-1 do{
    _timeLeft = parseText format ["<t align='center'><t color='#ffff00'>%1s</t></t>", _startDelay - _i];
    hint composeText [_rule,_headline, _lineBreak, _timeLeft, _lineBreak, _rule];
    [] spawn {player say3D "addTime"};
    sleep 1;
  };

  //start message
  _startText = parseText "<t align='center'><t color='#00ff00'>LOS LOS LOS!</t></t>";
  hint composeText [_rule, _startText, _lineBreak, _rule];
  player say3D "FD_Start_F";
};


//call function with side specific start time
switch (str side player) do {
  case "WEST": {[STARTDELAY_BLUE, "Team Blau"] spawn _mcd_fnc_safeStartHint};
  case "EAST": {[STARTDELAY_RED, "Team Rot"] spawn _mcd_fnc_safeStartHint};
  case "GUER": {[STARTDELAY_GREEN, "Team Grün"] spawn _mcd_fnc_safeStartHint};
  case "CIV": {[STARTDELAY_CIV, "Zivilisten"] spawn _mcd_fnc_safeStartHint};
  default {hint "player side undefined"};
};
