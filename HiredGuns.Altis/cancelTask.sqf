_target = _this select 0;
_caller = _this select 1;
_ID = _this select 2;
_arguments = _this select 3;

_NPC = _arguments select 0;

_missionNumber = _arguments select 1;

_endMissionCue = format["%1a%2",_NPC,_missionNumber];


missionNamespace setVariable ["endMissionCue",_endMissionCue];

publicVariableServer "endMissionCue";

_target removeAction _ID;

hintSilent composeText [ parseText "<t color='#e5c100' align='center'>Please wait, task cancelling in progress...</t>"];