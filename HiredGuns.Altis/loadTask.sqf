private ["_NPC","_missionNumber","_uidz","_newTask","_theCaller","_theGroup","_monGroupArray","_spawn1","_spawn2","_spawn3","_spawn4","_ups0","_ups1","_ups2","_ups3","_ups4","_ups5","_ups6","_ups7","_ups8","_ups9","_again","_groupGroup","_allUIDs","_nextID","_ret","_missionFileName","_Mission0","_Mission1","_Mission2","_Mission3","_Mission4","_Mission5","_Mission6","_isInProgress","_MIPWritten","_clientID","_MIPNumber","_jj","_groupName","_Type","_groupArray","_upsArray","_ups10","_ups11","_ii","_unitArray","_Position","_Side","_Azimuth","_relativeArray","_iniType","_Coord","_newGroup","_nul","_upsNum","_waypoint","_waypointType","_kk","_wp","_WaypointType","_iniWP","_iniWPType","_taskName","_parentTaskName","_description","_title","_marker","_destination","_missionTime","_camPos1","_camPos2","_camPos3","_camTarget1","_camTarget2","_camTarget3","_NPCName","_radius","_Xpos","_Ypos","_markerstr","_qq","_missionObject","_missionGroupName","_missionType","_missionObjectList","_missionPosition","_missionAzimuth","_TypeOfMission","_missionSide","_missionObject0","_missionGroup","_mg","_nt","_rr","_win","_newTrig","_enemyIs","_aa","_state","_state2","_TCRadius","_TCPosition","_markerDropOff","_markerDropOffWords","_dotArray","_markerArray","_mkr","_markerString","_markerPosition","_unitArray1","_unitArray2","_unitArray3","_newGroup0","_newGroup1","_newGroup2","_newGroup3","_newGroup4","_newGroup5","_newGroup6","_newGroup7","_newGroup8","_newGroup9","_newGroup10","_newGroup11","_mPosition","_mType","_van","_dist","_allDone","_mTime","_maybe","_first","_UUID","_theUnit","_XUID","_y","_xUID","_allUIDS","_unitX","_NPCString","_questArray","_veh","_index"];

_NPC = _this select 0;
_missionNumber = _this select 1;
_uidz = _this select 2;

//other inits
_newTask = taskNull;
_theCaller = objNull;
_theGroup = [];
_monGroupArray = [];

//_spawn1 = 0 spawn {};
_spawn2 = 0 spawn {};
_spawn3 = 0 spawn {};
_spawn4 = 0 spawn {};
_ups0 = 0 spawn {};
_ups1 = 0 spawn {};
_ups2 = 0 spawn {};
_ups3 = 0 spawn {};
_ups4 = 0 spawn {};
_ups5 = 0 spawn {};
_ups6 = 0 spawn {};
_ups7 = 0 spawn {};
_ups8 = 0 spawn {};
_ups9 = 0 spawn {};
_ups10 = 0 spawn {};
_ups11 = 0 spawn {};

//find player
{
	_again = getPlayerUID _x;
	if (_again == _uidz) then
	{
		_theCaller = _x;
	};
}foreach playableUnits;


_groupGroup = group _theCaller;

_allUIDs = [];

{
	_nextID = getPlayerUID _x;
	_allUIDs = _allUIDs + [_nextID];
}forEach units group _theCaller;



//mission file
_missionFileName = format["%1a%2",_NPC,_missionNumber];

_ret = ["MissionsInProgress", "UIDS", _missionFileName, _allUIDs] call iniDB_write;

//read missions in progress
_Mission0 = ["MissionsInProgress", "MISSIONS", "Mission0", "STRING"] call iniDB_read;
_Mission1 = ["MissionsInProgress", "MISSIONS", "Mission1", "STRING"] call iniDB_read;
_Mission2 = ["MissionsInProgress", "MISSIONS", "Mission2", "STRING"] call iniDB_read;
_Mission3 = ["MissionsInProgress", "MISSIONS", "Mission3", "STRING"] call iniDB_read;
_Mission4 = ["MissionsInProgress", "MISSIONS", "Mission4", "STRING"] call iniDB_read;
_Mission5 = ["MissionsInProgress", "MISSIONS", "Mission5", "STRING"] call iniDB_read;
_Mission6 = ["MissionsInProgress", "MISSIONS", "Mission6", "STRING"] call iniDB_read;


//check if in progress
_isInProgress = 0;

//write mission name or check there are too many in progress
_MIPWritten = 0;

{
	if (_x==_missionFileName) then
	{
		_isInProgress = 1;
		_clientID = owner _theCaller;
		missionNamespace setVariable ["Chat","Sorry, this job is already in progress!"];
		_clientID publicVariableClient "Chat";
	};
}forEach [_Mission0,_Mission1,_Mission2,_Mission3,_Mission4,_Mission5,_Mission6];



{
	if ((_isInProgress == 0) && (_x=="") && (_MIPWritten==0)) then
	{
		_MIPNumber = format["Mission%1",_forEachIndex];
		_ret = ["MissionsInProgress", "MISSIONS", _MIPNumber, _missionFileName] call iniDB_write;
		_MIPWritten = 1;
	};
}forEach [_Mission0,_Mission1,_Mission2,_Mission3,_Mission4,_Mission5,_Mission6];


if (_MIPWritten!=0) then
{

		

		
			
		
		//add groups

	_jj = 1;
	_groupName = format["GROUP%1",_jj];
	_Type = [_missionFileName, _groupName, "Type1", "STRING"] call iniDB_read;

	_groupArray = [];
	_upsArray = [_ups0,_ups1,_ups2,_ups3,_ups4,_ups5,_ups6,_ups7,_ups8,_ups9,_ups10,_ups11];

	while {_Type!=""} do
	{	
		
		_ii = 2;
		_unitArray = [];
		_groupName = format["GROUP%1",_jj];
		_Position = [_missionFileName, _groupName, "Position", "ARRAY"] call iniDB_read;
		_Side = [_missionFileName, _groupName, "Side", "STRING"] call iniDB_read;
		_Azimuth = [_missionFileName, _groupName, "Azimuth", "SCALAR"] call iniDB_read;
		
		_Type = [_missionFileName, _groupName, "Type1", "STRING"] call iniDB_read;
		_relativeArray = [];
		
		//add units	
		While {_Type!=""} do
		{
			_unitArray = _unitArray + [_Type];
			_iniType = format["Type%1",_ii];
			_Type = [_missionFileName, _groupName, _iniType, "STRING"] call iniDB_read;
			_Coord = (_ii-1)*-3;
			_relativeArray = _relativeArray + [[_Coord,_Coord,0]];
			_ii = _ii + 1;
		};//end unit while
		

		
		//init. _newGroup
		_newGroup = grpNull;
		
		//Side needs script	
		switch (_Side) do
		{
			case "EAST":
			{
				_newGroup = [_Position, EAST, _unitArray, _relativeArray,[],[0.1,0.1],[],[],_Azimuth] call BIS_fnc_spawnGroup;
				
				//_nul = [leader _newGroup,,"nofollow","nowait","noveh","random"] execVM "scripts\upsmon.sqf";
				//_nul = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
			};

			case "WEST":
			{
				_newGroup = [_Position, WEST, _unitArray, _relativeArray,[],[0.1,0.1],[],[],_Azimuth] call BIS_fnc_spawnGroup;
				//_nul = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
				
			};
			
			case "GUER":
			{
				_newGroup = [_Position, INDEPENDENT, _unitArray, _relativeArray,[],[0.1,0.1],[],[],_Azimuth] call BIS_fnc_spawnGroup;
				//_nul = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
				
			};

			case "CIV":
			{
				_newGroup = [_Position, CIVILIAN, _unitArray, _relativeArray,[],[0.1,0.1],[],[],_Azimuth] call BIS_fnc_spawnGroup;
				//_newGroup setCombatMode "RED";
				{
					//_x forceAddUniform "U_OG_Guerilla1_1 ";
					_x addWeaponGlobal "arifle_Mk20_ACO_pointer_F";
					_x addMagazineGlobal "30Rnd_556x45_Stanag";
					_x addMagazineGlobal "30Rnd_556x45_Stanag";/* 
					_x setSkill 1;
					_x setskill ["aimingAccuracy",1];
					_x setskill ["aimingShake",1];
					_x setskill ["aimingSpeed",1];
					_x setskill ["endurance",1];
					_x setskill ["spotDistance",1];
					_x setskill ["spotTime",1];
					_x setskill ["courage",1];
					_x setskill ["reloadSpeed",1];
					_x setskill ["commanding",1];
					_x setskill ["general",1]; */
				}forEach units _newGroup;
				//_newGroup allowFleeing 0;
				//_newGroup setCombatMode "RED";
				//_nul = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
			};
			
			case "":
			{
				_newGroup = [_Position, CIVILIAN, _unitArray, _relativeArray,[],[0,0],[],[],_Azimuth] call BIS_fnc_spawnGroup;
					_x setskill ["aimingAccuracy",0];
					_x setskill ["aimingShake",0];
					_x setskill ["aimingSpeed",0];
					_x setskill ["endurance",0];
					_x setskill ["spotDistance",0];
					_x setskill ["spotTime",0];
					_x setskill ["courage",0];
					_x setskill ["reloadSpeed",0];
					_x setskill ["commanding",0];
					_x setskill ["general",0];
			};
			
			
			
		};


		//upsmon
		//_nul = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
		//_upsNum = _jj - 1;
		//_upsArray select _upsNum = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
		//[_ups0,_ups1,_ups2,_ups3,_ups4,_ups5,_ups6,_ups7,_ups8,_ups9];
/* 		switch (_jj) do
		{
			case 1:
			{
				_ups0 = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
			};
			case 2:
			{
				_ups1 = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
			};
			case 3:
			{
				_ups2 = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
			};
			case 4:
			{
				_ups3 = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
			};
			case 5:
			{
				_ups4 = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
			};
			case 6:
			{
				_ups5 = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
			};
			case 7:
			{
				_ups6 = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
			};
			case 8:
			{
				_ups7 = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
			};
			case 9:
			{
				_ups8 = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
			};
			case 10:
			{
				_ups9 = [_newGroup,"","SPAWNED","NOWP"] execVM "scripts\upsmon.sqf";
			};
		}; */
		
		//add new group to the array
		_groupArray = _groupArray + [_newGroup];
		
		//remove units
		/* ng=_newGroup;
		ng spawn {
			sleep 7200;//mission duration
			{
				deleteVehicle _x;
			}forEach units _this;
		}; */


		//add waypoints
		_waypoint = [_missionFileName, _groupName, "Waypoint1", "ARRAY"] call iniDB_read;
		_waypointType = [_missionFileName, _groupName, "Waypoint1Type", "STRING"] call iniDB_read;
		_kk = 2;
		While {_waypointType!=""} do {
			_wp = _newGroup addWaypoint[_waypoint,7];
			if (_WaypointType=="WAIT") then
			{
				_WaypointType = "MOVE";
				_wp setWaypointTimeout [300,300,300];
			};
			if (_WaypointType=="LIMITED") then
			{
				_WaypointType = "MOVE";
				_wp setWaypointSpeed "LIMITED";
			} else
			{
				_wp setWaypointSpeed "NORMAL";
			};
			_wp setWaypointBehaviour "SAFE";
			_wp setWaypointCombatMode "YELLOW";
			_wp setWaypointFormation "STAG COLUMN";
			_wp setWaypointType _WaypointType;
			_iniWP = format["Waypoint%1",_kk];
			_iniWPType = format["Waypoint%1Type",_kk];
			_waypoint = [_missionFileName, _groupName, _iniWP, "ARRAY"] call iniDB_read;
			_waypointType = [_missionFileName, _groupName, _iniWPType, "STRING"] call iniDB_read;
			_kk = _kk + 1;
		};//end waypoint while
		

		
		//increment groups
		_jj = _jj + 1;
		_groupName = format["GROUP%1",_jj];
		_Type = [_missionFileName, _groupName, "Type1", "STRING"] call iniDB_read;
		
	 
	};//end group while
	




	 
		








	
	//get taskCreate info
	_taskName = [_missionFileName, "CREATETASK", "taskName", "STRING"] call iniDB_read;
	_parentTaskName = [_missionFileName, "CREATETASK", "parentTaskName", "STRING"] call iniDB_read;
	_description = [_missionFileName, "CREATETASK", "description", "STRING"] call iniDB_read;
	_title = [_missionFileName, "CREATETASK", "title", "STRING"] call iniDB_read;
	_marker = [_missionFileName, "CREATETASK", "marker", "STRING"] call iniDB_read;
	_destination = [_missionFileName, "CREATETASK", "destination", "ARRAY"] call iniDB_read;


	//mission time
	_missionTime = [_missionFileName, "CREATETASK", "time", "SCALAR"] call iniDB_read;

	sleep 0.2;
///////////////////////////////////////////////////////////////
//    where old task load went
///////////////////////////////////////////////////////////////


	_newTask = [(group _theCaller),_taskName,[_description,_title,_marker],_destination,TRUE] call BIS_fnc_taskCreate;
			
			
			
			
			
			
			
//////////////////////////////////////////////////////////
	//    vids         _missionFileName 

	
	//[] exec "0a0.sqs";
	
	_camPos1 = [_missionFileName, "CREATETASK", "CamPos1", "ARRAY"] call iniDB_read;
	_camPos2 = [_missionFileName, "CREATETASK", "CamPos2", "ARRAY"] call iniDB_read;
	_camPos3 = [_missionFileName, "CREATETASK", "CamPos3", "ARRAY"] call iniDB_read;
	_camTarget1 = [_missionFileName, "CREATETASK", "CamTarget1", "ARRAY"] call iniDB_read;
	_camTarget2 = [_missionFileName, "CREATETASK", "CamTarget2", "ARRAY"] call iniDB_read;
	_camTarget3 = [_missionFileName, "CREATETASK", "CamTarget3", "ARRAY"] call iniDB_read;
	
	NPC1 setRandomLip true;
	_NPCName = objNull;
	switch (_NPC) do
	{
		case 0:{_NPCName = Landlord;};
		case 1:{_NPCName = NPC1;};
		case 2:{_NPCName = NPC2;};
		case 3:{_NPCName = NPC3;};
		case 4:{_NPCName = NPC4;};
		case 5:{_NPCName = NPC5;};
		case 6:{_NPCName = NPC6;};
		case 7:{_NPCName = NPC7;};
		case 8:{_NPCName = NPC8;};
		case 9:{_NPCName = NPC9;};
	};

	{
		_clientID = owner _x;
		missionNamespace setVariable ["Script",[0,_camPos1,_camTarget1,_camPos2,_camTarget2,_camPos3,_camTarget3,_title,_missionFileName,_NPC]];
		_clientID publicVariableClient "Script";
	}forEach units group _theCaller;

	
	
	
	
	
	
	
	
	
	
	
	

//////////////////////////////////////////////////////////








	//create a marker
	_radius = [_missionFileName, "CREATETASK", "Radius", "SCALAR"] call iniDB_read;
	_Xpos = _destination select 0;
	_Ypos = _destination select 1;
	_markerstr = createMarker [_title,[_Xpos,_Ypos]];
	_markerstr setMarkerShape "ELLIPSE";
	_markerstr setMarkerColor "ColorYELLOW";
	_markerstr setMarkerSize [_radius,_radius];
	_markerstr setMarkerBrush "FDiagonal";
	_markerstr setMarkerText "Mission in Progress";


	//add Missions objects
	_qq = 1;
	_missionObject = objNull;
	_missionGroupName = "MISSIONOBJECT1";
	_missionType = [_missionFileName, _missionGroupName, "Type", "STRING"] call iniDB_read;
	
	_missionObjectList = [];
	
	while {_missionType!=""} do
	{	
		//load object info
		_missionGroupName = format["MISSIONOBJECT%1",_qq];
		_missionPosition = [_missionFileName, _missionGroupName, "Position", "ARRAY"] call iniDB_read;
		_missionAzimuth = [_missionFileName, _missionGroupName, "Azimuth", "SCALAR"] call iniDB_read;
		_missionType = [_missionFileName, _missionGroupName, "Type", "STRING"] call iniDB_read;
		
		//create object
		_missionObject setDir _missionAzimuth;
		_missionObject = createVehicle [_missionType,_missionPosition,[],0,"FLY"];
		_missionObject setDir _missionAzimuth;
		
		
		//remove mission Objects


		//increment groups
		_qq = _qq + 1;
		_missionGroupName = format["MISSIONOBJECT%1",_qq];
		_missionType = [_missionFileName, _missionGroupName, "Type", "STRING"] call iniDB_read;
		
		
		//add to list
		
		_missionObjectList = _missionObjectList + [_missionObject];
		
	};//end group while
	
	///////////////////////////////////////////////////////////////////////////////////////////////
	//types of mission: DESTROY, KILL, ESCORT, ASS1
	
	_TypeOfMission = [_missionFileName, "CREATETASK", "TypeOfMission", "STRING"] call iniDB_read;
	switch (_TypeOfMission) do
	{
		case "DESTROY":
		{
			//add Kill object
			//load object info
			_missionGroupName = "KILLOBJECT";
			_missionPosition = [_missionFileName, _missionGroupName, "Position", "ARRAY"] call iniDB_read;
			_missionSide = [_missionFileName, _missionGroupName, "Side", "STRING"] call iniDB_read;
			_missionAzimuth = [_missionFileName, _missionGroupName, "Azimuth", "SCALAR"] call iniDB_read;
			_missionType = [_missionFileName, _missionGroupName, "Type", "STRING"] call iniDB_read;
			
			//create object
			_missionObject0 = objNull;
			_missionObject0 setDir _missionAzimuth;
			
			_missionGroup = grpNull;
			switch (_missionSide) do
			{
				case "WEST":
				{
					_missionGroup = createGroup WEST;
					_missionObject0 = _missionGroup createUnit [_missionType,_missionPosition, [], 0, "FORM"];
				};
				case "EAST":
				{
					//_missionGroup = createGroup EAST;
					_missionGroup = [_missionPosition, EAST, [_missionType],[[0,0,0]],[],[0.1,0.1],[],[],_missionAzimuth] call BIS_fnc_spawnGroup;
				};
				case "GUER":
				{
					_missionGroup = createGroup INDEPENDENT;
					_missionObject0 = _missionGroup createUnit [_missionType,_missionPosition, [], 0, "FORM"];
				};
				case "CIV":
				{
					_missionGroup = createGroup CIVILIAN;
					_missionObject0 = _missionGroup createUnit [_missionType,_missionPosition, [], 0, "FORM"];
				};
				case "":
				{
					_missionObject0 = createVehicle [_missionType,_missionPosition,[],0,"CAN_COLLIDE"];
				};
			};
			
			_missionObject0 setDir _missionAzimuth;
			
			_missionObject = vehicle (leader _missionGroup);
			
			_missionObjectList = _missionObjectList + (units _missionGroup);
			
			_missionObject allowFleeing 0;
			
			
			//add waypoints
			_waypoint = [_missionFileName, _missionGroupName, "Waypoint1", "ARRAY"] call iniDB_read;
			_waypointType = [_missionFileName, _missionGroupName, "Waypoint1Type", "STRING"] call iniDB_read;
			_kk = 2;
			While {_waypointType!=""} do
			{
				_wp = _missionGroup addWaypoint[_waypoint,7];/* 
				if (_kk==2) then
				{
					_wp setWaypointTimeout [900,900,900];
				}; */
				if (_WaypointType=="WAIT") then
				{
					_WaypointType = "MOVE";
					_wp setWaypointTimeout [300,300,300];
				};
				if (_WaypointType=="LIMITED") then
				{
					_WaypointType = "MOVE";
					_wp setWaypointSpeed "LIMITED";
				} else
				{
					_wp setWaypointSpeed "NORMAL";
				};
				_wp setWaypointBehaviour "SAFE";
				_wp setWaypointCombatMode "YELLOW";
				_wp setWaypointFormation "STAG COLUMN";
				_wp setWaypointType _WaypointType;
				_iniWP = format["Waypoint%1",_kk];
				_iniWPType = format["Waypoint%1Type",_kk];
				_waypoint = [_missionFileName, _missionGroupName, _iniWP, "ARRAY"] call iniDB_read;
				_waypointType = [_missionFileName, _missionGroupName, _iniWPType, "STRING"] call iniDB_read;
				_kk = _kk + 1;
			};//end waypoint while
			
			
			
			
			
			
			
			//remove mission Objects
			//mg=_missionObject;
			_spawn2 = [_missionObject,_newTask] spawn
			{
				_mg = _this select 0;
				_nt = _this select 1;
				_rr = 0;
				_win = 0;
				while {_rr < 7275} do
				{
					
					sleep 15;
					if ((!canMove _mg) and (!canFire _mg)) then
					{
						_rr = 8000;
						_win = 1;
						//_nt setTaskState "SUCCEEDED";
						[_nt,"SUCCEEDED"] call BIS_fnc_taskSetState;
					};
					_rr = _rr + 15;
				};
				if (_win==0) then
				{
					[_nt,"FAILED"] call BIS_fnc_taskSetState;
				};
				sleep 15;
				//after time is up
				deleteVehicle _mg;
			};

		};

		case "KILL":
		{
			//_destination
			//deleteVehicle _newTrig;
			_radius = [_missionFileName, "CREATETASK", "Radius", "SCALAR"] call iniDB_read;
			_enemyIs = [_missionFileName, "CREATETASK", "Enemy", "STRING"] call iniDB_read;
			_newTrig = createTrigger ["EmptyDetector", _destination];
			_newTrig setTriggerArea[_radius,_radius,0,false];
			newTrig2 = createTrigger ["EmptyDetector", _destination];
			newTrig2 setTriggerArea[_radius,_radius,0,false];
			switch (_enemyIs) do
			{
				case "":
				{
					_newTrig setTriggerActivation["EAST","NOT PRESENT",false];
					_newTrig setTriggerStatements["this", "", ""];
					newTrig2 setTriggerActivation["EAST","NOT PRESENT",false];
					newTrig2 setTriggerStatements["true", "", ""];
				};
				case "EE":
				{
					_newTrig setTriggerActivation["EAST","NOT PRESENT",false];
					_newTrig setTriggerStatements["this", "", ""];
					newTrig2 setTriggerActivation["EAST","NOT PRESENT",false];
					newTrig2 setTriggerStatements["true", "", ""];
				};
				case "EC":
				{
					newTrig2 setTriggerActivation["CIV","NOT PRESENT",false];
					newTrig2 setTriggerStatements["this", "", ""];
					_newTrig setTriggerActivation["EAST","NOT PRESENT",false];
					_newTrig setTriggerStatements["this", "", ""];
				};
				case "WW":
				{
					_newTrig setTriggerActivation["WEST","NOT PRESENT",false];
					_newTrig setTriggerStatements["this", "", ""];
					newTrig2 setTriggerActivation["EAST","NOT PRESENT",false];
					newTrig2 setTriggerStatements["true", "", ""];
				};
				case "EW":
				{
					_newTrig setTriggerActivation["WEST","NOT PRESENT",false];
					_newTrig setTriggerStatements["this", "", ""];
					newTrig2 setTriggerActivation["EAST","NOT PRESENT",false];
					newTrig2 setTriggerStatements["this", "", ""];
				};
				case "WC":
				{
					newTrig2 setTriggerActivation["CIV","NOT PRESENT",false];
					newTrig2 setTriggerStatements["this", "", ""];
					_newTrig setTriggerActivation["WEST","NOT PRESENT",false];
					_newTrig setTriggerStatements["this", "", ""];
				};
				case "CC":
				{
					_newTrig setTriggerActivation["CIV","NOT PRESENT",false];
					_newTrig setTriggerStatements["this", "", ""];
					newTrig2 setTriggerActivation["EAST","NOT PRESENT",false];
					newTrig2 setTriggerStatements["true", "", ""];
				};
			};
			
			
			_spawn3 = [_newTrig,_newTask,newTrig2] spawn
			{
				_newTrig = _this select 0;
				_newTask = _this select 1;
				newTrig2 = _this select 2;
				_aa = 0;
				_win = 0;
				while {_aa<7270} do
				{
					sleep 15;
					_state = triggerActivated _newTrig;
					_state2 = triggerActivated newTrig2;
					if (_state and _state2) then
					{
						_aa = 8000;
						_win = 1;
						[_newTask,"SUCCEEDED"] call BIS_fnc_taskSetState;
					};
					_aa = _aa + 15;
				};
				if (_win==0) then
				{
					[_newTask,"FAILED"] call BIS_fnc_taskSetState;
				};
			};
		};
		case "ESCORT":
		{
			
			//add Kill object
			//load object info
			_missionGroupName = "ESCORTOBJECT";
			_missionPosition = [_missionFileName, _missionGroupName, "Position", "ARRAY"] call iniDB_read;
			_missionSide = [_missionFileName, _missionGroupName, "Side", "STRING"] call iniDB_read;
			_missionAzimuth = [_missionFileName, _missionGroupName, "Azimuth", "SCALAR"] call iniDB_read;
			_missionType = [_missionFileName, _missionGroupName, "Type", "STRING"] call iniDB_read;
			
			//create object
			_missionObject = objNull;
			_missionObject setDir _missionAzimuth;
			switch (_missionSide) do
			{
				case "WEST":
				{
					_missionGroup = createGroup WEST;
					_missionObject = _missionGroup createUnit [_missionType,_missionPosition, [], 0, "FORM"];
				};
				case "EAST":
				{
					_missionGroup = createGroup EAST;
					_missionObject = _missionGroup createUnit [_missionType,_missionPosition, [], 0, "FORM"];
				};
				case "GUER":
				{
					_missionGroup = createGroup INDEPENDENT;
					_missionObject = _missionGroup createUnit [_missionType,_missionPosition, [], 0, "FORM"];
				};
				case "CIV":
				{
					_missionGroup = createGroup CIVILIAN;
					_missionObject = _missionGroup createUnit [_missionType,_missionPosition, [], 0, "FORM"];
				};
				case "":
				{
					_missionObject = createVehicle [_missionType,_missionPosition,[],0,"FLY"];
				};
			};
			
			_missionObject setDir _missionAzimuth;
			_missionObjectList = _missionObjectList + [_missionObject];
			
			//_destination
			//deleteVehicle _newTrig;
			_TCRadius = [_missionFileName, "ESCORTOBJECT", "TCRadius", "SCALAR"] call iniDB_read;
			_TCPosition = [_missionFileName, "ESCORTOBJECT", "TCPosition", "ARRAY"] call iniDB_read;
			_newTrig = createTrigger ["EmptyDetector", _TCPosition];
			_newTrig setTriggerArea[_TCRadius,_TCRadius,0,false];
			_newTrig setTriggerActivation["VEHICLE","PRESENT",false];
			_newTrig setTriggerStatements["this", "", ""];
			_newTrig triggerAttachVehicle [_missionObject];
			
			_spawn4 = [_newTrig,_newTask,_missionObject] spawn
			{
				_newTrig = _this select 0;
				_newTask = _this select 1;
				_missionObject = _this select 2;
				_aa = 0;
				_win = 0;
				while {_aa<7270} do
				{
					sleep 15;
					_state = triggerActivated _newTrig;
					if (_state) then
					{
						_aa = 8000;
						_win = 1;
						[_newTask,"SUCCEEDED"] call BIS_fnc_taskSetState;
					};
					if (!canMove _missionObject) then
					{
						_aa = 8000;
					};
					_aa = _aa + 15;
				};
				if (_win==0) then
				{
					[_newTask,"FAILED"] call BIS_fnc_taskSetState;
				};
			};
			
			
			//create a marker
			_Xpos = _TCPosition select 0;
			_Ypos = _TCPosition select 1;
			_markerDropOff = createMarker ["Drop Off",[_Xpos,_Ypos]];
			_markerDropOff setMarkerShape "ELLIPSE";
			_markerDropOff setMarkerColor "ColorOrange";
			_markerDropOff setMarkerSize [_TCRadius,_TCRadius];
			_markerDropOff setMarkerBrush "Horizontal";
			_markerDropOff setMarkerText "Drop Off";
			
			//words
			_markerDropOffWords = createMarker ["Drop Off",[_Xpos,_Ypos]];
			_markerDropOffWords setMarkerShape "ICON";
			_markerDropOffWords setMarkerText "Drop Off";
			_markerDropOffWords setMarkerType "mil_marker";
			_markerDropOffWords setMarkerColor "ColorBlack";
		};
		
		case "ACTION":
		{
		};
		
		case "UPSMON":
		{
			//_missionNumber
			_newGroup = grpNull;
			_dotArray = ["v","v_1","v_2","v_3","v_4","v_5","v_6","v_7","v_8","v_9"];
			_markerArray = ["r_6","r_4","r_2","r_3","r_8","r_7","r_5","r_1","r","r_9"];
			{
				_mkr = _dotArray select _forEachIndex;
				_x setMarkerPos getMarkerPos _mkr;
			}forEach _markerArray;
			_markerString = _markerArray select _missionNumber;
			_markerPosition = getMarkerPos _markerString;
			_unitArray1 = ["O_G_Soldier_lite_F","O_G_Soldier_lite_F","O_G_Soldier_lite_F","O_G_Soldier_lite_F","O_G_Soldier_F","O_G_Soldier_lite_F","O_G_Soldier_lite_F","O_G_Soldier_lite_F"];
			_unitArray2 = ["O_G_Soldier_lite_F","O_G_Soldier_lite_F","O_G_Soldier_lite_F","O_G_Quadbike_01_F","O_G_Soldier_F","O_G_Quadbike_01_F","O_G_Soldier_lite_F","O_G_Quadbike_01_F"];
			_unitArray3 = ["O_G_Soldier_lite_F","O_G_Soldier_lite_F","O_G_Soldier_lite_F","O_G_Offroad_01_armed_F","O_G_Soldier_F","O_G_Soldier_AR_F","O_G_Soldier_lite_F","O_G_Quadbike_01_F"];
			_relativeArray = [[0,0,0],[6,6,0],[12,12,0],[18,18,0],[24,24,0],[30,30,0],[36,36,0],[42,42,0]];

			_newGroup = [_markerPosition, EAST, _unitArray1, _relativeArray,[],[0.1,0.1],[],[3,0.25]] call BIS_fnc_spawnGroup;
			_ups0 = [_newGroup,_markerString,"SPAWNED","RANDOM","NOFOLLOW"] execVM "scripts\upsmon.sqf";
			_monGroupArray = _monGroupArray + [_newGroup];
			sleep 1;
			_newGroup = [_markerPosition, EAST, _unitArray2, _relativeArray,[],[0.1,0.1],[],[3,0.25]] call BIS_fnc_spawnGroup;
			_ups1 = [_newGroup,_markerString,"SPAWNED","RANDOM","NOFOLLOW"] execVM "scripts\upsmon.sqf";
			_monGroupArray = _monGroupArray + [_newGroup];
			sleep 1;
			_newGroup = [_markerPosition, EAST, _unitArray3, _relativeArray,[],[0.1,0.1],[],[3,0.25]] call BIS_fnc_spawnGroup;
			_ups2 = [_newGroup,_markerString,"SPAWNED","RANDOM","NOFOLLOW"] execVM "scripts\upsmon.sqf";
			_monGroupArray = _monGroupArray + [_newGroup];
			sleep 1;
			_newGroup = [_markerPosition, EAST, _unitArray3, _relativeArray,[],[0.1,0.1],[],[3,0.25]] call BIS_fnc_spawnGroup;
			_ups3 = [_newGroup,_markerString,"SPAWNED","RANDOM","NOFOLLOW"] execVM "scripts\upsmon.sqf";
			_monGroupArray = _monGroupArray + [_newGroup];
			if (_missionNumber==8 or _missionNumber==9) then
			{
				_newGroup = [_markerPosition, EAST, _unitArray2, _relativeArray,[],[0.1,0.1],[],[3,0.25]] call BIS_fnc_spawnGroup;
				_ups4 = [_newGroup,_markerString,"SPAWNED","RANDOM","NOFOLLOW"] execVM "scripts\upsmon.sqf";
			_monGroupArray = _monGroupArray + [_newGroup];
				sleep 1;
				_newGroup = [_markerPosition, EAST, _unitArray3, _relativeArray,[],[0.1,0.1],[],[3,0.25]] call BIS_fnc_spawnGroup;
				_ups5 = [_newGroup,_markerString,"SPAWNED","RANDOM","NOFOLLOW"] execVM "scripts\upsmon.sqf";
			_monGroupArray = _monGroupArray + [_newGroup];
				sleep 1;
				_newGroup = [_markerPosition, EAST, _unitArray1, _relativeArray,[],[0.1,0.1],[],[3,0.25]] call BIS_fnc_spawnGroup;
				_ups6 = [_newGroup,_markerString,"SPAWNED","RANDOM","NOFOLLOW"] execVM "scripts\upsmon.sqf";
			_monGroupArray = _monGroupArray + [_newGroup];
				sleep 1;
				_newGroup = [_markerPosition, EAST, ["O_G_officer_F","O_G_officer_F"], [[0,0,0],[3,3,0]],[],[0.1,0.1],[],[]] call BIS_fnc_spawnGroup;
				_ups7 = [_newGroup,_markerString,"SPAWNED","RANDOM","NOFOLLOW"] execVM "scripts\upsmon.sqf";
			_monGroupArray = _monGroupArray + [_newGroup];
			};
			if (_missionNumber==9) then
			{
				_newGroup = [_markerPosition, EAST, _unitArray2, _relativeArray,[],[0.1,0.1],[],[3,0.25]] call BIS_fnc_spawnGroup;
				_ups8 = [_newGroup,_markerString,"SPAWNED","RANDOM","NOFOLLOW"] execVM "scripts\upsmon.sqf";
			_monGroupArray = _monGroupArray + [_newGroup];
				sleep 1;
				_newGroup = [_markerPosition, EAST, _unitArray3, _relativeArray,[],[0.1,0.1],[],[3,0.25]] call BIS_fnc_spawnGroup;
				_ups9 = [_newGroup,_markerString,"SPAWNED","RANDOM","NOFOLLOW"] execVM "scripts\upsmon.sqf";
			_monGroupArray = _monGroupArray + [_newGroup];
				sleep 1;
				_newGroup = [_markerPosition, EAST, _unitArray1, _relativeArray,[],[0.1,0.1],[],[3,0.25]] call BIS_fnc_spawnGroup;
				_ups10 = [_newGroup,_markerString,"SPAWNED","RANDOM","NOFOLLOW"] execVM "scripts\upsmon.sqf";
			_monGroupArray = _monGroupArray + [_newGroup];
				sleep 1;
				_newGroup = [_markerPosition, EAST, ["O_G_officer_F","O_G_officer_F"], [[0,0,0],[3,3,0]],[],[0.1,0.1],[],[]] call BIS_fnc_spawnGroup;
				_ups11 = [_newGroup,_markerString,"SPAWNED","RANDOM","NOFOLLOW"] execVM "scripts\upsmon.sqf";
			_monGroupArray = _monGroupArray + [_newGroup];
			};
			
			//_monGroupArray = [_newGroup0,_newGroup1,_newGroup2,_newGroup3,_newGroup4,_newGroup5,_newGroup6,_newGroup7,_newGroup8,_newGroup9,_newGroup10,_newGroup11];
			
			//_destination
			//deleteVehicle _newTrig;
			_radius = [_missionFileName, "CREATETASK", "Radius", "SCALAR"] call iniDB_read;
			_enemyIs = [_missionFileName, "CREATETASK", "Enemy", "STRING"] call iniDB_read;
			_newTrig = createTrigger ["EmptyDetector", _destination];
			_newTrig setTriggerArea[_radius,_radius,0,false];
			switch (_enemyIs) do
			{
				case "":
				{
					_newTrig setTriggerActivation["EAST","NOT PRESENT",false];
					_newTrig setTriggerStatements["this", "", ""];
				};
				case "EE":
				{
					_newTrig setTriggerActivation["EAST","NOT PRESENT",false];
					_newTrig setTriggerStatements["this", "", ""];
				};
				case "EC":
				{
					newTrig2 = createTrigger ["EmptyDetector", _destination];
					newTrig2 setTriggerArea[_radius,_radius,0,false];
					newTrig2 setTriggerActivation["CIV","NOT PRESENT",false];
					newTrig2 setTriggerStatements["this", "", ""];
					_newTrig setTriggerActivation["EAST","NOT PRESENT",false];
					_newTrig setTriggerStatements["this and triggerActivated newTrig2", "", ""];
				};
				case "WW":
				{
					_newTrig setTriggerActivation["WEST","NOT PRESENT",false];
					_newTrig setTriggerStatements["this", "", ""];
				};
				case "WC":
				{
					newTrig2 = createTrigger ["EmptyDetector", _destination];
					newTrig2 setTriggerArea[_radius,_radius,0,false];
					newTrig2 setTriggerActivation["CIV","NOT PRESENT",false];
					newTrig2 setTriggerStatements["this", "", ""];
					_newTrig setTriggerActivation["WEST","NOT PRESENT",false];
					_newTrig setTriggerStatements["this and triggerActivated newTrig2", "", ""];
				};
				case "CC":
				{
					_newTrig setTriggerActivation["CIV","NOT PRESENT",false];
					_newTrig setTriggerStatements["this", "", ""];
				};
			};
			
			
			_spawn3 = [_newTrig,_newTask,newTrig2] spawn
			{
				_newTrig = _this select 0;
				_newTask = _this select 1;
				newTrig2 = _this select 2;
				_aa = 0;
				_win = 0;
				while {_aa<7270} do
				{
					sleep 15;
					_state = triggerActivated _newTrig;
					if (_state) then
					{
						_aa = 8000;
						_win = 1;
						[_newTask,"SUCCEEDED"] call BIS_fnc_taskSetState;
					};
					_aa = _aa + 15;
				};
				if (_win==0) then
				{
					[_newTask,"FAILED"] call BIS_fnc_taskSetState;
				};
			};

		};
		
		case "ASS1":
		{
			//add Kill object
			//load object info
			_missionGroupName = "KILLOBJECT";
			_missionPosition = [_missionFileName, _missionGroupName, "Position", "ARRAY"] call iniDB_read;
			_missionSide = [_missionFileName, _missionGroupName, "Side", "STRING"] call iniDB_read;
			_missionAzimuth = [_missionFileName, _missionGroupName, "Azimuth", "SCALAR"] call iniDB_read;
			_missionType = [_missionFileName, _missionGroupName, "Type", "STRING"] call iniDB_read;
			
	_ret = ["MissionsInProgress", "MISSIONS", "klklkl", _missionType] call iniDB_write;
			//create object
			_missionObject = objNull;
			_missionObject setDir _missionAzimuth;
			switch (_missionSide) do
			{
				case "WEST":
				{
					_missionGroup = createGroup WEST;
					_missionObject = _missionGroup createUnit [_missionType,_missionPosition, [], 0, "FORM"];
				};
				case "EAST":
				{
					_missionGroup = createGroup EAST;
					_missionObject = _missionGroup createUnit [_missionType,_missionPosition, [], 0, "FORM"];
				};
				case "GUER":
				{
					_missionGroup = createGroup GUER;
					_missionObject = _missionGroup createUnit [_missionType,_missionPosition, [], 0, "FORM"];
				};
				case "CIV":
				{
					_missionGroup = createGroup CIV;
					_missionObject = _missionGroup createUnit [_missionType,_missionPosition, [], 0, "FORM"];
				};
				case "":
				{
					_missionObject = createVehicle [_missionType,_missionPosition,[],0,"CAN_COLLIDE"];
				};
			};
			_missionObject setPosATL _missionPosition;
			
			
			_missionObjectList = _missionObjectList + [_missionObject];
			
			
			_mPosition = [_missionFileName, "ASSOBJECT", "Position", "ARRAY"] call iniDB_read;
			_mType = [_missionFileName, "ASSOBJECT", "Type", "STRING"] call iniDB_read;
			_van = createVehicle [_mType,_mPosition,[],0,"FORM"];
			
			
			
			_missionObject setDir _missionAzimuth;
			
			_missionObjectList = _missionObjectList + [_missionObject];
			
			//remove mission Objects
			//mg=_missionObject;
			_spawn2 = [_destination,_newTask,_van] spawn {
				_mg = _this select 0;
				_nt = _this select 1;
				_van = _this select 2;
				_rr = 0;
				_win = 0;
				while {_rr < 7275} do
				{
					
					sleep 15;
					
					if (!canMove _van) then
					{
						_dist = _van distance _mg;
						if (alive _van and _dist>=30) then
						{
							_rr = 8000;
						};
						if (!alive _van and _dist<30) then
						{
							_rr = 8000;
							_win = 1;
							//_nt setTaskState "SUCCEEDED";
							[_nt,"SUCCEEDED"] call BIS_fnc_taskSetState;
						};
						if (!alive _van and _dist>=30) then
						{
							_rr = 8000;
						};
						
					};
					_rr = _rr + 15;
				};
				if (_win==0) then
				{
					[_nt,"FAILED"] call BIS_fnc_taskSetState;
					deleteVehicle (vehicle _van);
					deleteVehicle _van;
				};
				sleep 15;
				//after time is up
				//_nul=[_mg,25] execVM "ReBuild.sqf";
				deleteVehicle _mg;
				deleteVehicle (vehicle _van);
				deleteVehicle _van;
			};
			
		};
	
	

	
	
	
	
	
	};
	
	
	
	//terminate everything
	_allDone = 0;
	_mTime = 480;
	while {_allDone==0 and _mTime>0} do
	{
		sleep 30;
		
		//check if no one is connected who started the mission
		_maybe = 1;
		{
			_first = _x;
			{
				_UUID = getPlayerUID _x;
				if (_first == _UUID) then
				{
					_maybe = 0;
				};
			}forEach playableUnits + allDeadMen;
		}forEach _allUIDs;
		if (_maybe == 1) then
		{
		
			sleep 30;
			{
				_first = _x;
				{
					_UUID = getPlayerUID _x;
					//use allDeadMen
					if (_first == _UUID) then
					{
						_maybe = 0;
					};
				}forEach playableUnits + allDeadMen;
			}forEach _allUIDs;
		};
		if (_maybe == 1) then
		{
		
_ret = ["MissionsInProgress", "MISSIONS", "000000000", "00000000"] call iniDB_write;

		};
		
		//check if mission has ended elsewhere or no one connected
		_state = _newTask call BIS_fnc_taskState;
		if (_maybe == 1 or _state=="SUCCEEDED" or _state=="FAILED" or _state=="Canceled") then
		{
			_allDone = 1;
		};
		
		
		//check if forcibly cancelled
		_Mission0 = ["MissionsInProgress", "MISSIONS", "Mission0", "STRING"] call iniDB_read;
		_Mission1 = ["MissionsInProgress", "MISSIONS", "Mission1", "STRING"] call iniDB_read;
		_Mission2 = ["MissionsInProgress", "MISSIONS", "Mission2", "STRING"] call iniDB_read;
		_Mission3 = ["MissionsInProgress", "MISSIONS", "Mission3", "STRING"] call iniDB_read;
		_Mission4 = ["MissionsInProgress", "MISSIONS", "Mission4", "STRING"] call iniDB_read;
		_Mission5 = ["MissionsInProgress", "MISSIONS", "Mission5", "STRING"] call iniDB_read;
		_Mission6 = ["MissionsInProgress", "MISSIONS", "Mission6", "STRING"] call iniDB_read;
		
		
		
				
		
		if not (_Mission0 == _missionFileName or _Mission1 == _missionFileName or _Mission2 == _missionFileName or _Mission3 == _missionFileName or _Mission4 == _missionFileName or _Mission5 == _missionFileName or _Mission6 == _missionFileName) then
		{
			_allDone = 2;
			[_newTask,"Canceled"] call BIS_fnc_taskSetState;
		};
		
	};
	
	
	
	

	
	_theGroup = [];
	_theUnit = objNull;
	{
		_XUID = getPlayerUID _x;
		if (_XUID == _uidz) then
		{
			_theUnit = _x;
		};
	}forEach playableUnits;
	
	// all uids who start mission
	_newGroup = [];
	{
		_y = _x;
		{
			_xUID = getPlayerUID _x;
			if (_y == _xUID) then
			{
				_newGroup = _newGroup + [_x];
			};
		}forEach playableUnits;
	}forEach _allUIDS;
	
	
	
	// give tele action to _newGroup
	scriptScript = {player removeAction tele;contact = _this select 0;tele = player addAction ["<t color='#FFFF00'>Teleport to Contact</t>",{player setPos (getPos contact);player removeAction tele;},1,-10,false,true];Landlord removeAction cancelTask;NPC1 removeAction cancelTask;NPC2 removeAction cancelTask;NPC3 removeAction cancelTask;NPC4 removeAction cancelTask;NPC5 removeAction cancelTask;NPC6 removeAction cancelTask;NPC7 removeAction cancelTask;NPC8 removeAction cancelTask;NPC9 removeAction cancelTask;NPC10 removeAction cancelTask;};



	missionNamespace setVariable ["Script",[scriptScript,_NPCName]];
	{

		//  _NPCName
		_clientID = owner _x;
		_clientID publicVariableClient "Script";
	
	}forEach _newGroup;
	
	_state = _newTask call BIS_fnc_taskState;
	if (_state == "SUCCEEDED") then
	{
	
		{
			
			//unit
			_unitX = _x;
			_NPCString = format["NPC%1",_NPC];
			
			//test
			_test = [_unitX, "QUESTDATA", _NPCString, "STRING"] call iniDB_read;
			if (_test=="") then
			{
				_arrr = [0,0,0,0,0,0,0,0,0,0,0];
				_ret = [_unitX, "QUESTDATA", _NPCString, _arrr] call iniDB_write;
			};
			
			//npc string
			
			_questArray = [_unitX, "QUESTDATA", _NPCString, "ARRAY"] call iniDB_read;
			_questArray set [_missionNumber, 1];
			_ret = [_unitX, "QUESTDATA", _NPCString, _questArray] call iniDB_write;
		}forEach _allUIDs;
		//units group _theUnit;
	};
	
	
	
	
	//terminate _spawn1;
	terminate _spawn2;
	terminate _spawn3;
	terminate _spawn4;
	{
		terminate _x;
	}forEach _upsArray;
	
	
	
	
	
	
	
	//_monGroupArray = [_newGroup0,_newGroup1,_newGroup2,_newGroup3,_newGroup4,_newGroup5,_newGroup6,_newGroup7,_newGroup8,_newGroup9,_newGroup10,_newGroup11];

	//fleeeee
	
	{
		{
			_x allowFleeing 1;
		}forEach units _x;
	}foreach _groupArray;
	
	{
		_x allowFleeing 1;
	}foreach _missionObjectList;
	
	sleep 90;
	
	//kill
	
/* 	{
		{
			if (vehicle _x isKindOf "man" or vehicle _x != _x) then
			{
				_x setDamage 1;
			};
		}forEach units _x;
	}foreach _groupArray + _monGroupArray;
	
	{
		if (vehicle _x isKindOf "man" or vehicle _x != _x) then
		{
			_x setDamage 1;
		};
	}foreach _missionObjectList; */
	
	sleep 60;
	//delete

	{
		{
			_veh = vehicle _x;
			deleteVehicle (vehicle _x);
			deleteVehicle _x;
		}forEach units _x;
	}foreach _groupArray + _monGroupArray;
	
	{
		_veh = vehicle _x;
		deleteVehicle _veh;
		deleteVehicle _x;
	}foreach _missionObjectList;
	
	//deleteMarker _markerstr;
	
	//deleteMarker _markerDropOff;
	
	//deleteMarker _markerDropOffWords;

	//if natural end
	if (_allDone == 1) then
	{
		
		_Mission0 = ["MissionsInProgress", "MISSIONS", "Mission0", "STRING"] call iniDB_read;
		_Mission1 = ["MissionsInProgress", "MISSIONS", "Mission1", "STRING"] call iniDB_read;
		_Mission2 = ["MissionsInProgress", "MISSIONS", "Mission2", "STRING"] call iniDB_read;
		_Mission3 = ["MissionsInProgress", "MISSIONS", "Mission3", "STRING"] call iniDB_read;
		_Mission4 = ["MissionsInProgress", "MISSIONS", "Mission4", "STRING"] call iniDB_read;
		_Mission5 = ["MissionsInProgress", "MISSIONS", "Mission5", "STRING"] call iniDB_read;
		_Mission6 = ["MissionsInProgress", "MISSIONS", "Mission6", "STRING"] call iniDB_read;
		{
			_index = _forEachIndex;
			if (_x==_missionFileName) then
			{
				_MIPNumber = format["Mission%1",_index];
				_ret = ["MissionsInProgress", "MISSIONS", _MIPNumber, ""] call iniDB_write;
			};
		
		}forEach [_Mission0,_Mission1,_Mission2,_Mission3,_Mission4,_Mission5,_Mission6];
		
	};
	
	
	



} else
{


};//end if _isInProgress






