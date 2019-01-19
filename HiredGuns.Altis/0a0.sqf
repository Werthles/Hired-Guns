_camPos1 = _this select 0;
_camTarget1 = _this select 1;
_camPos2 = _this select 2;
_camTarget2 = _this select 3;
_camPos3 = _this select 4;
_camTarget3 = _this select 5;
_title = _this select 6;
_arg8 = _this select 7;
_arg9 = _this select 8; //NPC object


0 fadeMusic 0.5;
//playMusic "LeadTrack02_F_Bootcamp";



switch (_arg9) do
{
	case 0:{playMusic "LeadTrack02_F_EPC";};//The Landlord
	case 1:{playMusic "AmbientTrack04_F";};//The Drimean
	case 2:{playMusic "BackgroundTrack01_F";};//The Banker
	case 3:{playMusic "BackgroundTrack03_F_EPC";};//The Priest
	case 4:{playMusic "LeadTrack03_F_EPA";};//The Pirate
	case 5:{playMusic "BackgroundTrack04_F_EPC";};//The Oreokastron Guerrilla
	case 6:{playMusic "LeadTrack03_F_EPC";};//The CSAT Officer
	case 7:{playMusic "LeadTrack02_F_EPC";};//The FIA Officer
	case 8:{playMusic "LeadTrack06_F_EPC";};//The FIA Armourer
	case 9:{playMusic "BackgroundTrack01_F_EPC";};//The FIA Pilot
	case 10:{playMusic "LeadTrack02_F_Bootcamp";};//The Caretaker
};



//playSound "1a0";
/* 
camPos1 = [444,2000,20];
camTarget1 = [444,2100,0];
camPos2 = [4444,2000,20];
camTarget2 = [4444,2100,0];
camPos3 = [4444,2000,20];
camTarget3 = [4444,2100,0];
 */
 //_NPCName = "";

 
 
 
["TaskAssigned",["",_title]] call BIS_fnc_showNotification;
 
 
 

titlecut [" ","BLACK OUT",1];
sleep 1;
enableradio false;
camUseNVG true;
waitUntil {time>0};
//playSound "1a0";
if (daytime >=5) then { camUseNVG false;};
[0, 0] call BIS_fnc_cinemaBorder;

//Camera setup

_camera = "camera" camCreate (getPos player);
_camera cameraEffect ["internal", "back"];




_camera camPrepareTarget _camTarget1;
_camera camPreparePos _camPos1;
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
cutText [" ","BLACK IN",1];
sleep 2.5;
playSound _arg8;
sleep 2.5;
//playSound _arg8;
titlecut [" ","BLACK OUT",1];

sleep 1;



_camera camPrepareTarget _camTarget2;
_camera camPreparePos _camPos2;
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

cutText [" ","BLACK IN",1];

sleep 5;
//NPC1 say3D _arg8;
titlecut [" ","BLACK OUT",1];

sleep 1;

_camera camPrepareTarget _camTarget3;
_camera camPreparePos _camPos3;
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

cutText [" ","BLACK IN",1];

sleep 5;
//NPC1 say _arg8;
titlecut [" ","BLACK OUT",1];

sleep 1;

enableradio true;
disableUserInput false;
_camera cameraEffect ["terminate","back"];
camdestroy _camera;
titlecut [" ","BLACK IN",1];
sleep 1;
[1, 2] call BIS_fnc_cinemaBorder;
10 fadeMusic 0;



//NPC1 say "1a0";
//playSound "1a0";
//NPC1 say3D "1a0";
