_dest = (_this select 3) select 0;
_type = (_this select 3) select 1;
_spawn = 0;

if (_type == "HatchbackSport") then
	{
	_spawn = "C_Hatchback_01_sport_F";
	};


if (_type == "Hellcat") then
	{
	_spawn = "I_Heli_light_03_unarmed_F";
	};
	

if (_type == "Hunter") then
	{
	_spawn = "B_MRAP_01_F";
	};

if (_type == "Quilin") then
 {
 _spawn = "O_LSV_02_unarmed_F";
 };
_target = getMarkerPos _dest;
_spwnveh = _spawn createVehicle (_target);

if (_type == "HatchbackSport") then
	{
	_spwnveh setObjectTextureGlobal [0, "skins\policehatch1.paa"];
	};

if (_type == "Hellcat") then
	{
	_spwnveh setObjectTextureGlobal [0, "skins\police_hellcat0.paa"];
	};
	

if (_type == "Hunter") then
	{
	_spwnveh setObjectTextureGlobal [0, "skins\Hunter3.paa"];
	_spwnveh setObjectTextureGlobal [1, "skins\Hunter4.paa"];
	};

if (_type == "Quilin") then
	{
	_spwnveh setObjectTextureGlobal [0, "skins\Polquil0.paa"];
	_spwnveh setObjectTextureGlobal [1, "skins\Polquil1.paa"];
	_spwnveh setObjectTextureGlobal [2, "skins\Polquil2.paa"];
	};