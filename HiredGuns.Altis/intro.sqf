cutText ["", "BLACK", 999];
onPreloadFinished "";
enableradio false;
camUseNVG true;
waitUntil {time>0};
_vid = _this select 0;
[0, 0] call BIS_fnc_cinemaBorder;


if (daytime >=5) then { camUseNVG false;};

//Camera setup


cutText ["", "BLACK FADED", 999]; 
//0 fadeSound 0;
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal", "back"];


cutText [" ","BLACK IN",5];

_camera camPrepareTarget [3400,13900,20];
_camera camPreparePos [-2600,4667,10];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;



//cutText ["Persistent, Open-World, RPG and Co-op Campaign", "PLAIN DOWN", 3];
_camera camPrepareTarget [3400,13900,20];
_camera camPreparePos [0,9000,20];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;

/////////////////////////////////////////////////////////////////////////////////////

subject = player createDiarySubject ["Contacts","Contacts"];
subject = player createDiarySubject ["HiredGuns","Hired Guns"];

player createDiaryRecord ["Contacts",["The Caretaker","<img image='images\Caretaker.jpg'/><font face='EtelkaNarrowMediumPro' size=18>What You Know:</font><br/><font face='PuristaLight' size=16>Speak to someone at the old parliament building. When you are ready, maybe you can take you place here as the leader of Altis. But you will need support from across the island.<br/><br/>You will need to complete jobs and dominate regions to take the ultimate power.<br/><br/>25 Jobs Complete - Member of Parliament<br/>50 Jobs Complete - Member of Government<br/>75 Jobs Complete and 6 Regions Dominated- Leader of Altis</font><br/><br/><font face='EtelkaNarrowMediumPro' size=18>Campaign Description:</font><br/><font face='PuristaLight' size=16>- Control of Altis</font>"]];

player createDiaryRecord ["Contacts",["The FIA Pilot","<img image='images\Pilot.jpg'/><font face='EtelkaNarrowMediumPro' size=18>What You Know:</font><br/><font face='PuristaLight' size=16>The FIA Officer has told you to meet this man. He is in charge of what there is of the FIA Air Force. Not just the need for transportation, but bombing runs and CAS too.</font><br/><br/><font face='EtelkaNarrowMediumPro' size=18>Campaign Description:</font><br/><font face='PuristaLight' size=16>- Air-Based Combat<br/>- Aerial Control</font>"]];

player createDiaryRecord ["Contacts",["The FIA Armourer","<img image='images\Armourer.jpg'/><font face='EtelkaNarrowMediumPro' size=18>What You Know:</font><br/><font face='PuristaLight' size=16>The FIA Officer has told you to meet this man. He is constantly looking to resupply the FIA with more weapons and ammunition.</font><br/><br/><font face='EtelkaNarrowMediumPro' size=18>Campaign Description:</font><br/><font face='PuristaLight' size=16>- Infantry and Vehicle-Based Combat<br/>- Regional Control</font>"]];

player createDiaryRecord ["Contacts",["The FIA Officer","<img image='images\FIAOfficer.jpg'/><font face='EtelkaNarrowMediumPro' size=18>What You Know:</font><br/><font face='PuristaLight' size=16>As you were captured by CSAT in the past, the FIA feel they can trust you. And they need all the help they can get to fight for their side of the island.<br/><br/>This man sought you out, and now is offering you work. He will provide you vehicles and weapons for your troubles.</font><br/><br/><font face='EtelkaNarrowMediumPro' size=18>Campaign Description:</font><br/><font face='PuristaLight' size=16>- Armour-Based Combat<br/>- Regional Control</font>"]];

player createDiaryRecord ["Contacts",["The CSAT Officer","<img image='images\CSATOfficer.jpg'/><font face='EtelkaNarrowMediumPro' size=18>What You Know:</font><br/><font face='PuristaLight' size=16>Meet your contact in the CSAT military. You managed to convince them that you are want to join their side. They don't know about your other work on the island.<br/><br/>They must be desperate.</font><br/><br/><font face='EtelkaNarrowMediumPro' size=18>Campaign Description:</font><br/><font face='PuristaLight' size=16>- Armour-Based Combat<br/>- Regional Control</font>"]];

player createDiaryRecord ["Contacts",["The Oreokastron Guerrilla","<img image='images\OG.jpg'/><font face='EtelkaNarrowMediumPro' size=18>What You Know:</font><br/><font face='PuristaLight' size=16>You know the leaders of the guerrillas in this region live in this area. A small town surrounded by difficult terrain, CSAT has not been able to fight through the people of this region.<br/><br/>Find someone to talk to, then work out how you could help.</font><br/><br/><font face='EtelkaNarrowMediumPro' size=18>Campaign Description:</font><br/><font face='PuristaLight' size=16>- Infantry-Based Combat<br/>- Regional Control</font>"]];

player createDiaryRecord ["Contacts",["The Pirate","<img image='images\Pirate.jpg'/><font face='EtelkaNarrowMediumPro' size=18>What You Know:</font><br/><font face='PuristaLight' size=16>You worked together before to raid towns in Stratis. Now he keeps a low profile near a port in the south-west of the island.<br/><br/>He owns a number of boats, and he's sure to know if there are any good places to raid by sea.</font><br/><br/><font face='EtelkaNarrowMediumPro' size=18>Campaign Description:</font><br/><font face='PuristaLight' size=16>- Water and Land Combat (Air Transport or Paradrop)<br/>- Sea Control</font>"]];

player createDiaryRecord ["Contacts",["The Priest","<img image='images\Priest.jpg'/><font face='EtelkaNarrowMediumPro' size=18>What You Know:</font><br/><font face='PuristaLight' size=16>Who doesn't know about the Priest? Living between CSAT and the Oreokastrons, his region has seen so much fighting, both sides no longer contest it. Instead, the Priest has secured a peace within this small strip of land. Either he must be bribing both sides, or he has powerful friends...</font><br/><br/><font face='EtelkaNarrowMediumPro' size=18>Campaign Description:</font><br/><font face='PuristaLight' size=16>- Infantry-Based Combat<br/>- Regional Control</font>"]];

player createDiaryRecord ["Contacts",["The Banker","<img image='images\Banker.jpg'/><font face='EtelkaNarrowMediumPro' size=18>What You Know:</font><br/><font face='PuristaLight' size=16>He once looked after the finances of your group. He calls himself The Banker, but in reality, he looks after money and valuable items, for a price.<br/><br/>He would surely be very happy to have you on his side.</font><br/><br/><font face='EtelkaNarrowMediumPro' size=18>Campaign Description:</font><br/><font face='PuristaLight' size=16>- Infantry-Based Combat<br/>- Regional Control</font>"]];

player createDiaryRecord ["Contacts",["The Drimean Warlord","<img image='images\Drimean.jpg'/><font face='EtelkaNarrowMediumPro' size=18>What You Know:</font><br/><font face='PuristaLight' size=16>You have never met him in the flesh. Your old mercenary team once did a job for him on his peninsula, to clear out some serious criminals.<br/><br/>You don’t know what the situation is in Drimea, so use caution.</font><br/><br/><font face='EtelkaNarrowMediumPro' size=18>Campaign Description:</font><br/><font face='PuristaLight' size=16>- Infantry-Based Combat<br/>- Regional Control</font>"]];

player createDiaryRecord ["Contacts",["The Landlord","<img image='images\Landlord.jpg'/><font face='EtelkaNarrowMediumPro' size=18>What You Know:</font><br/><font face='PuristaLight' size=16>He agreed to hide you from the authorities after your escape. And in return he wants your help disrupting CSAT.<br/><br/>He shares your passion for chaos, but does he see the opportunity to take control of the island as well?</font><br/><br/><font face='EtelkaNarrowMediumPro' size=18>Campaign Description:</font><br/><font face='PuristaLight' size=16>- Infantry-Based Combat<br/>- Main Campaign<br/>- Regional Control</font>"]];

player createDiaryRecord ["HiredGuns",["Your story","<font face='PuristaLight' size=16>After you were hired to work as a mercenary on Stratis, by the Alternative Armed Forces, you gained a reputation for being a great leader in combat. It didn’t take long for you to become their 2nd in command.<br/><br/>Then, about a year ago, a raid on CSAT supplies went wrong, your leader, Sergeant Jo was killed, and you were captured and sent to Kamino Prison.<br/><br/>Last night, your old friend Bob, managed to spring you from prison, and you fled to Altis by boat, to be hidden by the Landlord, in return for assistance disrupting CSAT.<br/><br/>You know many contacts on Altis from your time before prison. They would surely appreciate help from you and your Hired Guns, who escaped from Stratis before you. So, at the right moment, you approach you contacts. You still have the desire to be the best, and are hungry for power. You will want to take advantage of the local situations, when you can, to take power for yourself, or gain local favour.</font>"]];

player createDiaryRecord ["HiredGuns",["Progress and Item Saving","<font face='PuristaLight' size=16>Campaign progress is automatically saved, once you see ‘JOB COMPLETED’.<br/><br/>To save your items and weapons, you must speak to one of your contacts, selecting the save option. Your location will be saved too, so when you select the load option, you will move back to that location, to reduce the movement of weaponry between regions.</font>"]];

player createDiaryRecord ["HiredGuns",["How To Play","<font face='EtelkaNarrowMediumPro' size=18>1. Team Up<br/>2. Speak to a Contact<br/>3. Accept a Job</font><br/><br/><font face='PuristaLight' size=16>1. Choose a team leader. They will be the one that can select jobs. Other team members need to join them. To join a team, use your action menu (mouse wheel) and use the groups menu.<br/>2. Speaking to a contact will show you what jobs they currently have to offer you.<br/>3. Your team leader must select the job your team wants from the contact, and then this job will load for all members of the group. If a player doesn't join the mission before the start of a job, they won't be credited with its completion!</font>"]];

player createDiaryRecord ["Diary",["Signal","<font face='PuristaLight' size=16>To create a team of hired guns, use the groups menu or group together before loading into the game.<br/><br/>Then, the leader must start a task. Approach an NPC, speak to them, then you can select any available mission they offer you, which will appear on their action menu.<br/><br/>This server’s teamspeak IP is 82.42.214.87</font>"]];

player createDiaryRecord ["Diary",["Execution","<font face='EtelkaNarrowMediumPro' size=18>First Contact</font><br/><br/><font face='PuristaLight' size=16>You escaped to Kavala Bay. Go ashore and speak to The Landlord.<br/><br/>He wants your help to disrupt CSAT in his region. He used to run this town from his hotel and bar, but since CSAT began to lose control of Altis, they have made it hard for him to carry out his ‘business’.<br/><br/></font><font face='EtelkaNarrowMediumPro' size=18>Other Contacts</font><br/><br/><font face='PuristaLight' size=16>For more information, see ‘Contacts’.</font>"]];

player createDiaryRecord ["Diary",["Mission","<font face='EtelkaNarrowMediumPro' size=18>Gain control of Altis.</font><br/><br/><font face='PuristaLight' size=16>Control isn’t all about military might. Working with leaders and the people can help you gain it too.<br/><br/>Speak to the regional leaders, and exploit their desperation for military help. They will give your team of Hired Guns tasks. Complete them to gain their support for you, or go against them, which may lead to dangerous consequences. When the time comes, you may have to fight for control of their region, or prove your worth.</font>"]];

player createDiaryRecord ["Diary",["Situation","<font face='EtelkaNarrowMediumPro' size=24>HIRED GUNS</font><br/><br/><font face='EtelkaNarrowMediumPro' size=18>Prologue</font><br/><br/><font face='PuristaLight' size=16>After being sprung from the notorious Kamino Prison on Stratis, you've had to flee to Altis to avoid detection. You were the leader of a group of mercenaries on Stratis, but you will have to rebuild your power on Altis.<br/><br/></font><font face='EtelkaNarrowMediumPro' size=18>Now</font><br/><br/><font face='PuristaLight' size=16>Altis’ national government collapsed years ago when CSAT lost control of the east side of the island to the FIA. The regions split apart, and are now controlled separately.<br/><br/>With your group of Hired Guns, you could gain influence with the regional powers so that they support you, or overpower them, if possible. The regional leaders will surely take up any offer of assistance...<br/><br/>Gain enough power nationally, and you could be the one to rule a united Altis.</font>"]];


//////////////////////////////////////////////////////////////////////////////////////////////////////////////


//FirstTask = player createSimpleTask ["Speak To The Landlord"];
//FirstTask setSimpleTaskDestination (getPos Landlord);
//FirstTask setSimpleTaskDescription ["Speak to the Landlord at the Rendezvous.<br/><br/>Approach him, and the option to speak will appear. This is how you can interact with your contacts.", "Speak To The Landlord", "Landlord"];


sleep 3;
titleRsc["introImage", "PLAIN", 2];
sleep 3;
cutText ["Persistent, Open-World, Co-op Campaign", "PLAIN DOWN", 2];
sleep 1;
_camera camPrepareTarget [3400,13900,20];
_camera camPreparePos [2600,13333,20];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
sleep 2;
cutText ["Team up, then speak to your contacts to accept jobs.", "PLAIN DOWN", 3];

sleep 3;
cutText ["Completing jobs will unlock more. If you gain enough influence across the island, maybe you can take control.", "PLAIN DOWN", 3];
sleep 2;
_camera camPrepareTarget [3548.41,13642.8,5];
_camera camPreparePos [3400,13900,20];
_camera camPrepareFOV 0.400;
_camera camCommitPrepared 3;
sleep 3;

_camera camPrepareTarget [3548.41,13642.8,5];
_camera camPreparePos [3548.41,13642.8,5];
_camera camPrepareFOV 0.200;
_camera camCommitPrepared 3;
sleep 2;
cutText ["", "PLAIN DOWN", 3];
titlecut [" ","BLACK OUT",1];
sleep 2;






["TaskAssigned",["","Speak To The Landlord"]] call BIS_fnc_showNotification;


2 fadeSound 1;
enableradio true;
disableUserInput false;
_camera cameraEffect ["terminate","back"];
camdestroy _camera;
titlecut [" ","BLACK IN",2];
sleep 3;
[1, 2] call BIS_fnc_cinemaBorder;
10 fadeMusic 0;

lm1 = createMarkerLocal ["respawn_guerrila_2",getMarkerPos "prespawn_guerrila_2"];
lm1 setMarkerShapeLocal "ICON";
lm1 setMarkerTextLocal "The Drimean Warlord";
lm1 setMarkerTypeLocal "mil_marker";
lm1 setMarkerColorLocal "ColorBrown";


lm2 = createMarkerLocal ["respawn_guerrila_7",getMarkerPos "prespawn_guerrila_7"];
lm2 setMarkerShapeLocal "ICON";
lm2 setMarkerTextLocal "Financial Region";
lm2 setMarkerTypeLocal "mil_marker";
lm2 setMarkerColorLocal "ColorGreen";


lm3 = createMarkerLocal ["respawn_guerrila_8",getMarkerPos "prespawn_guerrila_8"];
lm3 setMarkerShapeLocal "ICON";
lm3 setMarkerTextLocal "Independent Villages";
lm3 setMarkerTypeLocal "mil_marker";
lm3 setMarkerColorLocal "ColorWhite";


lm4 = createMarkerLocal ["respawn_guerrila_9",getMarkerPos "prespawn_guerrila_9"];
lm4 setMarkerShapeLocal "ICON";
lm4 setMarkerTextLocal "Oreokastron Guerrillas";
lm4 setMarkerTypeLocal "mil_marker";
lm4 setMarkerColorLocal "ColorKhaki";


lm5 = createMarkerLocal ["respawn_guerrila_6",getMarkerPos "prespawn_guerrila_6"];
lm5 setMarkerShapeLocal "ICON";
lm5 setMarkerTextLocal "Armour Base";
lm5 setMarkerTypeLocal "mil_marker";
lm5 setMarkerColorLocal "ColorEAST";


lm6 = createMarkerLocal ["respawn_guerrila_4",getMarkerPos "prespawn_guerrila_4"];
lm6 setMarkerShapeLocal "ICON";
lm6 setMarkerTextLocal "Armour Base";
lm6 setMarkerTypeLocal "mil_marker";
lm6 setMarkerColorLocal "ColorWEST";


lm7 = createMarkerLocal ["respawn_guerrila_5",getMarkerPos "prespawn_guerrila_5"];
lm7 setMarkerShapeLocal "ICON";
lm7 setMarkerTextLocal "Mechanised Base";
lm7 setMarkerTypeLocal "mil_marker";
lm7 setMarkerColorLocal "ColorOrange";


lm8 = createMarkerLocal ["respawn_guerrila_1",getMarkerPos "prespawn_guerrila_1"];
lm8 setMarkerShapeLocal "ICON";
lm8 setMarkerTextLocal "Pirate Naval Base";
lm8 setMarkerTypeLocal "mil_marker";
lm8 setMarkerColorLocal "ColorYellow";


lm9 = createMarkerLocal ["respawn_guerrila_3",getMarkerPos "prespawn_guerrila_3"];
lm9 setMarkerShapeLocal "ICON";
lm9 setMarkerTextLocal "FIA Air Base";
lm9 setMarkerTypeLocal "mil_marker";
lm9 setMarkerColorLocal "ColorBlue";


sleep 45;
//["TaskAssigned",["","Speak To The Landlord"]] call BIS_fnc_showNotification;

profNam = profileName;
if (profNam == "") then
{
	profNam = "";
} else 
{
	profNam = " " + profNam + ",";
};

["Welcome" + profNam,"To","Hired Guns","By Werthles"] spawn BIS_fnc_infoText;

/* sleep 15;

MISSION_ROOT = call {
private "_arr";
_arr = toArray __FILE__;
_arr resize (count _arr - 8);
toString _arr
};
playSound3D [MISSION_ROOT + "sounds\C_EA_RadioMusic2.ogg", Boat,false,getPos Boat,0.4];

 */




