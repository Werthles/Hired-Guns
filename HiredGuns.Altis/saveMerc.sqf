//_target = _this select 0;
_caller = _this select 1;
//_ID = _this select 2;
// _arguments = _this select 3;

//_arg1 = _arguments select 0;
//_uid = getPlayerUID _caller;
//_profile = profileName;
//_position = getPos _caller;
//_xPos = _position select 0;
//_yPos = _position select 1;
//_zPos = _position select 2;
//_databasename = format["%1%2",_uid,_profile];
//_gun = getWeaponCargo _caller;

//hint format["%1",_databasename];
//hint format["%1",_position];

missionNamespace setVariable ["PlayerSave",_caller];

//missionNamespace setVariable ["PlayerSave",[_caller,_databasename,_xPos,_yPos,_zPos,_arg1]];

publicVariableServer "PlayerSave";

sleep 1;
hint composeText [
    parseText "<t color='#e5c100' align='center'>Gear And Location Saved To The Server</t>",
    parseText "<br />",
    parseText "<t color='#ffffff' align='center'>To load, use '</t><t color='#ff0000' align='center'>Options</t><t color='#ffffff' align='center'>', '<t color='#FFFF00' align='center'>Load Last Save</t>' in your action menu.</t>"
];

//_ret = [_databasename, "GLOBAL", "playerPos", _position] call iniDB_write;
//_ret = [_databasename, "GLOBAL", "gun", _gun] call iniDB_write;

// read information example
//_time = [_databasename, "GLOBAL", "time", "STRING"] call iniDB_read;
//_units = [_databasename, "GLOBAL", "units", "ARRAY"] call iniDB_read;