_winningTeam = _this select 0;


if (hasInterface)then {
  //parse static text
  if (_winningTeam == "Niemand") then {
    _headline = parseText format ["<t align='center'>Der Koffer wurde zerstört! Mission fehlgeschlagen.</t>"];
  } else {
    _headline = parseText format ["<t align='center'>Team %1 hat gewonnen!</t>", _winningTeam];
  };
  _rule = parseText "<t align='center'><t color='#708090'>----------------------------------------------<br /></t></t>";
  _lineBreak = parseText "<br />";

  hint composeText [_rule, _headline, _lineBreak, _rule];

  sleep 3;
  if (_winningTeam == "Grün") then {
    if (str side player == "GUER") then {
      ["end1", true, true] call BIS_fnc_endMission;
    } else {
      ["end1", false, true] call BIS_fnc_endMission;
    };
  };

  if (_winningTeam == "Blau") then {
    if (str side player == "WEST") then {
      ["end1", true, true] call BIS_fnc_endMission;
    } else {
      ["end1", false, true] call BIS_fnc_endMission;
    };
  };

  if (_winningTeam == "Rot") then {
    if (str side player == "EAST") then {
      ["end1", true, true] call BIS_fnc_endMission;
    } else {
      ["end1", false, true] call BIS_fnc_endMission;
    };
  };

  if (_winningTeam == "Niemand") then {
    ["end1", false, true] call BIS_fnc_endMission;
  };
};

if (isServer) then {
  sleep 20;
  ["Lost"] call BIS_fnc_endMissionServer;
};
