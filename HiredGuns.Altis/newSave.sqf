// [2,uniform,vest,backpack,headgear,goggles,binoc,hmd,assigned items,primary weapon, handgun, at,weapons in unif, mags in unif, items in unif,weapons in vest, mags in vest, items in vest,weapons in back, mags in back, items in back] execVM "load.sqf;

//getWeaponCargo uniformContainer player;
//getMagazineCargo vestContainer player;
//getItemCargo backpackContainer player;


//get info for save

_thePlayer = _this;

_unif = uniform _thePlayer;
_vest = vest _thePlayer;
_back = backpack _thePlayer;
_head = headgear _thePlayer;
_gogg = goggles _thePlayer;
_bino = binocular _thePlayer;
_hmd = hmd _thePlayer;
_pmW = primaryWeapon _thePlayer;
_hdW = handgunWeapon _thePlayer;
_atW = secondaryWeapon _thePlayer;
_pmM = primaryWeaponMagazine _thePlayer;
_hdM = handgunMagazine _thePlayer;
_atM = secondaryWeaponMagazine _thePlayer;
_pmI = primaryWeaponItems _thePlayer;
_hdI = handgunItems _thePlayer;
_atI = secondaryWeaponItems _thePlayer;

_UW = getWeaponCargo uniformContainer _thePlayer;
_UM = getMagazineCargo uniformContainer _thePlayer;
_UI = getItemCargo uniformContainer _thePlayer;

_VW = getWeaponCargo vestContainer _thePlayer;
_VM = getMagazineCargo vestContainer _thePlayer;
_VI = getItemCargo vestContainer _thePlayer;

_BW = getWeaponCargo backpackContainer _thePlayer;
_BM = getMagazineCargo backpackContainer _thePlayer;
_BI = getItemCargo backpackContainer _thePlayer;


_uid = getPlayerUID _caller;

missionNamespace setVariable ["RunSQF",[_NPC,_missionNumber,_uid]];

publicVariableServer "RunSQF";