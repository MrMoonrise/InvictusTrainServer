_unit = _this select 1;

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "U_B_CombatUniform_mcam_worn";
_unit addBackpack "B_Kitbag_mcamo";
for "_i" from 1 to 15 do {_unit addItemToBackpack "20Rnd_762x51_Mag"};
for "_i" from 1 to 5 do {_unit addItemToBackpack "FirstAidKit"};
_unit addVest "V_PlateCarrierH_CTRG";
for "_i" from 1 to 5 do {_unit addItemToVest "20Rnd_762x51_Mag"};

comment "Add weapons";
_unit addWeapon "srifle_DMR_03_tan_F";
_unit addPrimaryWeaponItem "optic_ERCO_snd_F";
_unit addWeapon "Rangefinder";
_unit addWeapon "Throw";
_unit addWeapon "Put";

comment "Add items";
_unit linkItem "H_CrewHelmetHeli_I_E";
_unit linkItem "NVGoggles";
_unit linkItem "ItemGPS";
_unit linkItem "ItemMap";
_unit linkItem "G_Bandanna_khk";