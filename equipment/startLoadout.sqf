waitUntil {!isNull player};
waitUntil {player == player};
diag_log "startLoadout.sqf starting...";

//BLUFOR EQUIPMENT =============================================================
_blufor_schuetze = {
	comment "Exported from Arsenal by McDiod";

	comment "Remove existing items";
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player;

	comment "Add containers";
	player forceAddUniform "rhs_uniform_vdv_flora";
	for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
	player addItemToUniform "ACE_epinephrine";
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
	for "_i" from 1 to 2 do {player addItemToUniform "rhs_mag_rdg2_white";};
	player addVest "rhs_6b23_6sh92";
	player addItemToVest "rhs_mag_rgd5";
	for "_i" from 1 to 8 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
	player addHeadgear "rhs_6b28_green";

	comment "Add weapons";
	player addWeapon "rhs_weap_ak74m";
	player addPrimaryWeaponItem "rhs_acc_dtk";
	player addPrimaryWeaponItem "rhs_acc_2dpZenit";
	player addPrimaryWeaponItem "rhs_acc_1p63";
	player addWeapon "Binocular";

	comment "Add items";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "ItemWatch";
	player linkItem "tf_fadak";
	player linkItem "ItemGPS";
};

//OPFOR EQUIPMENT ==============================================================


//INDEPENDENT EQUIPMENT ========================================================

//CIVILIAN EQUIPMENT ===========================================================

_civ_derkurier = {


};

//DEFAULT EQUIPMENT ============================================================
_empty = {
	comment "Remove existing items";
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player;

	diag_log "PLAYER EQUIPMENT NOT FOUND!";
};


//ADD EQUIPMENT ================================================================
//Add Blufor
if (str side player == "WEST") then {
	switch (roleDescription player) do
	{
		case "Schütze" : {call _blufor_schuetze};
		default {call _empty};
	};
};

//Add Opfor
if (str side player == "EAST") then {
	switch (roleDescription player) do
	{

		default {call _empty};
	};
};

//Add Independent
if (str side player == "GUER") then {
	switch (roleDescription player) do
	{

		default {call _empty};
	};
};

//Add Civ
if (str side player == "CIV") then {
	call _civ_derkurier;
};
