//_target = _this select 0;
_caller = _this select 1;
//_ID = _this select 2;
//_arguments = _this select 3;

//_arg1 = _arguments select 0;
//_uid = getPlayerUID _caller;
//_profile = profileName;
//_position = getPos _caller;
//_databasename = format["%1%2",_profile,_uid];
//_gun = getWeaponCargo _caller;

//hint format["%1",_databasename];
//hint format["%1",_position];


//check if in a car, if not, load data
if (vehicle _caller != _caller) then
{
	hintSilent composeText [ parseText "<t color='#e5c100' align='center'>Exit your vehicle to load.</t>"];
} else {

	missionNamespace setVariable ["PlayerLoad",_caller];

	publicVariableServer "PlayerLoad";

	_caller removeAction loadAction;

	_caller removeAction removeLoad;

};


actionOptions = _newUnit addAction ["Options","Options.sqf",[],-11];


//_ret = [_databasename, "GLOBAL", "playerPos", _position] call iniDB_write;
//_ret = [_databasename, "GLOBAL", "gun", _gun] call iniDB_write;

// read information example
//_time = [_databasename, "GLOBAL", "time", "STRING"] call iniDB_read;
//_units = [_databasename, "GLOBAL", "units", "ARRAY"] call iniDB_read;
//testttttttttttttttt

_caller removeAction groupOptions;

_caller removeAction leaveOptions;

_caller removeAction introMovie;

_caller removeAction closeOptions;


_caller removeAction mute;
actionOptions = _caller addAction ["<t color='#FF0000'>Options</t>","Options.sqf",[],-11,false,false];

