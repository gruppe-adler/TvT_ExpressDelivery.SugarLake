//INDEPENDENT EQUIPMENT ========================================================

_indep_teamlead = {
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
  player forceAddUniform "U_CombatUniShirtMercC_B";
  player addItemToUniform "FirstAidKit";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
  player addVest "V_TacVestEX_G";
  for "_i" from 1 to 9 do {player addItemToVest "rhs_30Rnd_762x39mm";};
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rdg2_white";};
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rgo";};
  player addHeadgear "H_Hat_Kufiya_D";

  comment "Add weapons";
  player addWeapon "rhs_weap_akms";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_pnr1000a";
  player linkItem "ItemGPS";
};

_indep_squadlead = {
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
  player forceAddUniform "U_CombatUniShirtMercC_D";
  player addItemToUniform "FirstAidKit";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
  player addVest "V_TacVestUP_E";
  for "_i" from 1 to 8 do {player addItemToVest "rhs_30Rnd_762x39mm";};
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rdg2_white";};
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rgo";};
  player addHeadgear "H_Hat_Taqiyah_E";
  player addGoggles "rhs_scarf";

  comment "Add weapons";
  player addWeapon "rhs_weap_akms";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_pnr1000a";
  player linkItem "ItemGPS";
};

_indep_mg = {
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
  player forceAddUniform "U_MilitiaUniTShirt_A";
  player addItemToUniform "FirstAidKit";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
  player addVest "V_ChestRig_heavy_D";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rdg2_white";};
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rgo";};
  player addItemToVest "rhs_100Rnd_762x54mmR";
  player addBackpack "B_FieldPack_oli";
  player addItemToBackpack "rhs_100Rnd_762x54mmR";
  for "_i" from 1 to 3 do {player addItemToBackpack "rhs_100Rnd_762x54mmR_green";};
  player addHeadgear "H_Shemag_olive";

  comment "Add weapons";
  player addWeapon "rhs_weap_pkm";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_pnr1000a";
  player linkItem "ItemGPS";
};

_indep_mg_ass = {
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
  player forceAddUniform "U_MilitiaUniTShirt_E";
  player addItemToUniform "FirstAidKit";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
  player addVest "V_Vest_light_Invisible";
  for "_i" from 1 to 8 do {player addItemToVest "rhs_30Rnd_762x39mm";};
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rdg2_white";};
  player addBackpack "B_FieldPack_khk";
  player addItemToBackpack "rhs_100Rnd_762x54mmR";
  for "_i" from 1 to 3 do {player addItemToBackpack "rhs_100Rnd_762x54mmR_green";};
  player addHeadgear "H_Hat_HeadbandL_E";
  player addGoggles "G_Bandanna_blk";

  comment "Add weapons";
  player addWeapon "rhs_weap_akms";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_pnr1000a";
  player linkItem "ItemGPS";
};

_indep_medic_1 = {
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
  player forceAddUniform "U_TKLocalCombat_B";
  player addItemToUniform "FirstAidKit";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
  player addVest "V_Vest_light_Invisible";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rdg2_white";};
  for "_i" from 1 to 8 do {player addItemToVest "rhs_30Rnd_762x39mm";};
  player addBackpack "B_TacticalPack_blk";
  for "_i" from 1 to 40 do {player addItemToBackpack "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToBackpack "ACE_bloodIV_250";};
  for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
  for "_i" from 1 to 20 do {player addItemToBackpack "ACE_morphine";};
  for "_i" from 1 to 10 do {player addItemToBackpack "rhs_mag_rdg2_white";};
  player addHeadgear "H_Hat_Kufiya_F";

  comment "Add weapons";
  player addWeapon "rhs_weap_akm";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_pnr1000a";
  player linkItem "ItemGPS";
};

_indep_medic_2 = {
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
  player forceAddUniform "U_DressTKLocalUni_B_B";
  player addItemToUniform "FirstAidKit";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
  player addVest "V_Vest_light_Invisible";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rdg2_white";};
  for "_i" from 1 to 7 do {player addItemToVest "rhs_30Rnd_762x39mm";};
  player addBackpack "B_TacticalPack_blk";
  for "_i" from 1 to 40 do {player addItemToBackpack "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToBackpack "ACE_bloodIV_250";};
  for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
  for "_i" from 1 to 20 do {player addItemToBackpack "ACE_morphine";};
  for "_i" from 1 to 10 do {player addItemToBackpack "rhs_mag_rdg2_white";};
  player addHeadgear "H_Hat_Kufiya_B";

  comment "Add weapons";
  player addWeapon "rhs_weap_akm";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_pnr1000a";
  player linkItem "ItemGPS";
};

_indep_rifleman_1 = {
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
  player forceAddUniform "U_DressTKLocalUni_A_B";
  player addItemToUniform "FirstAidKit";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
  player addVest "V_ChestRig_heavy_A";
  for "_i" from 1 to 9 do {player addItemToVest "rhs_30Rnd_762x39mm";};
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rdg2_white";};
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rgo";};
  player addHeadgear "H_Hat_Turban_A";
  player addGoggles "G_Bandanna_blk";

  comment "Add weapons";
  player addWeapon "rhs_weap_akm";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_pnr1000a";
  player linkItem "ItemGPS";
};

_indep_rifleman_2 = {
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
  player forceAddUniform "U_CombatUniShirtMercB_B";
  player addItemToUniform "FirstAidKit";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
  player addVest "V_TacVestEX_A";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rdg2_white";};
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rgo";};
  for "_i" from 1 to 9 do {player addItemToVest "rhs_30Rnd_762x39mm";};
  player addHeadgear "H_ShemagOpen_tan";

  comment "Add weapons";
  player addWeapon "rhs_weap_akms";
  player addPrimaryWeaponItem "rhs_acc_2dpZenit";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_pnr1000a";
  player linkItem "ItemGPS";
};

_indep_explosives = {
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
  player forceAddUniform "U_TKLocalCombat_E";
  player addItemToUniform "FirstAidKit";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_Cellphone";
  player addVest "V_ChestRig_light_A";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rdg2_white";};
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rgo";};
  for "_i" from 1 to 9 do {player addItemToVest "rhs_30Rnd_762x39mm";};
  player addBackpack "B_RucksackBag_B";
  for "_i" from 1 to 2 do {player addItemToBackpack "IEDLandSmall_Remote_Mag";};
  for "_i" from 1 to 2 do {player addItemToBackpack "APERSTripMine_Wire_Mag";};
  player addItemToBackpack "IEDUrbanSmall_Remote_Mag";
  player addHeadgear "H_Hat_Pakol";
  player addGoggles "G_Bandanna_tan";

  comment "Add weapons";
  player addWeapon "rhs_weap_akms";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_pnr1000a";
  player linkItem "ItemGPS";
};

_indep_marksman = {
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
  player forceAddUniform "U_DressTKLocalUni_D_B";
  player addItemToUniform "FirstAidKit";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "5Rnd_762x54_M91";
  player addVest "V_Vest_light_Invisible";
  for "_i" from 1 to 12 do {player addItemToVest "5Rnd_762x54_M91";};
  player addHeadgear "H_Hat_Face_Wrap_Olive";

  comment "Add weapons";
  player addWeapon "Bolt762x54_M9130_RIS";
  player addPrimaryWeaponItem "FHQ_optic_VCOG";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_pnr1000a";
  player linkItem "ItemGPS";
};
