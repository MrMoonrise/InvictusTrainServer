if (isServer) then {
	_clearBodies = [] spawn {
		while {true} do {
			{
			deleteVehicle _x;
			sleep 0.01;
			} forEach allDeadMen;

		sleep 600;
	};  
};

hint"Holster Weapon with key 5";

[] spawn {
	waitUntil {!isNull(findDisplay 46)};

	(findDisplay 46) displayAddEventHandler ["KeyDown", {
		if(_this select 1 == 0x06) //number 5
		then {
			_Holster_Weapon_ctrl = (_this select 0) displayCtrl 9001;
			if(isNull(_Holster_Weapon_ctrl)) then {
				_Holster_Weapon_ctrl = (_this select 0) ctrlCreate ["RscText", 9001];
				_Holster_Weapon_ctrl ctrlSetPosition [SafeZoneXAbs, SafeZoneY + (SafeZoneH - 0.05) / 2, 0.2, 0.03];
				_Holster_Weapon_ctrl ctrlSetFontHeight 0.03;
				_Holster_Weapon_ctrl ctrlSetText "Weapon Holstered";
				_Holster_Weapon_ctrl ctrlShow false;
				_Holster_Weapon_ctrl ctrlCommit 0;
			};
			_shown = ctrlShown _Holster_Weapon_ctrl;
			
			//this is for earplugs - mute sound
			//0.1 fadeSound (if(_shown)then{1}else{0.1}); 
			
			//Weapon on the back
			player action ["SWITCHWEAPON",player,player,-1];
			waitUntil {currentWeapon player == "" or {primaryWeapon player == "" && handgunWeapon player == ""}};
			_Holster_Weapon_ctrl ctrlShow !_shown;
		};
	}];
};

[] execVM "corpseClean.sqf";

