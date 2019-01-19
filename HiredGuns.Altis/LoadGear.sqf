Gear = nil;
LoadGear = player;
publicVariableServer "LoadGear";
waitUntil{!isNil "Gear"};

//prepare gear info
_playerGear = Gear select 0;
_intro1 = Gear select 1;

if (_intro1==1) then
{//if player has loaded to the server before
	_playerUniform = _playerGear select 0;
	_playerVest = _playerGear select 1;
	_playerBackpack = _playerGear select 2;
	_playerWeaponsItems = _playerGear select 3;
	_playerUniformItems = _playerGear select 4;
	_playerVestItems = _playerGear select 5;
	_playerBackpackItems = _playerGear select 6;
	_playerMapItems = _playerGear select 7;
	_playerHelmet = _playerGear select 8;
	_playerGlasses = _playerGear select 9;
	
	player forceAddUniform _playerUniform;
	player addVest _playerVest;
	player addBackpack _playerBackpack;
	
	{
		player addItem _x;
		player assignItem _x;
	}forEach _playerMapItems;
	
	{
		player addWeapon (_x select 0);
		player addWeaponItem [(_x select 0),(_x select 1)];
		player addWeaponItem [(_x select 0),(_x select 2)];
		player addWeaponItem [(_x select 0),(_x select 3)];
		player addWeaponItem [(_x select 0),((_x select 4) select 0)];
		player addWeaponItem [(_x select 0),(_x select 5)];
	}forEach _playerWeaponsItems;
	
	{
		player addItemToUniform _x;
	}forEach _playerUniformItems;
	
	{
		player addItemToVest _x;
	}forEach _playerVestItems;
	
	{
		player addItemToBackpack _x;
	}forEach _playerBackpackItems;
	
	player addHeadgear _playerHelmet;
	player addGoggles _playerGlasses;
	
	
	Hint "Gear Loaded!";
}
else
{
	Hint "No saved gear!";
};