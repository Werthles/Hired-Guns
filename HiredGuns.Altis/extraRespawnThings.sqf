//[<newUnit>,<oldUnit>,<respawn>,<respawnDelay>]
_newUnit = _this select 0;
_oldUnit = _this select 1;
_respawn = _this select 2;
_respawnDelay = _this select 3;

removeAllActions _oldUnit;


newUnit = _this select 0;

//Wildlife.ogv

//_newUnit addBackpack "B_AssaultPack_cbr";

//cheat for testing
//_newUnit allowDamage false;
//_newUnit setCaptive true;


actionOptions = _newUnit addAction ["<t color='#FF0000'>Options</t>","Options.sqf",[],-11,false,false];

execVM "safezone.sqf";

//Zuff's Group Management Script 1.1
//[player] execVM "scripts\groupsMenu\initGroups.sqf";
GRPMNU_groupActions = player addAction["<t color='#EB7FAF'>Groups Menu</t>", "scripts\groupsMenu\groupActions.sqf", nil,-200, false, false, "", "_target == vehicle _this || _target == _this"];


if (!isNil "A") then
{
	_nul = _newUnit spawn {


		_newUnit = _this;
		sleep 5;
		// [year, month, day, hour, minute]
		_date = date;
		//hint str (_date);
		//_nearestCity = nearestLocation [getPos _newUnit, "nameCity"];

		_closest = (nearestLocations [_newUnit,["NameCityCapital","NameCity","NameVillage"],3000]) select 0;
		_townName = text _closest;
		//townPos = position closest;



		_seconds = _date select 4;
		_secString = "";
		if (_seconds < 10) then
		{
			_secString =  format["0%1",_seconds];
		} else
		{
			_secString = str(_seconds);
		};


		[_townName, str(_date select 2) + "/" + str(_date select 1) + "/" + str(_date select 0),str(_date select 3) + ":" + _secString] spawn BIS_fnc_infoText;
	};
	
	

};

A = 1;