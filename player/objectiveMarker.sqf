/*	creates marker on objective position
*
*		stolen from @nomisum
*		executed via init.sqf on player
*/

diag_log "player - objectiveMarker.sqf starting";

xxx = createMarkerLocal ["objective_marker", [0, 0, 0]];
"objective_marker" setMarkerShapeLocal "ELLIPSE";
"objective_marker" setMarkerTypeLocal "mil_unknown";
"objective_marker" setMarkerColorLocal "ColorOPFOR";
"objective_marker" setMarkerAlphaLocal 1;
"objective_marker" setMarkerSizeLocal [1, 1];
"objective_marker" setMarkerBrushLocal "SolidFull";

markerAnimationIsRunning = false;

markerAnimation = {
	private ["_pulseSpeed","_pulsesize","_pulseMaxSize", "_modifier"];

	playSound "beep";
	hint "Receiving tracking device.";
  /*
	if (playerSide == west) then {
		cutRsc ["gui_intel_paper_us","PLAIN",0];
	} else {
		cutRsc ["gui_intel_paper_rus","PLAIN",0];
	};
  */

	markerAnimationIsRunning = true;
	_pulsesize = _this select 0;
	_pulseMaxSize = _this select 1;
	_pulseSpeed = _this select 2;
	_modifier = 1;

	"objective_marker" setMarkerAlphaLocal 1;
	while {!OBJECTIVE_MARKER_HIDDEN} do {
		if (_pulsesize > _pulseMaxSize) then {
			_pulsesize = 1;
			_modifier = 0.3;
		};
		_pulsesize = _pulsesize + _modifier;
		_modifier = _modifier + 0.1;
		"objective_marker" setMarkerAlphaLocal 1 - (_pulsesize/_pulseMaxSize);
		"objective_marker" setMarkerSizeLocal [_pulsesize, _pulsesize];
		sleep _pulseSpeed;
	};

	markerAnimationIsRunning = false;
	call endTransmissionEffects;

};

ensureMarkerAnimation = {
	_maxSize = 250; //marker precision (radius)
	_size = 1;
	_animationSpeed = 0.02;

	if (!markerAnimationIsRunning) then {

		[_size, _maxSize, _animationSpeed] spawn markerAnimation;
	};
};

endTransmissionEffects = {
	playSound "signal_lost";
	hint "Tracking device signal lost.";
  /*
  if (playerSide == west) then {
		cutRsc ["gui_intel_paper_us_lost","PLAIN",0];
	} else {
		cutRsc ["gui_intel_paper_rus_lost","PLAIN",0];
	};
  */
};

_OBJECTIVE_MARKER_POS_listener = {
	"objective_marker" setMarkerPosLocal (_this select 1);
};

_OBJECTIVE_MARKER_HIDDEN_listener = {
	if (_this select 1) then {
		"objective_marker" setMarkerAlphaLocal 0;
	} else {
		call ensureMarkerAnimation;
	};
};

"OBJECTIVE_MARKER_POS" addPublicVariableEventHandler _OBJECTIVE_MARKER_POS_listener;
"OBJECTIVE_MARKER_HIDDEN" addPublicVariableEventHandler _OBJECTIVE_MARKER_HIDDEN_listener;

// runs in SP to emulate addPublicVariableEventHandler (which doesnt work in SP)
if (isServer && hasInterface) then {
	[_OBJECTIVE_MARKER_HIDDEN_listener, _OBJECTIVE_MARKER_POS_listener] spawn {
		while {true} do {
			[0, OBJECTIVE_MARKER_HIDDEN] call (_this select 0);
			[0, OBJECTIVE_MARKER_POS] call (_this select 1);
			sleep 2;
		};
	};
};
