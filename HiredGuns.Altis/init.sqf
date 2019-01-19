//intro

//avoid seeing beach
cutText ["", "BLACK FADED", 999]; 
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal", "back"];
_camera camPrepareTarget [3400,13900,20];
_camera camPreparePos [-2600,4667,10];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
_camera camPrepareTarget [3400,13900,20];
_camera camPreparePos [0,9000,20];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 1;



	playMusic "BackgroundTrack02_F";


	onPreloadFinished " [] execVM ""intro.sqf""";
//revive
call compileFinal preprocessFileLineNumbers "FAR_revive\FAR_revive_init.sqf";

//clean up
	[
		2*60, // seconds to delete dead bodies (0 means don't delete) 
		2*60, // seconds to delete dead vehicles (0 means don't delete)
		2*60, // seconds to delete immobile vehicles (0 means don't delete)
		2*60, // seconds to delete dropped weapons (0 means don't delete)
		2*60, // seconds to deleted planted explosives (0 means don't delete)
		2*60  // seconds to delete dropped smokes/chemlights (0 means don't delete)
	] execVM 'repetitive_cleanup.sqf';	

//weather
execVM "randomWeather.sqf";

//////////////////////////
// upsmon
//////////////////////////


// Init UPSMON script
call compile preprocessFileLineNumbers "scripts\Init_UPSMON.sqf";

// Hide UPSMON Markers
//{_x setMarkerAlphaLocal 0} foreach ["area1"];

//////////////////////////
// Init "loadTask.sqf"
//////////////////////////
//if (isServer) then
//{
//	call compile preprocessFileLineNumbers "loadTask.sqf";
//};



//GRPMNU_groupActions = player addAction["<t color='#EB7FAF'>Groups Menu</t>", "scripts\groupsMenu\groupActions.sqf", nil,-200, false, false, "", "_target == vehicle _this || _target == _this"];


SideHQEAST = createCenter east;

SideHQWEST = createCenter WEST;
/* 
SideHQCIV = createCenter CIVILIAN;

SideHQGUER = createCenter RESISTANCE;

SideHQIND = createCenter INDEPENDENT;
 */



if (!isServer) then
{
	"Script" addPublicVariableEventHandler{
		//inits
		//_aPVEHName = _this select 0;
		//_camPos1,_camTarget1,_camPos2,_camTarget2,_camPos3,_camTarget3
		//_missionsCall = [_NPC,_missionNumber,_uid] execVM "loadTask.sqf";
		args = _this select 1;
		Script =args select 0;
		_arg1 = args select 1;
		_arg2 = args select 2;
		_arg3 = args select 3;
		_arg4 = args select 4; 
		_arg5 = args select 5;
		_arg6 = args select 6; 
		_arg7 = args select 7;
		_arg8 = args select 8;
		_arg9 = args select 9;/* 
		arg1 = [4233,15087,50];
		arg2 = [4233,15090,50];
		arg3 = [5233,15087,50];
		arg4 = [5233,15090,50];
		arg5 = [6233,15087,50];
		arg6 = [6233,15090,50]; */
		switch (Script) do
		{
			case 0:
			{
				[_arg1,_arg2,_arg3,_arg4,_arg5,_arg6,_arg7,_arg8,_arg9] execVM "0a0.sqf";
			};
			case 2:
			{
				[_arg1,_arg2,_arg3,_arg4,_arg5,_arg6,_arg7,_arg8,_arg9] execVM "newLoad.sqf";
			};
			default
			{
				[_arg1,_arg2,_arg3,_arg4,_arg5,_arg6,_arg7,_arg8,_arg9] spawn Script;
			};
		};
		
	};/* 
	"ShowHint" addPublicVariableEventHandler{
		//inits
		//_aPVEHName = _this select 0;
		_ShowHint = _this select 1;
		
		hintSilent _ShowHint;
	}; */
/* 	chatOn = 1;
	"Chat" addPublicVariableEventHandler{
		//inits
		//_aPVEHName = _this select 0;
		_Chat = _this select 1;
		
		if (_Chat == "xxxRemoveRequests") then
		{
			player removeEventHandler ["Chat", 0];
			chatOn = 0;
		};
		if(chatOn != 0) then
		{
			ServerAdmin globalChat _Chat;
		};
	};
	 */
	
	//"Mediterranean" call BIS_fnc_modulePostprocess;
	["Mediterranean",0,true] call bis_fnc_setppeffecttemplate;
	
	FirstTask = player createSimpleTask ["Speak To The Landlord"];
	FirstTask setSimpleTaskDestination (getPos Landlord);
	FirstTask setSimpleTaskDescription ["Speak to the Landlord at the Rendezvous.<br/><br/>Approach him, and the option to speak will appear. This is how you can interact with your contacts.", "Speak To The Landlord", "Landlord"];
	
	
	
	A = 0;
	
	//_hitHandler = player addEventHandler ["hit",{_this execVM "hit.sqf"}];
	
};

setTerrainGrid 50;



if(!isServer) exitWith {};




///////////////////////////////////////////////////////////////////////////////////
//         Server setup
///////////////////////////////////////////////////////////////////////////////////


//p1=paramsArray select 0;




//call compile preProcessFile "inidbi\Addons\init.sqf";
call compile preProcessFile "\inidbi\init.sqf";

//NumberOfConnects=100;
//onPlayerConnected 
/* 
missionNamespace setVariable ["PlayerSave",Merc1];
missionNamespace setVariable ["PlayerLoad",Merc1];
missionNamespace setVariable ["LoadQuestData",Merc1];
missionNamespace setVariable ["LoadSergeantData",Merc1];
missionNamespace setVariable ["LoadSpeak",Merc1];
missionNamespace setVariable ["SpeakToLandlord",[0,0,0,0,0,0,0,0,0,0,0]];
missionNamespace setVariable ["Speak",[0,0,0,0,0,0,0,0,0,0,0]];
missionNamespace setVariable ["missions",[0,0,0,0,0,0,0,0,0,0,0]]; */
//code executed when "PlayerSave" is broadcast to the server, so save a Merc's info

_ret = ["MissionsInProgress", "MISSIONS", "Mission0", ""] call iniDB_write;
_ret = ["MissionsInProgress", "MISSIONS", "Mission1", ""] call iniDB_write;
_ret = ["MissionsInProgress", "MISSIONS", "Mission2", ""] call iniDB_write;
_ret = ["MissionsInProgress", "MISSIONS", "Mission3", ""] call iniDB_write;
_ret = ["MissionsInProgress", "MISSIONS", "Mission4", ""] call iniDB_write;
_ret = ["MissionsInProgress", "MISSIONS", "Mission5", ""] call iniDB_write;
_ret = ["MissionsInProgress", "MISSIONS", "Mission6", ""] call iniDB_write;

//   ammo

execVM "ammo.sqf";

//ng = [[4110,14517,0], EAST, ["O_officer_F","O_officer_F"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;
//   
//f = ng spawn {
//	sleep 5;
//	{
//		deleteVehicle _x;
//	}forEach units _this;
//};


//EH
"endMissionCue" addPublicVariableEventHandler{
	//inits
	_aPVEHName = _this select 0;
	_endMissionCue = _this select 1;
	
	//remove MIP
	_Mission0 = ["MissionsInProgress", "MISSIONS", "Mission0", "STRING"] call iniDB_read;
	_Mission1 = ["MissionsInProgress", "MISSIONS", "Mission1", "STRING"] call iniDB_read;
	_Mission2 = ["MissionsInProgress", "MISSIONS", "Mission2", "STRING"] call iniDB_read;
	_Mission3 = ["MissionsInProgress", "MISSIONS", "Mission3", "STRING"] call iniDB_read;
	_Mission4 = ["MissionsInProgress", "MISSIONS", "Mission4", "STRING"] call iniDB_read;
	_Mission5 = ["MissionsInProgress", "MISSIONS", "Mission5", "STRING"] call iniDB_read;
	_Mission6 = ["MissionsInProgress", "MISSIONS", "Mission6", "STRING"] call iniDB_read;
	{
		_index = _forEachIndex;
		if (_x==_endMissionCue) then
		{
			_MIPNumber = format["Mission%1",_index];
			_ret = ["MissionsInProgress", "MISSIONS", _MIPNumber, ""] call iniDB_write;
		};
	
	}forEach [_Mission0,_Mission1,_Mission2,_Mission3,_Mission4,_Mission5,_Mission6];
	
	
	
	
	
};



	
"newSave" addPublicVariableEventHandler{
	_aPVEHName = _this select 0;
	_who = _this select 1;
	_missionsCall = _who execVM "newSave.sqf";
};

"newLoad" addPublicVariableEventHandler{
	_aPVEHName = _this select 0;
	_who = _this select 1;
	_missionsCall = _who execVM "newLoad.sqf";
};
	
	
	
	
	
	
	
	
	
	
"RunSQF" addPublicVariableEventHandler{
	_aPVEHName = _this select 0;
	_SQF = _this select 1;
	
	_NPC = _SQF select 0;
	_missionNumber = _SQF select 1;
	_uid = _SQF select 2;
	
	
	
	
	_missionsCall = [_NPC,_missionNumber,_uid] execVM "loadTask.sqf";
};
	
	
	
	
	
	
	
	
	
	
	
	
//	"SendQuestNumbers" addPublicVariableEventHandler{
//		_aPVEHName = _this select 0;
//		_array = _this select 1;
//		
//		_uid = _array select 0;
//		_NPC = _array select 1;
//		_missionNumber = _array select 2;
//		
//		//profile
//		
//		
//		
//		_clientID = owner _caller;
//		_clientID publicVariableClient "SpeakToLandlord";
//		
//		
//	};
	
	
	
	
	
	
//	"SendTaskInfo" addPublicVariableEventHandler{
//		_aPVEHName = _this select 0;
//		_caller = _this select 1;
//		
//		//profile
//		_uid = getPlayerUID _caller;
//		_databasename = format["%1",_uid];
//		_missions = [_databasename, "QUESTDATA", "Quests", "ARRAY"] call iniDB_read;
//		
//		if (count _missions == 0) then
//		{
//			SpeakToLandlord = [0,0,0,0,0,0,0,0];
//			_ret = [_databasename, "QUESTDATA", "Quests", SpeakToLandlord] call iniDB_write;
//		
//		}
//		else
//		{
//			SpeakToLandlord = _missions;
//		};
//		
//		_clientID = owner _caller;
//		_clientID publicVariableClient "SpeakToLandlord";
//		
//		
//	};
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


"LoadSpeak" addPublicVariableEventHandler{
	_aPVEHName = _this select 0;
	_datas = _this select 1;
	
	_caller = _datas select 0;
	_NPC = _datas select 1;
	
	//profile
	_uid = getPlayerUID _caller;
	_databasename = format["%1",_uid];
	_missions = [_databasename, "QUESTDATA", "NPC0", "STRING"] call iniDB_read;
	_clientID = owner _caller;

	//read missions in progress
	_Mission0 = ["MissionsInProgress", "MISSIONS", "Mission0", "STRING"] call iniDB_read;
	_Mission1 = ["MissionsInProgress", "MISSIONS", "Mission1", "STRING"] call iniDB_read;
	_Mission2 = ["MissionsInProgress", "MISSIONS", "Mission2", "STRING"] call iniDB_read;
	_Mission3 = ["MissionsInProgress", "MISSIONS", "Mission3", "STRING"] call iniDB_read;
	_Mission4 = ["MissionsInProgress", "MISSIONS", "Mission4", "STRING"] call iniDB_read;
	_Mission5 = ["MissionsInProgress", "MISSIONS", "Mission5", "STRING"] call iniDB_read;
	_Mission6 = ["MissionsInProgress", "MISSIONS", "Mission6", "STRING"] call iniDB_read;
	
	_MIPs = [_Mission0,_Mission1,_Mission2,_Mission3,_Mission4,_Mission5,_Mission6];
	
	
/* 	if (_missions == "") then
	{
		SpeakToLandlord = [0,0,0,0,0,0,0,0,0,0,0];
		_ret = [_databasename, "QUESTDATA", "NPC0", SpeakToLandlord] call iniDB_write;
		_ret = [_databasename, "QUESTDATA", "NPC1", SpeakToLandlord] call iniDB_write;
		_ret = [_databasename, "QUESTDATA", "NPC2", SpeakToLandlord] call iniDB_write;
		_ret = [_databasename, "QUESTDATA", "NPC3", SpeakToLandlord] call iniDB_write;
		_ret = [_databasename, "QUESTDATA", "NPC4", SpeakToLandlord] call iniDB_write;
		_ret = [_databasename, "QUESTDATA", "NPC5", SpeakToLandlord] call iniDB_write;
		_ret = [_databasename, "QUESTDATA", "NPC6", SpeakToLandlord] call iniDB_write;
		_ret = [_databasename, "QUESTDATA", "NPC7", SpeakToLandlord] call iniDB_write;
		SpeakToLandlord = [SpeakToLandlord,_MIPs];
		_clientID publicVariableClient "SpeakToLandlord";
_ret = [_databasename, "QUESTDATA", "test", "yes"] call iniDB_write;	
	}
	else
	{ */
		//SpeakToLandlord = _missions;
		switch (_NPC) do
		{
			
			case Landlord:
			{
				_QA = [_databasename, "QUESTDATA", "NPC0", "STRING"] call iniDB_read;
				if (_QA == "") then
				{
					_QA = [0,0,0,0,0,0,0,0,0,0,0];
					_ret = [_databasename, "QUESTDATA", "NPC0", _QA] call iniDB_write;
				}else{
					_QA = [_databasename, "QUESTDATA", "NPC0", "ARRAY"] call iniDB_read;
				};
				SpeakToLandlord = [_QA,_MIPs];
				_clientID publicVariableClient "SpeakToLandlord";
			};
			case NPC1:
			{
				_QA = [_databasename, "QUESTDATA", "NPC1", "STRING"] call iniDB_read;
				if (_QA == "") then
				{
					_QA = [0,0,0,0,0,0,0,0,0,0,0];
					_ret = [_databasename, "QUESTDATA", "NPC1", _QA] call iniDB_write;
				}else{
					_QA = [_databasename, "QUESTDATA", "NPC1", "ARRAY"] call iniDB_read;
				};
				SpeakToNPC1 = [_QA,_MIPs];
				_clientID publicVariableClient "SpeakToNPC1";
			};
			case NPC2:
			{
				_QA = [_databasename, "QUESTDATA", "NPC2", "STRING"] call iniDB_read;
				if (_QA == "") then
				{
					_QA = [0,0,0,0,0,0,0,0,0,0,0];
					_ret = [_databasename, "QUESTDATA", "NPC2", _QA] call iniDB_write;
				}else{
					_QA = [_databasename, "QUESTDATA", "NPC2", "ARRAY"] call iniDB_read;
				};
				SpeakToNPC2 = [_QA,_MIPs];
				_clientID publicVariableClient "SpeakToNPC2";
			};
			case NPC3:
			{
				_QA = [_databasename, "QUESTDATA", "NPC3", "STRING"] call iniDB_read;
				if (_QA == "") then
				{
					_QA = [0,0,0,0,0,0,0,0,0,0,0];
					_ret = [_databasename, "QUESTDATA", "NPC3", _QA] call iniDB_write;
				}else{
					_QA = [_databasename, "QUESTDATA", "NPC3", "ARRAY"] call iniDB_read;
				};
				SpeakToNPC3 = [_QA,_MIPs];
				_clientID publicVariableClient "SpeakToNPC3";
			};
			case NPC4:
			{
				_QA = [_databasename, "QUESTDATA", "NPC4", "STRING"] call iniDB_read;
				if (_QA == "") then
				{
					_QA = [0,0,0,0,0,0,0,0,0,0,0];
					_ret = [_databasename, "QUESTDATA", "NPC4", _QA] call iniDB_write;
				}else{
					_QA = [_databasename, "QUESTDATA", "NPC4", "ARRAY"] call iniDB_read;
				};
				SpeakToNPC4 = [_QA,_MIPs];
				_clientID publicVariableClient "SpeakToNPC4";
			};
			case NPC5:
			{
				_QA = [_databasename, "QUESTDATA", "NPC5", "STRING"] call iniDB_read;
				if (_QA == "") then
				{
					_QA = [0,0,0,0,0,0,0,0,0,0,0];
					_ret = [_databasename, "QUESTDATA", "NPC5", _QA] call iniDB_write;
				}else{
					_QA = [_databasename, "QUESTDATA", "NPC5", "ARRAY"] call iniDB_read;
				};
				SpeakToNPC5 = [_QA,_MIPs];
				_clientID publicVariableClient "SpeakToNPC5";
			};
			case NPC6:
			{
				_QA = [_databasename, "QUESTDATA", "NPC6", "STRING"] call iniDB_read;
				if (_QA == "") then
				{
					_QA = [0,0,0,0,0,0,0,0,0,0,0];
					_ret = [_databasename, "QUESTDATA", "NPC6", _QA] call iniDB_write;
				}else{
					_QA = [_databasename, "QUESTDATA", "NPC6", "ARRAY"] call iniDB_read;
				};
				SpeakToNPC6 = [_QA,_MIPs];
				_clientID publicVariableClient "SpeakToNPC6";
			};
			case NPC7:
			{
				_QA = [_databasename, "QUESTDATA", "NPC7", "STRING"] call iniDB_read;
				if (_QA == "") then
				{
					_QA = [0,0,0,0,0,0,0,0,0,0,0];
					_ret = [_databasename, "QUESTDATA", "NPC7", _QA] call iniDB_write;
				}else{
					_QA = [_databasename, "QUESTDATA", "NPC7", "ARRAY"] call iniDB_read;
				};
				SpeakToNPC7 = [_QA,_MIPs];
				_clientID publicVariableClient "SpeakToNPC7";
			};
			case NPC8:
			{
				_QA = [_databasename, "QUESTDATA", "NPC8", "STRING"] call iniDB_read;
				if (_QA == "") then
				{
					_QA = [0,0,0,0,0,0,0,0,0,0,0];
					_ret = [_databasename, "QUESTDATA", "NPC8", _QA] call iniDB_write;
				}else{
					_QA = [_databasename, "QUESTDATA", "NPC8", "ARRAY"] call iniDB_read;
				};
				SpeakToNPC8 = [_QA,_MIPs];
				_clientID publicVariableClient "SpeakToNPC8";
			};
			case NPC9:
			{
				_QA = [_databasename, "QUESTDATA", "NPC9", "STRING"] call iniDB_read;
				if (_QA == "") then
				{
					_QA = [0,0,0,0,0,0,0,0,0,0,0];
					_ret = [_databasename, "QUESTDATA", "NPC9", _QA] call iniDB_write;
				}else{
					_QA = [_databasename, "QUESTDATA", "NPC9", "ARRAY"] call iniDB_read;
				};
				SpeakToNPC9 = [_QA,_MIPs];
				_clientID publicVariableClient "SpeakToNPC9";
			};/* 
			case NPC10:
			{
				_QA0 = [_databasename, "QUESTDATA", "NPC0", "STRING"] call iniDB_read;
				_QA1 = [_databasename, "QUESTDATA", "NPC1", "STRING"] call iniDB_read;
				_QA2 = [_databasename, "QUESTDATA", "NPC2", "STRING"] call iniDB_read;
				_QA3 = [_databasename, "QUESTDATA", "NPC3", "STRING"] call iniDB_read;
				_QA4 = [_databasename, "QUESTDATA", "NPC4", "STRING"] call iniDB_read;
				_QA5 = [_databasename, "QUESTDATA", "NPC5", "STRING"] call iniDB_read;
				_QA6 = [_databasename, "QUESTDATA", "NPC6", "STRING"] call iniDB_read;
				_QA7 = [_databasename, "QUESTDATA", "NPC7", "STRING"] call iniDB_read;
				_QA8 = [_databasename, "QUESTDATA", "NPC8", "STRING"] call iniDB_read;
				_QA9 = [_databasename, "QUESTDATA", "NPC9", "STRING"] call iniDB_read;
				_QA10 = [_databasename, "QUESTDATA", "NPC10", "STRING"] call iniDB_read;
				_missionsNotCompleted0 = {_x == 0} count _QA0;
				_missionsNotCompleted1 = {_x == 0} count _QA1;
				_missionsNotCompleted2 = {_x == 0} count _QA2;
				_missionsNotCompleted3 = {_x == 0} count _QA3;
				_missionsNotCompleted4 = {_x == 0} count _QA4;
				_missionsNotCompleted5 = {_x == 0} count _QA5;
				_missionsNotCompleted6 = {_x == 0} count _QA6;
				_missionsNotCompleted7 = {_x == 0} count _QA7;
				_missionsNotCompleted8 = {_x == 0} count _QA8;
				_missionsNotCompleted9 = {_x == 0} count _QA9;
				_totalMissionsNotCompleted = _missionsNotCompleted0 + _missionsNotCompleted1 + _missionsNotCompleted2 + _missionsNotCompleted3 + _missionsNotCompleted4 + _missionsNotCompleted5 + _missionsNotCompleted6 + _missionsNotCompleted7 + _missionsNotCompleted8 + _missionsNotCompleted9 + _missionsNotCompleted10;
				_totalRegionsDominated = _QA0 select 10 + _QA1 select 10 + _QA2 select 10 + _QA3 select 10 + _QA4 select 10 + _QA5 select 10 + _QA6 select 10 + _QA7 select 10 + _QA8 select 10 + _QA9 select 10 + _QA10 select 10;
				if (_totalMissionsNotCompleted <= 0) then
				{
					_QA = [0,0,0,0,0,0,0,0,0,0,0];
					_ret = [_databasename, "QUESTDATA", "NPC10", _QA] call iniDB_write;
				};
				
				if (_totalMissionsNotCompleted <= 25 and _totalMissionsNotCompleted > 0) then
				{	
					_QA = [1,0,0,0,0,0,0,0,0,0,0];
					_ret = [_databasename, "QUESTDATA", "NPC10", _QA] call iniDB_write;
_ret = [_databasename, "QUESTDATA", "test", "555555555"] call iniDB_write;
				};
				if (_totalMissionsNotCompleted <= 50 and _totalMissionsNotCompleted > 25) then
				{	
					_QA = [2,2,0,0,0,0,0,0,0,0,0];
					_ret = [_databasename, "QUESTDATA", "NPC10", _QA] call iniDB_write;
_ret = [_databasename, "QUESTDATA", "test", "555555555"] call iniDB_write;
				};
				if (_totalMissionsNotCompleted <= 75 and _totalMissionsNotCompleted > 50 and _totalRegionsDominated > 5) then
				{	
					_QA = [3,3,3,0,0,0,0,0,0,0,0];
					_ret = [_databasename, "QUESTDATA", "NPC10", _QA] call iniDB_write;
_ret = [_databasename, "QUESTDATA", "test", "555555555"] call iniDB_write;
				};
				if (_totalMissionsNotCompleted > 75 and _totalRegionsDominated > 9) then
				{	
					_QA = [4,4,4,4,0,0,0,0,0,0,0];
					_ret = [_databasename, "QUESTDATA", "NPC10", _QA] call iniDB_write;
_ret = [_databasename, "QUESTDATA", "test", "555555555"] call iniDB_write;
				};
				SpeakToNPC10 = [_QA,_MIPs];
				_clientID publicVariableClient "SpeakToNPC10";
			}; */
		};
//	};
	
	
};
	
	


"PlayerSave" addPublicVariableEventHandler{
	//initialise
	_aPVEHName = _this select 0;
	_caller = _this select 1;
	
	//profile
	_uid = getPlayerUID _caller;
	_databasename = format["%1",_uid];
	
	//position
	_position = getPosATL _caller;
	
	//loadout
	_weapons = weapons _caller;
	_items = items _caller;
	_magazines = magazines _caller;
	_assignedItems = assignedItems _caller;
	
	//clothes
	_uniform = uniform _caller;
	_headgear = headgear _caller;
	_vest = vest _caller;
	_backpack = backpack _caller;
	_goggles = goggles _caller;
	
	
	//Write to file
	
	_ret = [_databasename, "LOCATION", "position", _position] call iniDB_write;
	_ret = [_databasename, "LOADOUT", "weapons", _weapons] call iniDB_write;
	_ret = [_databasename, "LOADOUT", "items", _items] call iniDB_write;
	_ret = [_databasename, "LOADOUT", "magazines", _magazines] call iniDB_write;
	_ret = [_databasename, "LOADOUT", "assignedItems", _assignedItems] call iniDB_write;
	_ret = [_databasename, "LOADOUT", "uniform", _uniform] call iniDB_write;
	_ret = [_databasename, "LOADOUT", "headgear", _headgear] call iniDB_write;
	_ret = [_databasename, "LOADOUT", "vest", _vest] call iniDB_write;
	_ret = [_databasename, "LOADOUT", "backpack", _backpack] call iniDB_write;
	_ret = [_databasename, "LOADOUT", "goggles", _goggles] call iniDB_write;
	
	//get info for save

	//_thePlayer = _this;

	_unif = uniform _caller;
	_vest = vest _caller;
	_back = backpack _caller;
	_head = headgear _caller;
	_gogg = goggles _caller;
	_bino = binocular _caller;
	_hmd = hmd _caller;
	_pmW = primaryWeapon _caller;
	_hdW = handgunWeapon _caller;
	_atW = secondaryWeapon _caller;
	_pmM = primaryWeaponMagazine _caller;
	_hdM = handgunMagazine _caller;
	_atM = secondaryWeaponMagazine _caller;
	_pmI = primaryWeaponItems _caller;
	_hdI = handgunItems _caller;
	_atI = secondaryWeaponItems _caller;/* 
	_UW = getweaponsItemsCargo uniformContainer _caller;
	_UM = getMagazineCargo uniformContainer _caller;
	_UI = getItemCargo uniformContainer _caller;
	_VW = getweaponsItemsCargo vestContainer _caller;
	_VM = getMagazineCargo vestContainer _caller;
	_VI = getItemCargo vestContainer _caller;
	_BW = getweaponsItemsCargo backpackContainer _caller;
	_BM = getMagazineCargo backpackContainer _caller;
	_BI = getItemCargo backpackContainer _caller;
 */
	
	
	_ret = [_databasename, "LOCATION", "position", _position] call iniDB_write;
	_ret = [_databasename, "GEAR", "uniform", _unif] call iniDB_write;
	_ret = [_databasename, "GEAR", "vest", _vest] call iniDB_write;
	_ret = [_databasename, "GEAR", "backpack", _back] call iniDB_write;
	_ret = [_databasename, "GEAR", "headgear", _head] call iniDB_write;
	_ret = [_databasename, "GEAR", "goggles", _gogg] call iniDB_write;
	_ret = [_databasename, "GEAR", "binocular", _bino] call iniDB_write;
	_ret = [_databasename, "GEAR", "hmd", _hmd] call iniDB_write;
	_ret = [_databasename, "GEAR", "primaryWeapon", _pmW] call iniDB_write;
	_ret = [_databasename, "GEAR", "handgunWeapon", _hdW] call iniDB_write;
	_ret = [_databasename, "GEAR", "secondaryWeapon", _atW] call iniDB_write;
	_ret = [_databasename, "GEAR", "primaryWeaponMagazine", _pmM] call iniDB_write;
	_ret = [_databasename, "GEAR", "handgunMagazine", _hdM] call iniDB_write;
	_ret = [_databasename, "GEAR", "secondaryWeaponMagazine", _atM] call iniDB_write;
	_ret = [_databasename, "GEAR", "primaryWeaponItems", _pmI] call iniDB_write;
	_ret = [_databasename, "GEAR", "handgunItems", _hdI] call iniDB_write;
	_ret = [_databasename, "GEAR", "secondaryWeaponItems", _atI] call iniDB_write;
	_ret = [_databasename, "GEAR", "UW", _UW] call iniDB_write;
	_ret = [_databasename, "GEAR", "UM", _UM] call iniDB_write;
	_ret = [_databasename, "GEAR", "UI", _UI] call iniDB_write;
	_ret = [_databasename, "GEAR", "VW", _VW] call iniDB_write;
	_ret = [_databasename, "GEAR", "VM", _VM] call iniDB_write;
	_ret = [_databasename, "GEAR", "VI", _VI] call iniDB_write;
	_ret = [_databasename, "GEAR", "BW", _BW] call iniDB_write;
	_ret = [_databasename, "GEAR", "BM", _BM] call iniDB_write;
	_ret = [_databasename, "GEAR", "BI", _BI] call iniDB_write;
	
	
	_ret = [_databasename, "GEAR", "BI", _BI] call iniDB_write;
	
	
	
	
	
	
	
	
};


	//code executed when "PlayerLoad" is broadcast to the server, so load a Merc's info
"PlayerLoad" addPublicVariableEventHandler{
	//initialise key variables
	_aPVEHName = _this select 0;
	_caller = _this select 1;
	_uid = getPlayerUID _caller;
	_databasename = format["%1",_uid];
	
	//read data
	_position = [_databasename, "LOCATION", "position", "ARRAY"] call iniDB_read;

	
//////////////////////////////////////////////////////////////////////////////////////////////////
	//   NEW    //
	removeAllAssignedItems _caller;
	removeAllWeapons _caller;
	{_caller removeMagazine _x;} forEach magazines _caller;
	removeAllItems _caller;
	removeGoggles _caller;
	removeHeadgear _caller;
	removeBackpack _caller;
	removeVest _caller;
	removeUniform _caller;
	


	//read things

	_unif = [_databasename, "GEAR", "uniform", "STRING"] call iniDB_read;
	_vest = [_databasename, "GEAR", "vest", "STRING"] call iniDB_read;
	_back = [_databasename, "GEAR", "backpack", "STRING"] call iniDB_read;
	_head = [_databasename, "GEAR", "headgear", "STRING"] call iniDB_read;
	_gogg = [_databasename, "GEAR", "goggles", "STRING"] call iniDB_read;
	_bino = [_databasename, "GEAR", "binocular", "STRING"] call iniDB_read;
	_hmd = [_databasename, "GEAR", "hmd", "STRING"] call iniDB_read;
	_pmW = [_databasename, "GEAR", "primaryWeapon", "STRING"] call iniDB_read;
	_hdW = [_databasename, "GEAR", "handgunWeapon", "STRING"] call iniDB_read;
	_atW = [_databasename, "GEAR", "secondaryWeapon", "STRING"] call iniDB_read;
	_pmM = [_databasename, "GEAR", "primaryWeaponMagazine", "ARRAY"] call iniDB_read;
	_hdM = [_databasename, "GEAR", "handgunMagazine", "ARRAY"] call iniDB_read;
	_atM = [_databasename, "GEAR", "secondaryWeaponMagazine", "ARRAY"] call iniDB_read;
	_pmI = [_databasename, "GEAR", "primaryWeaponItems", "ARRAY"] call iniDB_read;
	_hdI = [_databasename, "GEAR", "handgunItems", "ARRAY"] call iniDB_read;
	_atI = [_databasename, "GEAR", "secondaryWeaponItems", "ARRAY"] call iniDB_read;

	_UW = [_databasename, "GEAR", "UW", "ARRAY"] call iniDB_read;
	_UM = [_databasename, "GEAR", "UM", "ARRAY"] call iniDB_read;
	_UI = [_databasename, "GEAR", "UI", "ARRAY"] call iniDB_read;

	_VW = [_databasename, "GEAR", "VW", "ARRAY"] call iniDB_read;
	_VM = [_databasename, "GEAR", "VM", "ARRAY"] call iniDB_read;
	_VI = [_databasename, "GEAR", "VI", "ARRAY"] call iniDB_read;

	_BW = [_databasename, "GEAR", "BW", "ARRAY"] call iniDB_read;
	_BM = [_databasename, "GEAR", "BM", "ARRAY"] call iniDB_read;
	_BI = [_databasename, "GEAR", "BI", "ARRAY"] call iniDB_read;

	//set position
	_caller setPosATL _position;

	//add wears

	_caller forceAddUniform _unif;
	_caller addVest _vest;
	_caller addBackpackGlobal _back;
	_caller addHeadgear _head;
	_caller addGoggles _gogg;
	_caller addWeaponGlobal _bino;
	_caller addWeaponGlobal _hmd;
	_caller addItem _hmd;
	_caller assignItem _hmd;
	_caller addWeaponGlobal _pmW;
	_caller addWeaponGlobal _hdW;
	_caller addWeaponGlobal _atW;


	//add weps and their parts

	_caller addMagazineGlobal _pmM;
	_caller addPrimaryWeaponItem _pmM;
	_caller assignItem _pmM;
	_caller addMagazineGlobal _hdM;
	_caller addHandgunItem _hdM;
	_caller assignItem _hdM;
	_caller addMagazineGlobal _atM;
	_caller addSecondaryWeaponItem _atM;
	_caller assignItem _atM;
/* 
	_d = 0;
	_cond = count _pmI;
	for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
	{
		_it = _pmI select _d;
		_caller addPrimaryWeaponItem _it;
	};

	_d = 0;
	_cond = count _hdI;
	for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
	{
		_it = _hdI select _d;
		_caller addHandgunItem _it;
	};

	_d = 0;
	_cond = count _atI;
	for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
	{
		_it = _atI select _d;
		_caller addSecondaryWeaponItem _it;
	};
 */
	//navgear

	_caller addItem "ItemWatch";
	_caller assignItem "ItemWatch";
	_caller addItem "ItemCompass";
	_caller assignItem "ItemCompass";
	_caller addItem "ItemGPS";
	_caller assignItem "ItemGPS";
	_caller addItem "ItemRadio";
	_caller assignItem "ItemRadio";
	_caller addItem "ItemMap";
	_caller assignItem "ItemMap";


	//uniform gear

	//(backpackContainer _caller) addweaponsItemsCargo [ weapons _caller select 0,1]
/* 
	_d = 0;
	_cond = count _UW select 0;
	for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
	{
		_it = (_UW select 0) select _d;
		_ct = (_UW select 1) select _d;
		(uniformContainer _caller) addweaponsItemsCargoGlobal [_it,_ct];
	};

	_d = 0;
	_cond = count _UM select 0;
	for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
	{
		_it = (_UM select 0) select _d;
		_ct = (_UM select 1) select _d;
		(uniformContainer _caller) addweaponsItemsCargoGlobal [_it,_ct];
	};

	_d = 0;
	_cond = count _UI select 0;
	for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
	{
		_it = (_UI select 0) select _d;
		_ct = (_UI select 1) select _d;
		(uniformContainer _caller) addweaponsItemsCargoGlobal [_it,_ct];
	};

	//vest gear

	//(backpackContainer _caller) addweaponsItemsCargo [ weapons _caller select 0,1]

	_d = 0;
	_cond = count _VW select 0;
	for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
	{
		_it = (_VW select 0) select _d;
		_ct = (_VW select 1) select _d;
		(vestContainer _caller) addweaponsItemsCargoGlobal [_it,_ct];
	};

	_d = 0;
	_cond = count _VM select 0;
	for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
	{
		_it = (_VM select 0) select _d;
		_ct = (_VM select 1) select _d;
		(vestContainer _caller) addweaponsItemsCargoGlobal [_it,_ct];
	};

	_d = 0;
	_cond = count _VI select 0;
	for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
	{
		_it = (_VI select 0) select _d;
		_ct = (_VI select 1) select _d;
		(vestContainer _caller) addweaponsItemsCargoGlobal [_it,_ct];
	};

	//backpack gear

	//(backpackContainer _caller) addweaponsItemsCargo [ weapons _caller select 0,1]

	_d = 0;
	_cond = count _BW select 0;
	for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
	{
		_it = (_BW select 0) select _d;
		_ct = (_BW select 1) select _d;
		(backpackContainer _caller) addweaponsItemsCargoGlobal [_it,_ct];
	};

	_d = 0;
	_cond = count _BM select 0;
	for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
	{
		_it = (_BM select 0) select _d;
		_ct = (_BM select 1) select _d;
		(backpackContainer _caller) addweaponsItemsCargoGlobal [_it,_ct];
	};

	_d = 0;
	_cond = count _BI select 0;
	for [{_d=0}, {_d<_cond}, {_d=_d+1}] do
	{
		_it = (_BI select 0) select _d;
		_ct = (_BI select 1) select _d;
		(backpackContainer _caller) addweaponsItemsCargoGlobal [_it,_ct];
	};

 */
	
};
	
	

	
/* 	
	"Script" addPublicVariableEventHandler{
		//inits
		//_aPVEHName = _this select 0;
		_Script = _this select 1;
		
		_nul = [] call _Script;
	};
	 */
	
/* 	weather = [] spawn {
		300 setOvercast random 1;
		300 setFog random 1;
		300 setRainbow	random 1;
		300 setRain random 1;
		300 setLightnings random 1;
	
	}; */
	
onPlayerConnected "[_id, _uid, _name] execVM ""PlayerConnected.sqf""";



//save gear
"SaveGear" addPublicVariableEventHandler{
	//SaveGear = [[_caller,_uid],[_playerUniform,_playerVest,_playerBackpack,_playerWeaponsItems,_playerUniformItems,_playerVestItems,_playerBackpackItems,_playerMapItems,_playerHelmet,_playerGlasses],[_weaponsItemsCargo,_itemCargo,_magazineCargo,_backpackCargo]];
	//pvs
	private ["_aPVEHName", "_args", "_playerInfo", "_playerGear", "_crateGear", "_onlyLoadout", "_caller", "_owner", "_playerUniform", "_playerVest", "_playerBackpack", "_playerWeaponsItems", "_playerUniformItems", "_playerVestItems", "_playerBackpackItems", "_playerMapItems", "_playerHelmet", "_playerGlasses", "_weaponsItemsCargo", "_itemCargo", "_magazineCargo", "_backpackCargo", "_ret","_uid"];
	
	_aPVEHName = _this select 0;
	_args = _this select 1;
	
	_playerInfo = _args select 0;
	_playerGear = _args select 1;
	_crateGear = _args select 2;
	
	_caller = _playerInfo select 0;
	_uid = _playerInfo select 1;
	
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
	
	_ret = [_uid, "Gear", "playerUniform", _playerUniform] call iniDB_write;
	_ret = [_uid, "Gear", "playerVest", _playerVest] call iniDB_write;
	_ret = [_uid, "Gear", "playerBackpack", _playerBackpack] call iniDB_write;
	_ret = [_uid, "Gear", "playerWeaponsItems", _playerWeaponsItems] call iniDB_write;
	_ret = [_uid, "Gear", "playerUniformItems", _playerUniformItems] call iniDB_write;
	_ret = [_uid, "Gear", "playerVestItems", _playerVestItems] call iniDB_write;
	_ret = [_uid, "Gear", "playerBackpackItems", _playerBackpackItems] call iniDB_write;
	_ret = [_uid, "Gear", "playerMapItems", _playerMapItems] call iniDB_write;
	_ret = [_uid, "Gear", "playerHelmet", _playerHelmet] call iniDB_write;
	_ret = [_uid, "Gear", "playerGlasses", _playerGlasses] call iniDB_write;
	
	//send success message
	"Gear Saved!" remoteExec ["Hint",_caller];
};


//load gear
"LoadGear" addPublicVariableEventHandler{
	//LoadGear = player
	//pvs
	private ["_aPVEHName", "_player", "_owner", "_playerUniform", "_playerVest", "_playerBackpack", "_playerWeaponsItems", "_playerUniformItems", "_playerVestItems", "_playerBackpackItems", "_playerMapItems", "_playerHelmet", "_playerGlasses", "_weaponsItemsCargo", "_itemCargo", "_magazineCargo", "_backpackCargo", "_a", "_b", "_c", "_d", "_wIC", "_iC", "_mC", "_bC", "_intro", "_ret","_uid"];
	
	_aPVEHName = _this select 0;
	_player = _this select 1;
	
	_uid = getPlayerUID _player;
	_owner = owner _player;
	
	_playerUniform = [_uid, "Gear", "playerUniform", "STRING"] call iniDB_read;
	_playerVest = [_uid, "Gear", "playerVest", "STRING"] call iniDB_read;
	_playerBackpack = [_uid, "Gear", "playerBackpack", "STRING"] call iniDB_read;
	_playerWeaponsItems = [_uid, "Gear", "playerWeaponsItems", "ARRAY"] call iniDB_read;
	_playerUniformItems = [_uid, "Gear", "playerUniformItems", "ARRAY"] call iniDB_read;
	_playerVestItems = [_uid, "Gear", "playerVestItems", "ARRAY"] call iniDB_read;
	_playerBackpackItems = [_uid, "Gear", "playerBackpackItems", "ARRAY"] call iniDB_read;
	_playerMapItems = [_uid, "Gear", "playerMapItems", "ARRAY"] call iniDB_read;
	_playerHelmet = [_uid, "Gear", "playerHelmet", "STRING"] call iniDB_read;
	_playerGlasses = [_uid, "Gear", "playerGlasses", "STRING"] call iniDB_read;
	
	
	_intro = [_uid, "IntroNew", "Intro", "SCALAR"] call iniDB_read;
	
	//save intro info
	_ret = [_uid, "IntroNew", "Intro", 1] call iniDB_write;
	
	//send gear and intro info
	Gear = [[_playerUniform,_playerVest,_playerBackpack,_playerWeaponsItems,_playerUniformItems,_playerVestItems,_playerBackpackItems,_playerMapItems,_playerHelmet,_playerGlasses],_intro];
	_owner publicVariableClient "Gear";
};
