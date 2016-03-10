waitUntil {!isNil "player"};
waitUntil {!isNull player};

this = player;

//BLUFOR EQUIPMENT =============================================================
_blufor_schuetze = {
	comment "Exported from Arsenal by McDiod";

	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	comment "Add containers";
	this forceAddUniform "rhs_uniform_vdv_flora";
	for "_i" from 1 to 12 do {this addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 4 do {this addItemToUniform "ACE_morphine";};
	this addItemToUniform "ACE_epinephrine";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_EarPlugs";};
	for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_rdg2_white";};
	this addVest "rhs_6b23_6sh92";
	this addItemToVest "rhs_mag_rgd5";
	for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_545x39_AK";};
	this addHeadgear "rhs_6b28_green";

	comment "Add weapons";
	this addWeapon "rhs_weap_ak74m";
	this addPrimaryWeaponItem "rhs_acc_dtk";
	this addPrimaryWeaponItem "rhs_acc_2dpZenit";
	this addPrimaryWeaponItem "rhs_acc_1p63";
	this addWeapon "Binocular";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_fadak";
	this linkItem "ItemGPS";
};

//OPFOR EQUIPMENT ==============================================================


//INDEPENDENT EQUIPMENT ========================================================


//DEFAULT EQUIPMENT ============================================================
_empty = {
	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	diag_log "PLAYER EQUIPMENT NOT FOUND!";
};


//ADD EQUIPMENT ================================================================
//Add Blufor
if (side player == west) then {
	switch (roleDescription player) do
	{
		case "Schütze" : {call _blufor_schuetze};
		default {call _empty};
	};
};

//Add Opfor
if (side player == east) then {
	switch (roleDescription player) do
	{

		default {call _empty};
	};
};

//Add Independent
if (side player == resistance) then {
	switch (roleDescription player) do
	{

		default {call _empty};
	};
};
