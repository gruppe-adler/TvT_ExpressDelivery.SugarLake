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
_opfor_squadlead = {
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
	player forceAddUniform "U_Office_B";
	player addItemToUniform "FirstAidKit";
	for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
	player addItemToUniform "ACE_EarPlugs";
	for "_i" from 1 to 2 do {player addItemToUniform "rhs_mag_rdg2_white";};
	for "_i" from 1 to 2 do {player addItemToUniform "rhs_mag_rgo";};
	player addVest "V_FlakJacket_Pliskin_Black";
	for "_i" from 1 to 9 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
	player addHeadgear "H_Hat_grey";
	player addGoggles "G_Squares";

	comment "Add weapons";
	player addWeapon "rhs_weap_ak105_npz";
	player addPrimaryWeaponItem "rhs_acc_dtk";
	player addPrimaryWeaponItem "rhsusf_acc_eotech_552";
	player addWeapon "Binocular";

	comment "Add items";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "ItemWatch";
	player linkItem "tf_fadak";
	player linkItem "ItemGPS";

	comment "Set identity";
	player setFace "RHS_WhiteHead_08";
	player setSpeaker "RHS_Male04RUS";
};

_opfor_mg = {
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
	player forceAddUniform "U_CivilianHunter_D";
	player addItemToUniform "FirstAidKit";
	for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
	for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
	player addVest "V_Chestrig_blk";
	for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rgo";};
	player addItemToVest "rhs_100Rnd_762x54mmR";
	for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_rdg2_white";};
	player addBackpack "B_FieldPack_blk";
	player addItemToBackpack "rhs_100Rnd_762x54mmR";
	for "_i" from 1 to 3 do {player addItemToBackpack "rhs_100Rnd_762x54mmR_green";};
	player addHeadgear "rds_Villager_cap1";

	comment "Add weapons";
	player addWeapon "rhs_weap_pkp";

	comment "Add items";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "ItemWatch";
	player linkItem "tf_fadak";
	player linkItem "ItemGPS";

	comment "Set identity";
	player setFace "RHS_WhiteHead_15";
	player setSpeaker "RHS_Male03RUS";
};

_opfor_mg_ass = {
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
	player forceAddUniform "U_CivilianSport_A";
	player addItemToUniform "FirstAidKit";
	for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
	for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
	player addVest "V_Chestrig_blk";
	for "_i" from 1 to 9 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
	for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rgo";};
	for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rdg2_black";};
	player addBackpack "B_TacticalPack_blk";
	for "_i" from 1 to 3 do {player addItemToBackpack "rhs_100Rnd_762x54mmR_green";};
	player addHeadgear "rds_worker_cap4";

	comment "Add weapons";
	player addWeapon "rhs_weap_ak74m_dtk";
	player addPrimaryWeaponItem "rhs_acc_dtk";
	player addPrimaryWeaponItem "rhs_acc_ekp1";
	player addWeapon "Binocular";

	comment "Add items";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "ItemWatch";
	player linkItem "tf_fadak";
	player linkItem "ItemGPS";

	comment "Set identity";
	player setFace "WhiteHead_03";
	player setSpeaker "RHS_Male04RUS";
};

_opfor_medic_1 = {
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
	player forceAddUniform "U_MilitaryCoat_A";
	player addItemToUniform "FirstAidKit";
	for "_i" from 1 to 30 do {player addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
	for "_i" from 1 to 8 do {player addItemToUniform "ACE_epinephrine";};
	for "_i" from 1 to 15 do {player addItemToUniform "ACE_morphine";};
	player addVest "V_ChestRig_light_C";
	for "_i" from 1 to 7 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
	for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_rdg2_white";};
	player addHeadgear "rds_Villager_cap1";
	player addGoggles "COREV_G_Reading_A";

	comment "Add weapons";
	player addWeapon "rhs_weap_ak105";
	player addPrimaryWeaponItem "rhs_acc_dtk";
	player addWeapon "Binocular";

	comment "Add items";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "ItemWatch";
	player linkItem "tf_fadak";
	player linkItem "ItemGPS";

	comment "Set identity";
	player setFace "RHS_WhiteHead_11";
	player setSpeaker "RHS_Male04RUS";
};

_opfor_medic_2 = {
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
	player forceAddUniform "U_MilitaryCoat_D";
	player addItemToUniform "FirstAidKit";
	for "_i" from 1 to 30 do {player addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
	for "_i" from 1 to 8 do {player addItemToUniform "ACE_epinephrine";};
	for "_i" from 1 to 15 do {player addItemToUniform "ACE_morphine";};
	player addVest "V_Vest_light_Invisible";
	for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_rdg2_white";};
	for "_i" from 1 to 6 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
	player addHeadgear "H_Hat_brown";

	comment "Add weapons";
	player addWeapon "Auto545x39_AKS74U";
	player addWeapon "Binocular";

	comment "Add items";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "ItemWatch";
	player linkItem "tf_fadak";
	player linkItem "ItemGPS";
};

_opfor_rifleman_1 = {
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
	player forceAddUniform "rds_uniform_citizen4";
	for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
	for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
	player addVest "V_Vest_light_Invisible";
	for "_i" from 1 to 9 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
	player addHeadgear "H_Beret_blk";

	comment "Add weapons";
	player addWeapon "rhs_weap_ak74m_dtk";
	player addPrimaryWeaponItem "rhs_acc_dtk";
	player addPrimaryWeaponItem "rhs_acc_pkas";
	player addWeapon "Binocular";

	comment "Add items";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "ItemWatch";
	player linkItem "tf_fadak";
	player linkItem "ItemGPS";

	comment "Set identity";
	player setFace "RHS_GreekHead_A3_08";
	player setSpeaker "RHS_Male01RUS";
};

_opfor_rifleman_2 = {
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
	player forceAddUniform "rds_uniform_citizen4";
	for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
	for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
	player addVest "V_Vest_light_Invisible";
	for "_i" from 1 to 9 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
	player addHeadgear "rhs_beanie_green";

	comment "Add weapons";
	player addWeapon "rhs_weap_ak74m_camo";
	player addPrimaryWeaponItem "rhs_acc_dtk";
	player addPrimaryWeaponItem "rhs_acc_2dpZenit";
	player addPrimaryWeaponItem "rhs_acc_pkas";
	player addWeapon "Binocular";

	comment "Add items";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "ItemWatch";
	player linkItem "tf_fadak";
	player linkItem "ItemGPS";
};

_opfor_mp = {
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
	player forceAddUniform "rhs_uniform_gorka_r_y";
	for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
	player addVest "V_Vest_light_InvNoArmor";
	for "_i" from 1 to 2 do {player addItemToVest "71Rnd_762x25_PPSh";};
	for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rgo";};
	for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_rdg2_white";};
	player addBackpack "B_FieldPack_khk";
	for "_i" from 1 to 6 do {player addItemToBackpack "71Rnd_762x25_PPSh";};

	comment "Add weapons";
	player addWeapon "Smg762x25_PPSh41_B";
	player addWeapon "Binocular";

	comment "Add items";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "ItemWatch";
	player linkItem "tf_fadak";
	player linkItem "ItemGPS";

	comment "Set identity";
	player setFace "WhiteHead_14";
};

_opfor_teamlead = {
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
	player forceAddUniform "U_CivilianHunter_A";
	player addItemToUniform "FirstAidKit";
	for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
	for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 2 do {player addItemToUniform "rhs_mag_rdg2_white";};
	for "_i" from 1 to 3 do {player addItemToUniform "rhs_mag_rgo";};
	player addVest "V_BandollierB_blk";
	for "_i" from 1 to 7 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
	player addGoggles "G_Shades_Black";

	comment "Add weapons";
	player addWeapon "rhs_weap_ak74m_2mag";
	player addPrimaryWeaponItem "rhs_acc_dtk";
	player addPrimaryWeaponItem "rhs_acc_2dpZenit";
	player addPrimaryWeaponItem "rhs_acc_ekp1";
	player addWeapon "Binocular";

	comment "Add items";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "ItemWatch";
	player linkItem "tf_fadak";
	player linkItem "ItemGPS";
};

_opfor_explosive = {
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
	player forceAddUniform "U_MilitiaSport_B";
	player addItemToUniform "FirstAidKit";
	for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
	for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
	player addItemToUniform "ACE_Clacker";
	for "_i" from 1 to 2 do {player addItemToUniform "rhs_mag_rdg2_white";};
	player addVest "V_Vest_light_Invisible";
	player addItemToVest "rhs_mag_rgn";
	for "_i" from 1 to 8 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
	player addBackpack "rhs_assault_umbts";
	for "_i" from 1 to 2 do {player addItemToBackpack "APERSTripMine_Wire_Mag";};
	for "_i" from 1 to 4 do {player addItemToBackpack "rhsusf_m112_mag";};
	for "_i" from 1 to 4 do {player addItemToBackpack "rhs_mag_rgo";};
	player addHeadgear "H_Hat_CapSov_B";
	player addGoggles "NeckTight_GryBLK";

	comment "Add weapons";
	player addWeapon "Auto545x39_AKS74U";
	player addWeapon "Binocular";

	comment "Add items";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "ItemWatch";
	player linkItem "tf_fadak";
	player linkItem "ItemGPS";

	comment "Set identity";
	player setFace "COREV_AsianHead_A3_07";
	player setSpeaker "RHS_Male02RUS";
};

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
		case "Der Boss (Squadlead)" : {call _opfor_squadlead};
		case "Oleg (MG)" : {call _opfor_mg};
		case "Pyotr (MG Ass.)" : {call _opfor_mg_ass};
		case "Dr. Yeryomin (Medic)" : {call _opfor_medic_1};
		case "Dmitry (Rifleman)" : {call _opfor_rifleman_1};
		case "Grigory (PPSh-41)" : {call _opfor_mp};
		case "Sergey (Teamlead)" : {call _opfor_teamlead};
		case "Alexey (Explosives)" : {call _opfor_explosive};
		case "Vladimir (Rifleman)" : {call _opfor_rifleman_2};
		case "Dr. Pila (Medic)" : {call _opfor_medic_2};
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
