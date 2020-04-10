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
_unit forceAddUniform "U_C_Driver_2";
_unit addBackpack "B_ViperHarness_blk_F";
for "_i" from 1 to 15 do {_unit addItemToBackpack "20Rnd_762x51_Mag"};
for "_i" from 1 to 5 do {_unit addItemToBackpack "FirstAidKit"};
_unit addVest "V_PlateCarrier2_blk";
for "_i" from 1 to 5 do {_unit addItemToVest "20Rnd_762x51_Mag"};

comment "Add weapons";
_unit addWeapon "srifle_DMR_03_F";
_unit addPrimaryWeaponItem "optic_Arco_blk_F";
_unit addWeapon "Rangefinder";
_unit addWeapon "Throw";
_unit addWeapon "Put";

comment "Add items";
_unit linkItem "H_CrewHelmetHeli_B";
_unit linkItem "NVGoggles_OPFOR";
_unit linkItem "ItemGPS";
_unit linkItem "ItemMap";
_unit linkItem "G_Bandanna_blk";