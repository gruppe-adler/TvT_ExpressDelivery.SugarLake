/* handles the game start
*
* executed via init.sqf on server
*/

//display setup hint
_headline = parseText "<t align='center'>Setting Up...</t>";
_rule = parseText "<t align='center'><t color='#708090'>----------------------------------------------<br /></t></t>";
_lineBreak = parseText "<br />";
_hintTxt = composeText [_rule, _headline, _linebreak, _rule];
_hintTxt remoteExec ["hint", 0, false];

//wait until players are ingame
sleep 10;

diag_log "Running startGame.sqf";

//execute safestart hint on all clients
[[], "player\safeStartHint.sqf"] remoteExec ["execVM",0,false];

//wait start delays and start game for each team
[] spawn {
  sleep (STARTDELAYS select 0);
  [STARTORDER select 0] execVM "server\startTeam.sqf";
  diag_log format ["Starting game for %1.", STARTORDER select 0];
};

[] spawn {
  sleep (STARTDELAYS select 1);
  [STARTORDER select 1] execVM "server\startTeam.sqf";
  diag_log format ["Starting game for %1.", STARTORDER select 1];
};

[] spawn {
  sleep (STARTDELAYS select 2);
  [STARTORDER select 2] execVM "server\startTeam.sqf";
  diag_log format ["Starting game for %1.", STARTORDER select 2];
};

sleep (STARTDELAYS select ((count STARTDELAYS)-1));
ALLTEAMSSTARTED = true;
publicVariable "ALLTEAMSSTARTED";
diag_log "Game has started for all teams.";
