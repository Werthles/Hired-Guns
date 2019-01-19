_target = _this select 0;
_caller = _this select 1;
_ID = _this select 2;
_arguments = _this select 3;


_caller removeAction actionOptions;

groupOptions = _caller addAction ["<t color='#FFFF00'>Join Nearest Group</t>","JoinNearestGroup.sqf",[],-11,false];

leaveOptions = _caller addAction ["<t color='#FFFF00'>Leave Group</t>","leaveGroup.sqf",[],-12,false];

introMovie = _caller addAction ["<t color='#FFFF00'>Play Prologue Video</t>","playMovie.sqf",[],-13,false];

loadAction = _caller addAction ["<t color='#FFFF00'>Load Last Save</t>","loadMerc.sqf",[],-14,false];

mute = _caller addAction ["<t color='#FFFF00'>Mute Requests</t>","mute.sqf",[],-15,false];

closeOptions = _caller addAction ["<t color='#FF0000'>Close Options</t>","closeOptions.sqf",[],-20,false];
