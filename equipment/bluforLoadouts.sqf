//BLUFOR EQUIPMENT =============================================================
_blufor_rifleman = {
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
  player forceAddUniform "ARC_Common_Black_Uniform";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
  player addVest "V_Police_heavy";
  for "_i" from 1 to 9 do {player addItemToVest "30Rnd_556x45_Stanag";};

  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
  for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
  player addHeadgear "SMA_Helmet_Black";
  player addGoggles "G_Balaclava_blk";

  comment "Add weapons";
  player addWeapon "Auto556x45_TAR21";
  player addPrimaryWeaponItem "rhsusf_acc_eotech_552";
  player addWeapon "rhsusf_weap_m9";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_anprc152";
  player linkItem "ItemGPS";
};

_blufor_squadLead = {
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
  player forceAddUniform "ARC_Common_Black_Uniform";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
  player addVest "V_Police_heavy";
  for "_i" from 1 to 9 do {player addItemToVest "30Rnd_556x45_Stanag";};
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
  for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
  player addHeadgear "SMA_Helmet_Black";
  player addGoggles "rhs_googles_clear";

  comment "Add weapons";
  player addWeapon "Auto556x45_TAR21";
  player addPrimaryWeaponItem "rhsusf_acc_eotech_552";
  player addWeapon "rhsusf_weap_m9";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_anprc152";
  player linkItem "ItemGPS";
};

_blufor_mg = {
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
  player forceAddUniform "ARC_Common_Black_Uniform";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
  player addVest "V_Police_heavy";
  for "_i" from 1 to 2 do {player addItemToVest "rhsusf_100Rnd_556x45_M200_soft_pouch";};
  for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
  player addItemToVest "HandGrenade";
  player addBackpack "B_AssaultPack_blk";
  for "_i" from 1 to 3 do {player addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
  player addHeadgear "SMA_Helmet_Black";
  player addGoggles "G_Balaclava_blk";

  comment "Add weapons";
  player addWeapon "rhs_weap_m249_pip_S";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_anprc152";
  player linkItem "ItemGPS";
};

_blufor_mg_ass = {
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
  player forceAddUniform "ARC_Common_Black_Uniform";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
  player addVest "V_Police_heavy";
  for "_i" from 1 to 9 do {player addItemToVest "30Rnd_556x45_Stanag";};
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
  for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
  player addBackpack "B_AssaultPack_blk";
  for "_i" from 1 to 3 do {player addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
  player addHeadgear "SMA_Helmet_Black";
  player addGoggles "G_Balaclava_blk";

  comment "Add weapons";
  player addWeapon "Auto556x45_TAR21";
  player addPrimaryWeaponItem "rhsusf_acc_eotech_552";
  player addWeapon "rhsusf_weap_m9";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_anprc152";
  player linkItem "ItemGPS";
};

_blufor_medic = {
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
  player forceAddUniform "ARC_Common_Black_Uniform";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
  player addVest "V_Police_heavy";
  for "_i" from 1 to 9 do {player addItemToVest "30Rnd_556x45_Stanag";};
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";
  for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
  player addBackpack "B_Kitbag_A";
  for "_i" from 1 to 40 do {player addItemToBackpack "ACE_fieldDressing";};
  for "_i" from 1 to 4 do {player addItemToBackpack "ACE_bloodIV_250";};
  for "_i" from 1 to 2 do {player addItemToBackpack "ACE_EarPlugs";};
  for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
  for "_i" from 1 to 20 do {player addItemToBackpack "ACE_morphine";};
  player addHeadgear "SMA_Helmet_Black";
  player addGoggles "G_Balaclava_blk";

  comment "Add weapons";
  player addWeapon "Auto556x45_TAR21";
  player addPrimaryWeaponItem "rhsusf_acc_eotech_552";
  player addWeapon "rhsusf_weap_m9";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_anprc152";
  player linkItem "ItemGPS";
};

_blufor_smg = {
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
  player forceAddUniform "ARC_Common_Black_Uniform";
  for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
  player addVest "V_Police_heavy";
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";
  for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
  for "_i" from 1 to 8 do {player addItemToVest "30Rnd_9x21_Mag";};
  player addHeadgear "SMA_Helmet_Black";
  player addGoggles "G_Balaclava_blk";

  comment "Add weapons";
  player addWeapon "SMG_02_F";
  player addPrimaryWeaponItem "muzzle_snds_L";
  player addPrimaryWeaponItem "FHQ_optic_MicroCCO";
  player addWeapon "rhsusf_weap_m9";
  player addWeapon "Binocular";

  comment "Add items";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "tf_anprc152";
  player linkItem "ItemGPS";
};
