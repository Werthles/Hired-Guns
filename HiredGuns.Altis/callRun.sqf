_target = _this select 0;
_caller = _this select 1;
_ID = _this select 2;
_arguments = _this select 3;

_NPC = _arguments select 0;

_missionNumber = _arguments select 1;





_tasks = _caller call BIS_fnc_tasksUnit;

//hintSilent format["%1",_tasks];

_OK = 0;
_a = leader group _caller;

if not (_a == _caller) then
{
	_OK = 1;
	hintSilent composeText [ parseText "<t color='#e5c100' align='center'>Only squad leaders can accept tasks!</t>"];
} else
{
	{
		_state = _x call BIS_fnc_taskState;
		if (_state == "CREATED" or _state == "ASSIGNED" or _state == "AUTOASSIGNED") then
		{
			hintSilent composeText [ parseText "<t color='#e5c100' align='center'>Please cancel or complete your current task!</t>"];
			_OK = 1;
		};
	}forEach _tasks;
};

if (_OK == 0) then
{
	hintSilent composeText [ parseText "<t color='#e5c100' align='center'>Loading Job . . .</t>"];
	_uid = getPlayerUID _caller;

	missionNamespace setVariable ["RunSQF",[_NPC,_missionNumber,_uid]];

	publicVariableServer "RunSQF";

	_target removeAction _ID;

	//add task cancel option
	
	cancelTask = _target addAction ["<t color='#FF00FF'>Cancel Task</t>","cancelTask.sqf",[_NPC,_missionNumber],-20];
	

	
/* 	
	_NPCis = "";
	switch (_NPC) do
	{
		case 0:
		{_NPCis = "The Landlord"};
		case 1:
		{_NPCis = "The Drimean Warlord"};
		case 2:
		{_NPCis = "The Landlord"};
		case 3:
		{_NPCis = "The Landlord"};
	};
	_bottomLine = format ["Mission %1 of 10",_missionNumber + 1];
	hintText = composeText [
		"Job Accepted From:",
		lineBreak,
		_NPCis,
		lineBreak,
		lineBreak,
		_bottomLine
	]; */
	
	//hintSilent _hintText;
/* 	
	Script = {hintSilent hintText;};
	{
		_clientID = owner _x;
		_clientID publicVariableClient "Script";
	}forEach units group _caller; */
};