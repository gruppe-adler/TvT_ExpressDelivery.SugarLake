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
sleep (STARTDELAYS select 0);
[STARTORDER select 0] execVM "server\startTeam.sqf";
diag_log format ["Starting game for %1.", STARTORDER select 0];

sleep (STARTDELAYS select 1) - (STARTDELAYS select 0);
[STARTORDER select 1] execVM "server\startTeam.sqf";
diag_log format ["Starting game for %1.", STARTORDER select 1];

sleep (STARTDELAYS select 2) - (STARTDELAYS select 1) - (STARTDELAYS select 0);
[STARTORDER select 2] execVM "server\startTeam.sqf";
diag_log format ["Starting game for %1.", STARTORDER select 2];
