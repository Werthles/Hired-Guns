//onPlayerConnected "[_id, _uid, _name] execVM ""PlayerConnected.sqf""";
_id = _this select 0;
_uid = _this select 1;
_name = _this select 2;

//log players
_date = Date;
if (time>0) then
{
	//_ret = ["AllConnections", _date, _uid, _name] call iniDB_write;
	_ret = ["AllConnections", _uid, _date, _name] call iniDB_write;
};