_dest = (_this select 3) select 0;
_type = (_this select 3) select 1;
_spawn = 0;


if (_type == "Strider") then
	{
	_spawn = "I_MRAP_03_F";
	};

if (_type == "Quilin") then
 {
 _spawn = "O_LSV_02_unarmed_F";
 };
_target = getMarkerPos _dest;
_spwnveh = _spawn createVehicle (_target);


if (_type == "Strider") then
	{
	_spwnveh setObjectTextureGlobal [0, "skins\Invictus Strider0.paa"];
	};

if (_type == "Quilin") then
	{
	_spwnveh setObjectTextureGlobal [0, "skins\Invictus Quilin0.paa"];
	_spwnveh setObjectTextureGlobal [1, "skins\Invictus Quilin1.paa"];
	_spwnveh setObjectTextureGlobal [2, "skins\Invictus Quilin2.paa"];
	};