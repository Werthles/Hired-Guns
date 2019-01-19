//SaveGear.sqf
//Runs on player
//Called by player
//Called to get gear and send it to SaveGear event

//pvs
private ["_weaponsItemsCargo", "_itemCargo", "_magazineCargo", "_backpackCargo", "_playerUniform", "_playerVest", "_playerBackpack", "_playerWeaponsItems", "_playerUniformItems", "_playerVestItems", "_playerBackpackItems", "_playerMapItems", "_playerHelmet", "_playerGlasses", "_bag","_uid"];

//var init
_weaponsItemsCargo = [];
_itemCargo = [];
_magazineCargo = [];
_backpackCargo = [];

//get player UID
_uid = getPlayerUID player;

//get player items
_playerUniform = uniform player;
_playerVest = vest player;
_playerBackpack = backpack player;
_playerWeaponsItems = weaponsItems player;
_playerUniformItems = uniformItems player;
_playerVestItems = vestItems player;
_playerBackpackItems = backpackItems player;
_playerMapItems = assignedItems player;
_playerHelmet = headgear player;
_playerGlasses = goggles player;


//combine gear data
SaveGear = [[player,_uid],[_playerUniform,_playerVest,_playerBackpack,_playerWeaponsItems,_playerUniformItems,_playerVestItems,_playerBackpackItems,_playerMapItems,_playerHelmet,_playerGlasses],[_weaponsItemsCargo,_itemCargo,_magazineCargo,_backpackCargo]];

//send server gear to save
publicVariableServer "SaveGear";