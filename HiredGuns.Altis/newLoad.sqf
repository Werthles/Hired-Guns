//load
// unit addItemCargoGlobal [item, count];


_thePlayer = _this select 1;

//remove everything

removeAllAssignedItems _thePlayer;
removeAllWeapons _thePlayer;
{_thePlayer removeMagazine _x;} forEach magazines player;
removeAllItems _thePlayer;
removeGoggles _thePlayer;
removeHeadgear _thePlayer;
removeGoggles _thePlayer;
removeBackpack _thePlayer;
removeVest _thePlayer;
removeUniform _thePlayer;


//read things

_unif = 
_vest = 
_back = 
_head = 
_gogg = 
_bino = 
_hmd = 
_pmW = 
_hdW = 
_atW = 
_pmM = 
_hdM = 
_atM = 
_pmI = 
_hdI = 
_atI = 

_UW = 
_UM = 
_UI = 

_VW = 
_VM = 
_VI = 

_BW = 
_BM = 
_BI = 

//add wears

_thePlayer forceAddUniform _unif;
_thePlayer addVest _vest;
_thePlayer addBackpack _back;
_thePlayer addHeadgear _head;
_thePlayer addGoggles _gogg;
_thePlayer addWeaponGlobal _bino;
_thePlayer addItem _hmd;
_thePlayer assignItem _hmd;
_thePlayer addWeaponGlobal _pmW;
_thePlayer addWeaponGlobal _hdW;
_thePlayer addWeaponGlobal _atW;


//add weps and their parts

_thePlayer addMagazineGlobal _pmM;
_thePlayer addPrimaryWeaponItem _pmM;
_thePlayer assignItem _pmM;
_thePlayer addMagazineGlobal _hdM;
_thePlayer addHandgunItem _hdM;
_thePlayer assignItem _hdM;
_thePlayer addMagazineGlobal _atM;
_thePlayer addSecondaryWeaponItem _atM;
_thePlayer assignItem _atM;

_d = 0;
_cond = count _pmI;
for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
{
	_it = _pmI select _d;
	_thePlayer addPrimaryWeaponItem _it;
};

_d = 0;
_cond = count _hdI;
for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
{
	_it = _hdI select _d;
	_thePlayer addHandgunItem _it;
};

_d = 0;
_cond = count _atI;
for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
{
	_it = _atI select _d;
	_thePlayer addSecondaryWeaponItem _it;
};

//navgear

_thePlayer addItem "ItemWatch";
_thePlayer assignItem "ItemWatch";
_thePlayer addItem "ItemCompass";
_thePlayer assignItem "ItemCompass";
_thePlayer addItem "ItemGPS";
_thePlayer assignItem "ItemGPS";
_thePlayer addItem "ItemRadio";
_thePlayer assignItem "ItemRadio";
_thePlayer addItem "ItemMap";
_thePlayer assignItem "ItemMap";


//uniform gear

//(backpackContainer _thePlayer) addWeaponCargo [ weapons _thePlayer select 0,1]

_d = 0;
_cond = count _UW select 0;
for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
{
	_it = (_UW select 0) select _d;
	_ct = (_UW select 1) select _d;
	(uniformContainer _thePlayer) addWeaponCargoGlobal [_it,_ct];
};

_d = 0;
_cond = count _UM select 0;
for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
{
	_it = (_UM select 0) select _d;
	_ct = (_UM select 1) select _d;
	(uniformContainer _thePlayer) addWeaponCargoGlobal [_it,_ct];
};

_d = 0;
_cond = count _UI select 0;
for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
{
	_it = (_UI select 0) select _d;
	_ct = (_UI select 1) select _d;
	(uniformContainer _thePlayer) addWeaponCargoGlobal [_it,_ct];
};

//vest gear

//(backpackContainer _thePlayer) addWeaponCargo [ weapons _thePlayer select 0,1]

_d = 0;
_cond = count _VW select 0;
for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
{
	_it = (_VW select 0) select _d;
	_ct = (_VW select 1) select _d;
	(vestContainer _thePlayer) addWeaponCargoGlobal [_it,_ct];
};

_d = 0;
_cond = count _VM select 0;
for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
{
	_it = (_VM select 0) select _d;
	_ct = (_VM select 1) select _d;
	(vestContainer _thePlayer) addWeaponCargoGlobal [_it,_ct];
};

_d = 0;
_cond = count _VI select 0;
for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
{
	_it = (_VI select 0) select _d;
	_ct = (_VI select 1) select _d;
	(vestContainer _thePlayer) addWeaponCargoGlobal [_it,_ct];
};

//backpack gear

//(backpackContainer _thePlayer) addWeaponCargo [ weapons _thePlayer select 0,1]

_d = 0;
_cond = count _BW select 0;
for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
{
	_it = (_BW select 0) select _d;
	_ct = (_BW select 1) select _d;
	(backpackContainer _thePlayer) addWeaponCargoGlobal [_it,_ct];
};

_d = 0;
_cond = count _BM select 0;
for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
{
	_it = (_BM select 0) select _d;
	_ct = (_BM select 1) select _d;
	(backpackContainer _thePlayer) addWeaponCargoGlobal [_it,_ct];
};

_d = 0;
_cond = count _BI select 0;
for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
{
	_it = (_BI select 0) select _d;
	_ct = (_BI select 1) select _d;
	(backpackContainer _thePlayer) addWeaponCargoGlobal [_it,_ct];
};


_uid = getPlayerUID _caller;

missionNamespace setVariable ["RunSQF",[_NPC,_missionNumber,_uid]];

publicVariableServer "RunSQF";



///////////////////////////////////////////////////////////////////
////// OLD ////////
	_weapons = [_databasename, "LOADOUT", "weapons", "ARRAY"] call iniDB_read;
	_items = [_databasename, "LOADOUT", "items", "ARRAY"] call iniDB_read;
	_magazines = [_databasename, "LOADOUT", "magazines", "ARRAY"] call iniDB_read;
	_assignedItems = [_databasename, "LOADOUT", "assignedItems", "ARRAY"] call iniDB_read;
	_uniform = [_databasename, "LOADOUT", "uniform", "STRING"] call iniDB_read;
	_headgear = [_databasename, "LOADOUT", "headgear", "STRING"] call iniDB_read;
	_vest = [_databasename, "LOADOUT", "vest", "STRING"] call iniDB_read;
	_backpack = [_databasename, "LOADOUT", "backpack", "STRING"] call iniDB_read;
	_goggles = [_databasename, "LOADOUT", "goggles", "STRING"] call iniDB_read;
	

	
	//set position
	_caller setPosATL _position;
	
	
	//create a box
	
	//box1 = nearestObject [_position,"Box_IND_Ammo_F"];
	//box1 = box1;
	
	
	//remove everything
	_oldMagazines = magazines _caller;
	{
		_caller removeMagazine _x;
	}foreach _oldMagazines;
	removeAllAssignedItems _caller;
	removeAllWeapons _caller;
	removeAllItems _caller;
	//removeBackpack _caller;
	//removeVest _caller;
	removeHeadgear _caller;
	//removeUniform _caller;
	removeGoggles _caller;
	
	
	//clearBackpackCargoGlobal box1;
	
//		bluforUnit addItem "NVGoggles";
//bluforUnit assignItem "NVGoggles";
//opforUnit addItem "NVGoggles_OPFOR";
//opforUnit assignItem "NVGoggles_OPFOR";
//independentUnit addItem "NVGoggles_INDEP";
//independentUnit assignItem "NVGoggles_INDEP";
	
	
	//add clothes
	
	//_caller addUniform _uniform;//not global addItemCargoGlobal
	_caller addHeadgear _headgear;
	//_caller addVest _vest;
	_caller addGoggles _goggles;
	
	//add uniform to box
	//box1 addItemCargoGlobal [_uniform,1];
	
	//add backpack
	//_caller addBackpack _backpack;//not global addBackpackCargoGlobal
	
	//add backpack to box
	//box1 addBackpackCargoGlobal [_backpack,1];
	
	//add assigned Items
	{
		_caller addItem _x;
		_caller assignItem _x;
	}forEach _assignedItems; 
	
	
	//add items
	//{
	//	_caller addItem _x;
	//}forEach _items;//not global addItemCargoGlobal
	
	
	//add item global
	//{
	//	box1 addItemCargoGlobal [_x,1];
	//}forEach _items;
	
	
	
	//add magazines
	{
		_caller addMagazineGlobal  _x;
	}forEach _magazines;		
	
	
	//add weapons
	{
		_caller addWeaponGlobal _x;
	}forEach _weapons;