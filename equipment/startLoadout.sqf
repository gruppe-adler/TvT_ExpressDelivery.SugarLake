waitUntil {!isNull player};
waitUntil {player == player};
diag_log "startLoadout.sqf starting...";

//CIVILIAN EQUIPMENT ===========================================================
_civ_derkurier = {
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
	this forceAddUniform "U_C_HunterBody_grn";
	this addItemToUniform "ACE_EarPlugs";
	for "_i" from 1 to 20 do {this addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 4 do {this addItemToUniform "ACE_morphine";};
	this addVest "V_Vest_light_Invisible";
	for "_i" from 1 to 6 do {this addItemToVest "rhs_30Rnd_545x39_AK";};
	this addHeadgear "H_Booniehat_grn";
	this addGoggles "G_Spectacles_Tinted";

	comment "Add weapons";
	this addWeapon "Auto545x39_AKS74U";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "ItemGPS";

	comment "Set identity";
	this setFace "GreekHead_A3_04";
	this setSpeaker "Male06GRE";
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
	#include "bluforLoadouts.sqf";
	switch (roleDescription player) do
	{
		case "Team Leader" : {call _blufor_squadLead};
		case "Squad Leader" : {call _blufor_squadLead};
		case "Rifleman" : {call _blufor_rifleman};
		case "Auto Rifleman (M249)" : {call _blufor_mg};
		case "Auto Rifleman Ass." : {call _blufor_mg_ass};
		case "Combat Medic" : {call _blufor_medic};
		case "CQC Specialist (SMG)" : {call _blufor_smg};
		default {call _empty};
	};
};

//Add Opfor
if (str side player == "EAST") then {
	#include "opforLoadouts.sqf";
	switch (roleDescription player) do
	{
		case "Der Boss (Squad Leader)" : {call _opfor_squadlead};
		case "Oleg (MG)" : {call _opfor_mg};
		case "Pyotr (MG Ass.)" : {call _opfor_mg_ass};
		case "Dr. Yeryomin (Medic)" : {call _opfor_medic_1};
		case "Dmitry (Rifleman)" : {call _opfor_rifleman_1};
		case "Grigory (PPSh-41)" : {call _opfor_mp};
		case "Sergey (Team Leader)" : {call _opfor_teamlead};
		case "Alexey (Explosives)" : {call _opfor_explosive};
		case "Vladimir (Rifleman)" : {call _opfor_rifleman_2};
		case "Dr. Pila (Medic)" : {call _opfor_medic_2};
		default {call _empty};
	};
};

//Add Independent
if (str side player == "GUER") then {
	#include "indepLoadouts.sqf";
	switch (roleDescription player) do
	{
		case "Farhad (Team Leader)" : {call _indep_teamlead};
		case "Bahram (Squad Leader)" : {call _indep_squadlead};
		case "Muhamad (MG)" : {call _indep_mg};
		case "Kayhan (MG Ass.)" : {call _indep_mg_ass};
		case "Kamal (Medic)" : {call _indep_medic_1};
		case "Ahmed (Medic)" : {call _indep_medic_2};
		case "Karim (Rifleman)" : {call _indep_rifleman_1};
		case "Hatip (Rifleman)" : {call _indep_rifleman_2};
		case "Aynur (Rifleman)" : {call _indep_rifleman_3};
		case "Ibrahim (Marksman)" : {call _indep_marksman};
		default {call _empty};
	};
};

//Add Civ
if (str side player == "CIV") then {
	call _civ_derkurier;
};
