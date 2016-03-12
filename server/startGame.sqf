/* handles the game start
*
* executed via init.sqf on server
*/

//wait until players are ingame
waitUntil{!(isNil "BIS_MPF_InitDone")};
sleep 10;

diag_log "Running startGame.sqf";

//executed safestart hint on all clients
[[], "player\safeStartHint.sqf"] remoteExec ["execVM",0,false];
