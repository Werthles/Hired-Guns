_target = _this select 0;
_caller = _this select 1;
_ID = _this select 2;
//_arguments = _this select 3;

//the NPC
_whichNPC = _this select 3;

//the player
_uid = getPlayerUID _caller;
0 fadeSound 1;
switch (_whichNPC) do
{
	case 0:
	{
		playSound "0a";
		//Landlord say "0a";
		"SpeakToLandlord" addPublicVariableEventHandler
		{
			
			//initialise
			_aPVEHName = _this select 0;
			_vars = _this select 1;
			
			_missions = _vars select 0;
			_MIPs = _vars select 1;
			
			//_missionNumber = _missions select 0;
			//_missionName = format["0a%1.sqf",_missionNumber];
			//_missionNumber = 0;
			
			//hint format["%1",_uid];
			
			
			
			_ll0 = {_x == "0a0"} count _MIPs;
			_ll1 = {_x == "0a1"} count _MIPs;
			_ll2 = {_x == "0a2"} count _MIPs;
			_ll3 = {_x == "0a3"} count _MIPs;
			_ll4 = {_x == "0a4"} count _MIPs;
			_ll5 = {_x == "0a5"} count _MIPs;
			_ll6 = {_x == "0a6"} count _MIPs;
			_ll7 = {_x == "0a7"} count _MIPs;
			_ll8 = {_x == "0a8"} count _MIPs;
			_ll9 = {_x == "0a9"} count _MIPs;
			_ll10 = {_x == "0a10"} count _MIPs;
			
			
			
			//removeActions
			Landlord removeAction a0;
			Landlord removeAction a1;
			Landlord removeAction a2;
			Landlord removeAction a3;
			Landlord removeAction a4;
			Landlord removeAction a5;
			Landlord removeAction a6;
			Landlord removeAction a7;
			Landlord removeAction a8;
			Landlord removeAction a9;
			Landlord removeAction a10;
			
			if (_missions select 0 == 0) then
			{
				if (_ll0 == 0) then
				{
					a0 = Landlord addAction ["<t color='#7d7dFF'>Accept Fuel Truck Job</t>","callRun.sqf",[0,0],9];
				} else
				{
					a0 = Landlord addAction ["<t color='#BDBDBD'>Cannot Accept Fuel Truck Job, already in progress</t>",{},[],9];
				};
			};
			if (_missions select 1 == 0) then
			{
				if (_ll1 == 0) then
				{
					a1 = Landlord addAction ["<t color='#7d7dFF'>Accept Explosives Job</t>","callRun.sqf",[0,1],8];
				} else
				{
					a1 = Landlord addAction ["<t color='#BDBDBD'>Cannot Accept Explosives Job, already in progress</t>",{},[],8];
				};
			};
			if (_missions select 2 == 0) then
			{
				if (_ll2 == 0) then
				{
					a2 = Landlord addAction ["<t color='#7d7dFF'>Accept Weapons Job</t>","callRun.sqf",[0,2],7];
				} else
				{
					a2 = Landlord addAction ["<t color='#BDBDBD'>Cannot Accept Weapons Job, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 0 == 1 and _missions select 1 == 1 and _missions select 2 == 1 and _missions select 3 == 0) then
			{
				if (_ll3 == 0) then
				{
					a3 = Landlord addAction ["<t color='#7d7dFF'>Accept Assassination Job</t>","callRun.sqf",[0,3],7];
				} else
				{
					a3 = Landlord addAction ["<t color='#BDBDBD'>Cannot Accept Assassination Job, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 3 == 1 and _missions select 4 == 0) then
			{
				if (_ll4 == 0) then
				{
					a4 = Landlord addAction ["<t color='#7d7dFF'>Accept Armour Elimination Job</t>","callRun.sqf",[0,4],7];
				} else
				{
					a4 = Landlord addAction ["<t color='#BDBDBD'>Cannot Accept Armour Elimination Job, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 4 == 1 and _missions select 5 == 0) then
			{
				if (_ll5 == 0) then
				{
					a5 = Landlord addAction ["<t color='#7d7dFF'>Accept Bunkers Job</t>","callRun.sqf",[0,5],7];
				} else
				{
					a5 = Landlord addAction ["<t color='#BDBDBD'>Cannot Accept Bunkers Job, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 5 == 1 and _missions select 6 == 0) then
			{
				if (_ll6 == 0) then
				{
					a6 = Landlord addAction ["<t color='#7d7dFF'>Accept Convoy Job</t>","callRun.sqf",[0,6],7];
				} else
				{
					a6 = Landlord addAction ["<t color='#BDBDBD'>Cannot Accept Convoy Job, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 6 == 1 and _missions select 7 == 0) then
			{
				if (_ll7 == 0) then
				{
					a7 = Landlord addAction ["<t color='#7d7dFF'>Accept Stadium Assassination Job</t>","callRun.sqf",[0,7],7];
				} else
				{
					a7 = Landlord addAction ["<t color='#BDBDBD'>Cannot Accept Stadium Assassination Job, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 7 == 1 and _missions select 8 == 0) then
			{
				if (_ll8 == 0) then
				{
					a8 = Landlord addAction ["<t color='#7d7dFF'>Accept Steal The Final Truck Job</t>","callRun.sqf",[0,8],7];
				} else
				{
					a8 = Landlord addAction ["<t color='#BDBDBD'>Cannot Accept Steal The Final Truck Job, already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 8 == 1 and _missions select 9 == 0) then
			{
				if (_ll9 == 0) then
				{
					a9 = Landlord addAction ["<t color='#7d7dFF'>Accept Destroy The Transmitter Job</t>","callRun.sqf",[0,9],7];
				} else
				{
					a9 = Landlord addAction ["<t color='#BDBDBD'>Cannot Accept Destroy The Transmitter Job, already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 9 == 1) then
			{
				if (_ll10 == 0) then
				{
					a10 = Landlord addAction ["<t color='#7d7dFF'>Regional Support</t>","callRun.sqf",[0,10],7];
				} else
				{
					a10 = Landlord addAction ["<t color='#BDBDBD'>Cannot Accept Regional Support, already in progress</t>",{},[],7];
				};
				
			};
			
			
			
			
			
			player removeEventHandler ["SpeakToLandlord", 0];
			//hintSilent format["%1",_missions];
		};
		sleep 0.5;
		Landlord setRandomLip true;
		sleep 2;
		Landlord setRandomLip false;
	};
	case 1:
	{
		playSound "1a";
		"SpeakToNPC1" addPublicVariableEventHandler
		{
			
			//initialise
			_aPVEHName = _this select 0;
			_vars = _this select 1;
			
			_missions = _vars select 0;
			_MIPs = _vars select 1;
			
			//_missionNumber = _missions select 0;
			//_missionName = format["0a%1.sqf",_missionNumber];
			//_missionNumber = 0;
			
			//hint format["%1",_uid];
			
			
			
			_ll0 = {_x == "1a0"} count _MIPs;
			_ll1 = {_x == "1a1"} count _MIPs;
			_ll2 = {_x == "1a2"} count _MIPs;
			_ll3 = {_x == "1a3"} count _MIPs;
			_ll4 = {_x == "1a4"} count _MIPs;
			_ll5 = {_x == "1a5"} count _MIPs;
			_ll6 = {_x == "1a6"} count _MIPs;
			_ll7 = {_x == "1a7"} count _MIPs;
			_ll8 = {_x == "1a8"} count _MIPs;
			_ll9 = {_x == "1a9"} count _MIPs;
			
			
			//removeActions
			NPC1 removeAction b0;
			NPC1 removeAction b1;
			NPC1 removeAction b2;
			NPC1 removeAction b3;
			NPC1 removeAction b4;
			NPC1 removeAction b5;
			NPC1 removeAction b6;
			NPC1 removeAction b7;
			NPC1 removeAction b8;
			NPC1 removeAction b9;
			NPC1 removeAction b10;
			
			if (_missions select 0 == 0) then
			{
				if (_ll0 == 0  and _missions select 9 == 0) then
				{
					b0 = NPC1 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Murderers</t>","callRun.sqf",[1,0],9];
				} else
				{
					b0 = NPC1 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Murderers, already in progress</t>",{},[],9];
				};
			};
			if (_missions select 0 == 1 and _missions select 1 == 0 and _missions select 9 == 0) then
			{
				if (_ll1 == 0) then
				{
					b1 = NPC1 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Kidnappers</t>","callRun.sqf",[1,1],8];
				} else
				{
					b1 = NPC1 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Kidnappers, already in progress</t>",{},[],8];
				};
			};
			if (_missions select 1 == 1 and _missions select 2 == 0 and _missions select 9 == 0) then
			{
				if (_ll2 == 0) then
				{
					b2 = NPC1 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Drug Dealers</t>","callRun.sqf",[1,2],7];
				} else
				{
					b2 = NPC1 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Criminal Gang, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 2 == 1 and _missions select 3 == 0 and _missions select 9 == 0) then
			{
				if (_ll3 == 0) then
				{
					b3 = NPC1 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Thieves</t>","callRun.sqf",[1,3],7];
				} else
				{
					b3 = NPC1 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Thieves, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 3 == 1 and _missions select 4 == 0 and _missions select 9 == 0) then
			{
				if (_ll4 == 0) then
				{
					b4 = NPC1 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Trouble-Makers</t>","callRun.sqf",[1,4],7];
				} else
				{
					b4 = NPC1 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Trouble-Makers, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 4 == 1 and _missions select 5 == 0 and _missions select 9 == 0) then
			{
				if (_ll5 == 0) then
				{
					b5 = NPC1 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Rivals 1</t>","callRun.sqf",[1,5],7];
				} else
				{
					b5 = NPC1 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Rivals 1, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 5 == 1 and _missions select 6 == 0 and _missions select 9 == 0) then
			{
				if (_ll6 == 0) then
				{
					b6 = NPC1 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Rivals 2</t>","callRun.sqf",[1,6],7];
				} else
				{
					b6 = NPC1 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Rivals, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 6 == 1 and _missions select 7 == 0 and _missions select 9 == 0) then
			{
				if (_ll7 == 0) then
				{
					b7 = NPC1 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate The Town</t>","callRun.sqf",[1,7],7];
				} else
				{
					b7 = NPC1 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate The Town, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 7 == 1 and _missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll8 == 0) then
				{
					b8 = NPC1 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Everyone</t>","callRun.sqf",[1,8],7];
				} else
				{
					b8 = NPC1 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Everyone, already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll9 == 0) then
				{
					b9 = NPC1 addAction ["<t color='#00FFFF'>Refuse More Jobs</t>","callRun.sqf",[1,9],7];
				} else
				{
					b9 = NPC1 addAction ["<t color='#BDBDBD'>Cannot Accept: Refuse More Jobs Task, already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 8 == 1) then
			{
				b10 = NPC1 addAction ["<t color='#7d7dFF'>Regional Support</t>","callRun.sqf",[1,10],7];
			};
			
			
			
			
			
			player removeEventHandler ["SpeakToNPC1", 0];
			//hintSilent format["%1",_missions];
		};
		sleep 0.5;
		NPC1 setRandomLip true;
		sleep 2;
		NPC1 setRandomLip false;
	};
	
	
	case 2:
	{
		playSound "2a";
		"SpeakToNPC2" addPublicVariableEventHandler
		{
			
			//initialise
			_aPVEHName = _this select 0;
			_vars = _this select 1;
			
			_missions = _vars select 0;
			_MIPs = _vars select 1;
			
			//_missionNumber = _missions select 0;
			//_missionName = format["0a%1.sqf",_missionNumber];
			//_missionNumber = 0;
			
			//hint format["%1",_uid];
			
			
			
			_ll0 = {_x == "2a0"} count _MIPs;
			_ll1 = {_x == "2a1"} count _MIPs;
			_ll2 = {_x == "2a2"} count _MIPs;
			_ll3 = {_x == "2a3"} count _MIPs;
			_ll4 = {_x == "2a4"} count _MIPs;
			_ll5 = {_x == "2a5"} count _MIPs;
			_ll6 = {_x == "2a6"} count _MIPs;
			_ll7 = {_x == "2a7"} count _MIPs;
			_ll8 = {_x == "2a8"} count _MIPs;
			_ll9 = {_x == "2a9"} count _MIPs;
			
			
			//removeActions
			NPC2 removeAction c0;
			NPC2 removeAction c1;
			NPC2 removeAction c2;
			NPC2 removeAction c3;
			NPC2 removeAction c4;
			NPC2 removeAction c5;
			NPC2 removeAction c6;
			NPC2 removeAction c7;
			NPC2 removeAction c8;
			NPC2 removeAction c9;
			NPC2 removeAction c10;
			
			if (_missions select 0 == 0) then
			{
				if (_ll0 == 0  and _missions select 9 == 0) then
				{
					c0 = NPC2 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Murderers</t>","callRun.sqf",[2,0],9];
				} else
				{
					c0 = NPC2 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Murderers, already in progress</t>",{},[],9];
				};
			};
			if (_missions select 0 == 1 and _missions select 1 == 0 and _missions select 9 == 0) then
			{
				if (_ll1 == 0) then
				{
					c1 = NPC2 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Kidnappers</t>","callRun.sqf",[2,1],8];
				} else
				{
					c1 = NPC2 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Kidnappers, already in progress</t>",{},[],8];
				};
			};
			if (_missions select 1 == 1 and _missions select 2 == 0 and _missions select 9 == 0) then
			{
				if (_ll2 == 0) then
				{
					c2 = NPC2 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Drug Dealers</t>","callRun.sqf",[2,2],7];
				} else
				{
					c2 = NPC2 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Criminal Gang, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 2 == 1 and _missions select 3 == 0 and _missions select 9 == 0) then
			{
				if (_ll3 == 0) then
				{
					c3 = NPC2 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Thieves</t>","callRun.sqf",[2,3],7];
				} else
				{
					c3 = NPC2 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Thieves, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 3 == 1 and _missions select 4 == 0 and _missions select 9 == 0) then
			{
				if (_ll4 == 0) then
				{
					c4 = NPC2 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Trouble-Makers</t>","callRun.sqf",[2,4],7];
				} else
				{
					c4 = NPC2 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Trouble-Makers, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 4 == 1 and _missions select 5 == 0 and _missions select 9 == 0) then
			{
				if (_ll5 == 0) then
				{
					c5 = NPC2 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Rivals 1</t>","callRun.sqf",[2,5],7];
				} else
				{
					c5 = NPC2 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Rivals 1, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 5 == 1 and _missions select 6 == 0 and _missions select 9 == 0) then
			{
				if (_ll6 == 0) then
				{
					c6 = NPC2 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Rivals 2</t>","callRun.sqf",[2,6],7];
				} else
				{
					c6 = NPC2 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Rivals, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 6 == 1 and _missions select 7 == 0 and _missions select 9 == 0) then
			{
				if (_ll7 == 0) then
				{
					c7 = NPC2 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate The Town</t>","callRun.sqf",[2,7],7];
				} else
				{
					c7 = NPC2 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate The Town, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 7 == 1 and _missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll8 == 0) then
				{
					c8 = NPC2 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Everyone</t>","callRun.sqf",[2,8],7];
				} else
				{
					c8 = NPC2 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Everyone, already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 7 == 1 and _missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll9 == 0) then
				{
					c9 = NPC2 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Everyone</t>","callRun.sqf",[2,9],7];
				} else
				{
					c9 = NPC2 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Everyone, already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 9 == 1) then
			{
				c10 = NPC2 addAction ["<t color='#7d7dFF'>Regional Support</t>","callRun.sqf",[2,10],7];
			};
			
			
			
			
			
			player removeEventHandler ["SpeakToNPC2", 0];
			//hintSilent format["%1",_missions];
		};
		sleep 0.5;
		NPC2 setRandomLip true;
		sleep 2;
		NPC2 setRandomLip false;
	};
	
	case 3:
	{
		playSound "3a";
		"SpeakToNPC3" addPublicVariableEventHandler
		{
			
			//initialise
			_aPVEHName = _this select 0;
			_vars = _this select 1;
			
			_missions = _vars select 0;
			_MIPs = _vars select 1;
			
			//_missionNumber = _missions select 0;
			//_missionName = format["0a%1.sqf",_missionNumber];
			//_missionNumber = 0;
			
			//hint format["%1",_uid];
			
			
			
			_ll0 = {_x == "3a0"} count _MIPs;
			_ll1 = {_x == "3a1"} count _MIPs;
			_ll2 = {_x == "3a2"} count _MIPs;
			_ll3 = {_x == "3a3"} count _MIPs;
			_ll4 = {_x == "3a4"} count _MIPs;
			_ll5 = {_x == "3a5"} count _MIPs;
			_ll6 = {_x == "3a6"} count _MIPs;
			_ll7 = {_x == "3a7"} count _MIPs;
			_ll8 = {_x == "3a8"} count _MIPs;
			_ll9 = {_x == "3a9"} count _MIPs;
			
			
			//removeActions
			NPC3 removeAction d0;
			NPC3 removeAction d1;
			NPC3 removeAction d2;
			NPC3 removeAction d3;
			NPC3 removeAction d4;
			NPC3 removeAction d5;
			NPC3 removeAction d6;
			NPC3 removeAction d7;
			NPC3 removeAction d8;
			NPC3 removeAction d9;
			NPC3 removeAction d10;
			
			if (_missions select 0 == 0) then
			{
				if (_ll0 == 0  and _missions select 9 == 0) then
				{
					d0 = NPC3 addAction ["<t color='#7d7dFF'>Accept Job: Retrieve The Stolen Car</t>","callRun.sqf",[3,0],9];
				} else
				{
					d0 = NPC3 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Retrieve The Stolen Car, already in progress</t>",{},[],9];
				};
			};
			if (_missions select 0 == 1 and _missions select 1 == 0 and _missions select 9 == 0) then
			{
				if (_ll1 == 0) then
				{
					d1 = NPC3 addAction ["<t color='#7d7dFF'>Accept Job: Stop The Joyrider</t>","callRun.sqf",[3,1],8];
				} else
				{
					d1 = NPC3 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Stop The Joyrider, already in progress</t>",{},[],8];
				};
			};
			if (_missions select 1 == 1 and _missions select 2 == 0 and _missions select 9 == 0) then
			{
				if (_ll2 == 0) then
				{
					d2 = NPC3 addAction ["<t color='#7d7dFF'>Accept Job: Disperse The Drunks</t>","callRun.sqf",[3,2],7];
				} else
				{
					d2 = NPC3 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Disperse The Drunks, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 2 == 1 and _missions select 3 == 0 and _missions select 9 == 0) then
			{
				if (_ll3 == 0) then
				{
					d3 = NPC3 addAction ["<t color='#7d7dFF'>Accept Job: Resolve Oreokastron Dispute</t>","callRun.sqf",[3,3],7];
				} else
				{
					d3 = NPC3 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Resolve Oreokastron Dispute, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 3 == 1 and _missions select 4 == 0 and _missions select 9 == 0) then
			{
				if (_ll4 == 0) then
				{
					d4 = NPC3 addAction ["<t color='#7d7dFF'>Accept Job: Remove Mars Worshippers</t>","callRun.sqf",[3,4],7];
				} else
				{
					d4 = NPC3 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Remove Mars Worshippers, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 4 == 1 and _missions select 5 == 0 and _missions select 9 == 0) then
			{
				if (_ll5 == 0) then
				{
					d5 = NPC3 addAction ["<t color='#7d7dFF'>Accept Job: EliRescue The Fisherman</t>","callRun.sqf",[3,5],7];
				} else
				{
					d5 = NPC3 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Rescue The Fisherman, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 5 == 1 and _missions select 6 == 0 and _missions select 9 == 0) then
			{
				if (_ll6 == 0) then
				{
					d6 = NPC3 addAction ["<t color='#7d7dFF'>Accept Job: Close Down Human Traffickers</t>","callRun.sqf",[3,6],7];
				} else
				{
					d6 = NPC3 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Close Down Human Traffickers, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 6 == 1 and _missions select 7 == 0 and _missions select 9 == 0) then
			{
				if (_ll7 == 0) then
				{
					d7 = NPC3 addAction ["<t color='#7d7dFF'>Accept Job: Eliminate Gang Leader</t>","callRun.sqf",[3,7],7];
				} else
				{
					d7 = NPC3 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Eliminate Gang Leader, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 7 == 1 and _missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll8 == 0) then
				{
					d8 = NPC3 addAction ["<t color='#7d7dFF'>Accept Job: Persuade CSAT To Leave</t>","callRun.sqf",[3,8],7];
				} else
				{
					d8 = NPC3 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Persuade CSAT To Leave, already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 7 == 1 and _missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll9 == 0) then
				{
					d9 = NPC3 addAction ["<t color='#7d7dFF'>Accept Job: Kill The False Prophet</t>","callRun.sqf",[3,9],7];
				} else
				{
					d9 = NPC3 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Kill The False Prophet, already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 9 == 1) then
			{
				d10 = NPC3 addAction ["<t color='#7d7dFF'>Regional Support</t>","callRun.sqf",[3,10],7];
			};
			
			
			
			
			
			player removeEventHandler ["SpeakToNPC3", 0];
			//hintSilent format["%1",_missions];
		};
		sleep 0.5;
		NPC3 setRandomLip true;
		sleep 2;
		NPC3 setRandomLip false;
	};
	
	case 4:
	{
		//Pirate
		playSound "4a";
		"SpeakToNPC4" addPublicVariableEventHandler
		{
			
			//initialise
			_aPVEHName = _this select 0;
			_vars = _this select 1;
			
			_missions = _vars select 0;
			_MIPs = _vars select 1;
			
			//_missionNumber = _missions select 0;
			//_missionName = format["0a%1.sqf",_missionNumber];
			//_missionNumber = 0;
			
			//hint format["%1",_uid];
			
			
			
			_ll0 = {_x == "4a0"} count _MIPs;
			_ll1 = {_x == "4a1"} count _MIPs;
			_ll2 = {_x == "4a2"} count _MIPs;
			_ll3 = {_x == "4a3"} count _MIPs;
			_ll4 = {_x == "4a4"} count _MIPs;
			_ll5 = {_x == "4a5"} count _MIPs;
			_ll6 = {_x == "4a6"} count _MIPs;
			_ll7 = {_x == "4a7"} count _MIPs;
			_ll8 = {_x == "4a8"} count _MIPs;
			_ll9 = {_x == "4a9"} count _MIPs;
			
			
			//removeActions
			NPC4 removeAction e0;
			NPC4 removeAction e1;
			NPC4 removeAction e2;
			NPC4 removeAction e3;
			NPC4 removeAction e4;
			NPC4 removeAction e5;
			NPC4 removeAction e6;
			NPC4 removeAction e7;
			NPC4 removeAction e8;
			NPC4 removeAction e9;
			NPC4 removeAction e10;
			
			if (_missions select 0 == 0) then
			{
				if (_ll0 == 0  and _missions select 9 == 0) then
				{
					e0 = NPC4 addAction ["<t color='#7d7dFF'>Accept Job: Edessa Bay Cache</t>","callRun.sqf",[4,0],9];
				} else
				{
					e0 = NPC4 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Edessa Bay Cache, already in progress</t>",{},[],9];
				};
			};
			if (_missions select 0 == 1 and _missions select 1 == 0) then
			{
				if (_ll1 == 0) then
				{
					e1 = NPC4 addAction ["<t color='#7d7dFF'>Accept Job: Makrynisi Cache</t>","callRun.sqf",[4,1],8];
				} else
				{
					e1 = NPC4 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Makrynisi Cache, already in progress</t>",{},[],8];
				};
			};
			if (_missions select 1 == 1 and _missions select 2 == 0) then
			{
				if (_ll2 == 0) then
				{
					e2 = NPC4 addAction ["<t color='#7d7dFF'>Accept Job: Monisi Cache</t>","callRun.sqf",[4,2],7];
				} else
				{
					e2 = NPC4 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Monisi Cache, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 2 == 1 and _missions select 3 == 0) then
			{
				if (_ll3 == 0) then
				{
					e3 = NPC4 addAction ["<t color='#7d7dFF'>Accept Job: Chelonisi Cache</t>","callRun.sqf",[4,3],7];
				} else
				{
					e3 = NPC4 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Chelonisi Cache, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 3 == 1 and _missions select 4 == 0) then
			{
				if (_ll4 == 0) then
				{
					e4 = NPC4 addAction ["<t color='#7d7dFF'>Accept Job: Cap Makrinos Cache</t>","callRun.sqf",[4,4],7];
				} else
				{
					e4 = NPC4 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Cap Makrinos Cache, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 4 == 1 and _missions select 5 == 0) then
			{
				if (_ll5 == 0) then
				{
					e5 = NPC4 addAction ["<t color='#7d7dFF'>Accept Job: Bomos Peninsula Light House Cache</t>","callRun.sqf",[4,5],7];
				} else
				{
					e5 = NPC4 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Bomos Peninsula Light House Cache, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 5 == 1 and _missions select 6 == 0) then
			{
				if (_ll6 == 0) then
				{
					e6 = NPC4 addAction ["<t color='#7d7dFF'>Accept Job: Fournos Cache</t>","callRun.sqf",[4,6],7];
				} else
				{
					e6 = NPC4 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Fournos Cache, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 6 == 1 and _missions select 7 == 0) then
			{
				if (_ll7 == 0) then
				{
					e7 = NPC4 addAction ["<t color='#7d7dFF'>Accept Job: Sagonisi Cache</t>","callRun.sqf",[4,7],7];
				} else
				{
					e7 = NPC4 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Sagonisi Cache, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 7 == 1 and _missions select 8 == 0) then
			{
				if (_ll8 == 0) then
				{
					e8 = NPC4 addAction ["<t color='#7d7dFF'>Accept Job: Savri Cache</t>","callRun.sqf",[4,8],7];
				} else
				{
					e8 = NPC4 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Savri Cache, already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 8 == 1 and _missions select 9 == 0) then
			{
				if (_ll9 == 0) then
				{
					e9 = NPC4 addAction ["<t color='#7d7dFF'>Accept Job: Atsalis Headquarters Cache</t>","callRun.sqf",[4,9],7];
				} else
				{
					e9 = NPC4 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Atsalis Headquarters Cache, already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 9 == 1) then
			{
				e10 = NPC4 addAction ["<t color='#7d7dFF'>Regional Support</t>","callRun.sqf",[4,10],7];
			};
			
			
			
			
			
			player removeEventHandler ["SpeakToNPC4", 0];
			//hintSilent format["%1",_missions];
		};
		sleep 0.5;
		NPC4 setRandomLip true;
		sleep 1;
		NPC4 setRandomLip false;
	};	
	
	
	case 5:
	{
		//Oreokastron Guerrilla
		playSound "5a";
		"SpeakToNPC5" addPublicVariableEventHandler
		{
			
			//initialise
			_aPVEHName = _this select 0;
			_vars = _this select 1;
			
			_missions = _vars select 0;
			_MIPs = _vars select 1;
			
			//_missionNumber = _missions select 0;
			//_missionName = format["0a%1.sqf",_missionNumber];
			//_missionNumber = 0;
			
			//hint format["%1",_uid];
			
			
			
			_ll0 = {_x == "5a0"} count _MIPs;
			_ll1 = {_x == "5a1"} count _MIPs;
			_ll2 = {_x == "5a2"} count _MIPs;
			_ll3 = {_x == "5a3"} count _MIPs;
			_ll4 = {_x == "5a4"} count _MIPs;
			_ll5 = {_x == "5a5"} count _MIPs;
			_ll6 = {_x == "5a6"} count _MIPs;
			_ll7 = {_x == "5a7"} count _MIPs;
			_ll8 = {_x == "5a8"} count _MIPs;
			_ll9 = {_x == "5a9"} count _MIPs;
			
			
			//removeActions
			NPC5 removeAction f0;
			NPC5 removeAction f1;
			NPC5 removeAction f2;
			NPC5 removeAction f3;
			NPC5 removeAction f4;
			NPC5 removeAction f5;
			NPC5 removeAction f6;
			NPC5 removeAction f7;
			NPC5 removeAction f8;
			NPC5 removeAction f9;
			NPC5 removeAction f10;
			
			if (_missions select 0 == 0 and _missions select 9 == 0) then
			{
				if (_ll0 == 0) then
				{
					f0 = NPC5 addAction ["<t color='#7d7dFF'>Accept Job: Clear The Cenrtal Sector</t>","callRun.sqf",[5,0],9];
				} else
				{
					f0 = NPC5 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Clear The Cenrtal Sector, already in progress</t>",{},[],9];
				};
			};
			if (_missions select 1 == 0 and _missions select 9 == 0) then
			{
				if (_ll1 == 0) then
				{
					f1 = NPC5 addAction ["<t color='#7d7dFF'>Accept Job: Clear The West Sector</t>","callRun.sqf",[5,1],8];
				} else
				{
					f1 = NPC5 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Clear The West Sector, already in progress</t>",{},[],8];
				};
			};
			if (_missions select 2 == 0 and _missions select 9 == 0) then
			{
				if (_ll2 == 0) then
				{
					f2 = NPC5 addAction ["<t color='#7d7dFF'>Accept Job: Clear The South West Sector</t>","callRun.sqf",[5,2],7];
				} else
				{
					f2 = NPC5 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Clear The South West Sector, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 3 == 0 and _missions select 9 == 0) then
			{
				if (_ll3 == 0) then
				{
					f3 = NPC5 addAction ["<t color='#7d7dFF'>Accept Job: Clear The South East Sector</t>","callRun.sqf",[5,3],7];
				} else
				{
					f3 = NPC5 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Clear The South East Sector, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 4 == 0 and _missions select 9 == 0) then
			{
				if (_ll4 == 0) then
				{
					f4 = NPC5 addAction ["<t color='#7d7dFF'>Accept Job: Clear The East Sector</t>","callRun.sqf",[5,4],7];
				} else
				{
					f4 = NPC5 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Clear The East Sector, currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 5 == 0 and _missions select 9 == 0) then
			{
				if (_ll5 == 0) then
				{
					f5 = NPC5 addAction ["<t color='#7d7dFF'>Accept Job: Clear The North East Sector</t>","callRun.sqf",[5,5],7];
				} else
				{
					f5 = NPC5 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Clear The North East Sector, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 6 == 0 and _missions select 9 == 0) then
			{
				if (_ll6 == 0) then
				{
					f6 = NPC5 addAction ["<t color='#7d7dFF'>Accept Job: Clear The Far East Sector</t>","callRun.sqf",[5,6],7];
				} else
				{
					f6 = NPC5 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Clear The Far East Sector, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 7 == 0 and _missions select 9 == 0) then
			{
				if (_ll7 == 0) then
				{
					f7 = NPC5 addAction ["<t color='#7d7dFF'>Accept Job: Clear The Far North East Sector</t>","callRun.sqf",[5,7],7];
				} else
				{
					f7 = NPC5 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Clear The Far North East Sector, already in progress</t>",{},[],7];
				};
			};
			if (_missions select 8 == 0 and _missions select 9 == 0 and _missions select 0 == 1 and _missions select 1 == 1 and _missions select 2 == 1 and _missions select 3 == 1 and _missions select 4 == 1 and _missions select 5 == 1 and _missions select 6 == 1 and _missions select 7 == 1) then
			{
				if (_ll8 == 0) then
				{
					f8 = NPC5 addAction ["<t color='#7d7dFF'>Accept Job: Clear The Oreokastron Sector</t>","callRun.sqf",[5,8],7];
				} else
				{
					f8 = NPC5 addAction ["<t color='#BDBDBD'>Cannot Accept Job: Clear The Oreokastron Sector, already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll9 == 0) then
				{
					f9 = NPC5 addAction ["<t color='#7d7dFF'>Start: Fight Against The Oreokastrons (Single Mission, Very Hard)</t>","callRun.sqf",[5,9],7];
				} else
				{
					f9 = NPC5 addAction ["<t color='#BDBDBD'>Cannot Start: Fight Against The Oreokastrons (Single Mission, Very Hard), already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 9 == 0 and _missions select 8 == 1) then
			{
				f10 = NPC5 addAction ["<t color='#7d7dFF'>Regional Support</t>","callRun.sqf",[5,10],7];
			};
			
			
			
			
			
			player removeEventHandler ["SpeakToNPC5", 0];
			//hintSilent format["%1",_missions];
		};
		sleep 0.5;
		NPC5 setRandomLip true;
		sleep 2;
		NPC5 setRandomLip false;
	};
	
	
	case 6:
	{
		playSound "6a";
		"SpeakToNPC6" addPublicVariableEventHandler
		{
			
			//initialise
			_aPVEHName = _this select 0;
			_vars = _this select 1;
			
			_missions = _vars select 0;
			_MIPs = _vars select 1;
			
			//_missionNumber = _missions select 0;
			//_missionName = format["0a%1.sqf",_missionNumber];
			//_missionNumber = 0;
			
			//hint format["%1",_uid];
			
			
			
			_ll0 = {_x == "6a0"} count _MIPs;
			_ll1 = {_x == "6a1"} count _MIPs;
			_ll2 = {_x == "6a2"} count _MIPs;
			_ll3 = {_x == "6a3"} count _MIPs;
			_ll4 = {_x == "6a4"} count _MIPs;
			_ll5 = {_x == "6a5"} count _MIPs;
			_ll6 = {_x == "6a6"} count _MIPs;
			_ll7 = {_x == "6a7"} count _MIPs;
			_ll8 = {_x == "6a8"} count _MIPs;
			_ll9 = {_x == "6a9"} count _MIPs;
			
			
			//removeActions
			NPC6 removeAction g0;
			NPC6 removeAction g1;
			NPC6 removeAction g2;
			NPC6 removeAction g3;
			NPC6 removeAction g4;
			NPC6 removeAction g5;
			NPC6 removeAction g6;
			NPC6 removeAction g7;
			NPC6 removeAction g8;
			NPC6 removeAction g9;
			NPC6 removeAction g10;
			
			if (_missions select 0 == 0) then
			{
				if (_ll0 == 0  and _missions select 9 == 0) then
				{
					g0 = NPC6 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[6,0],9];
				} else
				{
					g0 = NPC6 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],9];
				};
			};
			if (_missions select 0 == 1 and _missions select 1 == 0 and _missions select 9 == 0) then
			{
				if (_ll1 == 0) then
				{
					g1 = NPC6 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[6,1],8];
				} else
				{
					g1 = NPC6 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],8];
				};
			};
			if (_missions select 1 == 1 and _missions select 2 == 0 and _missions select 9 == 0) then
			{
				if (_ll2 == 0) then
				{
					g2 = NPC6 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[6,2],7];
				} else
				{
					g2 = NPC6 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 2 == 1 and _missions select 3 == 0 and _missions select 9 == 0) then
			{
				if (_ll3 == 0) then
				{
					g3 = NPC6 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[6,3],7];
				} else
				{
					g3 = NPC6 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 3 == 1 and _missions select 4 == 0 and _missions select 9 == 0) then
			{
				if (_ll4 == 0) then
				{
					g4 = NPC6 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[6,4],7];
				} else
				{
					g4 = NPC6 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 4 == 1 and _missions select 5 == 0 and _missions select 9 == 0) then
			{
				if (_ll5 == 0) then
				{
					g5 = NPC6 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[6,5],7];
				} else
				{
					g5 = NPC6 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
			};
			if (_missions select 5 == 1 and _missions select 6 == 0 and _missions select 9 == 0) then
			{
				if (_ll6 == 0) then
				{
					g6 = NPC6 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[6,6],7];
				} else
				{
					g6 = NPC6 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
			};
			if (_missions select 6 == 1 and _missions select 7 == 0 and _missions select 9 == 0) then
			{
				if (_ll7 == 0) then
				{
					g7 = NPC6 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[6,7],7];
				} else
				{
					g7 = NPC6 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
			};
			if (_missions select 7 == 1 and _missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll8 == 0) then
				{
					g8 = NPC6 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[6,8],7];
				} else
				{
					g8 = NPC6 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 7 == 1 and _missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll9 == 0) then
				{
					g9 = NPC6 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[6,9],7];
				} else
				{
					g9 = NPC6 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 9 == 1) then
			{
				g10 = NPC6 addAction ["<t color='#7d7dFF'>Regional Support</t>","callRun.sqf",[6,10],7];
			};
			
			
			
			
			
			player removeEventHandler ["SpeakToNPC6", 0];
			//hintSilent format["%1",_missions];
		};
		sleep 0.5;
		NPC6 setRandomLip true;
		sleep 2;
		NPC6 setRandomLip false;
	};
	
	case 7:
	{
		playSound "7a";
		"SpeakToNPC7" addPublicVariableEventHandler
		{
			
			//initialise
			_aPVEHName = _this select 0;
			_vars = _this select 1;
			
			_missions = _vars select 0;
			_MIPs = _vars select 1;
			
			//_missionNumber = _missions select 0;
			//_missionName = format["0a%1.sqf",_missionNumber];
			//_missionNumber = 0;
			
			//hint format["%1",_uid];
			
			
			
			_ll0 = {_x == "7a0"} count _MIPs;
			_ll1 = {_x == "7a1"} count _MIPs;
			_ll2 = {_x == "7a2"} count _MIPs;
			_ll3 = {_x == "7a3"} count _MIPs;
			_ll4 = {_x == "7a4"} count _MIPs;
			_ll5 = {_x == "7a5"} count _MIPs;
			_ll6 = {_x == "7a6"} count _MIPs;
			_ll7 = {_x == "7a7"} count _MIPs;
			_ll8 = {_x == "7a8"} count _MIPs;
			_ll9 = {_x == "7a9"} count _MIPs;
			
			
			//removeActions
			NPC7 removeAction h0;
			NPC7 removeAction h1;
			NPC7 removeAction h2;
			NPC7 removeAction h3;
			NPC7 removeAction h4;
			NPC7 removeAction h5;
			NPC7 removeAction h6;
			NPC7 removeAction h7;
			NPC7 removeAction h8;
			NPC7 removeAction h9;
			NPC7 removeAction h10;
			
			if (_missions select 0 == 0) then
			{
				if (_ll0 == 0  and _missions select 9 == 0) then
				{
					h0 = NPC7 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[7,0],9];
				} else
				{
					h0 = NPC7 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],9];
				};
			};
			if (_missions select 0 == 1 and _missions select 1 == 0 and _missions select 9 == 0) then
			{
				if (_ll1 == 0) then
				{
					h1 = NPC7 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[7,1],8];
				} else
				{
					h1 = NPC7 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],8];
				};
			};
			if (_missions select 1 == 1 and _missions select 2 == 0 and _missions select 9 == 0) then
			{
				if (_ll2 == 0) then
				{
					h2 = NPC7 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[7,2],7];
				} else
				{
					h2 = NPC7 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 2 == 1 and _missions select 3 == 0 and _missions select 9 == 0) then
			{
				if (_ll3 == 0) then
				{
					h3 = NPC7 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[7,3],7];
				} else
				{
					h3 = NPC7 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 3 == 1 and _missions select 4 == 0 and _missions select 9 == 0) then
			{
				if (_ll4 == 0) then
				{
					h4 = NPC7 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[7,4],7];
				} else
				{
					h4 = NPC7 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 4 == 1 and _missions select 5 == 0 and _missions select 9 == 0) then
			{
				if (_ll5 == 0) then
				{
					h5 = NPC7 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[7,5],7];
				} else
				{
					h5 = NPC7 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
			};
			if (_missions select 5 == 1 and _missions select 6 == 0 and _missions select 9 == 0) then
			{
				if (_ll6 == 0) then
				{
					h6 = NPC7 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[7,6],7];
				} else
				{
					h6 = NPC7 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
			};
			if (_missions select 6 == 1 and _missions select 7 == 0 and _missions select 9 == 0) then
			{
				if (_ll7 == 0) then
				{
					h7 = NPC7 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[7,7],7];
				} else
				{
					h7 = NPC7 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
			};
			if (_missions select 7 == 1 and _missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll8 == 0) then
				{
					h8 = NPC7 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[7,8],7];
				} else
				{
					h8 = NPC7 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 7 == 1 and _missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll9 == 0) then
				{
					h9 = NPC7 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[7,9],7];
				} else
				{
					h9 = NPC7 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 9 == 1) then
			{
				h10 = NPC7 addAction ["<t color='#7d7dFF'>Regional Support</t>","callRun.sqf",[7,10],7];
			};
			
			
			
			
			
			player removeEventHandler ["SpeakToNPC7", 0];
			//hintSilent format["%1",_missions];
		};
		sleep 0.5;
		NPC7 setRandomLip true;
		sleep 2;
		NPC7 setRandomLip false;
	};
	
	case 8:
	{
		playSound "8a";
		"SpeakToNPC8" addPublicVariableEventHandler
		{
			
			//initialise
			_aPVEHName = _this select 0;
			_vars = _this select 1;
			
			_missions = _vars select 0;
			_MIPs = _vars select 1;
			
			//_missionNumber = _missions select 0;
			//_missionName = format["0a%1.sqf",_missionNumber];
			//_missionNumber = 0;
			
			//hint format["%1",_uid];
			
			
			
			_ll0 = {_x == "8a0"} count _MIPs;
			_ll1 = {_x == "8a1"} count _MIPs;
			_ll2 = {_x == "8a2"} count _MIPs;
			_ll3 = {_x == "8a3"} count _MIPs;
			_ll4 = {_x == "8a4"} count _MIPs;
			_ll5 = {_x == "8a5"} count _MIPs;
			_ll6 = {_x == "8a6"} count _MIPs;
			_ll7 = {_x == "8a7"} count _MIPs;
			_ll8 = {_x == "8a8"} count _MIPs;
			_ll9 = {_x == "8a9"} count _MIPs;
			
			
			//removeActions
			NPC8 removeAction i0;
			NPC8 removeAction i1;
			NPC8 removeAction i2;
			NPC8 removeAction i3;
			NPC8 removeAction i4;
			NPC8 removeAction i5;
			NPC8 removeAction i6;
			NPC8 removeAction i7;
			NPC8 removeAction i8;
			NPC8 removeAction i9;
			NPC8 removeAction i10;
			
			if (_missions select 0 == 0) then
			{
				if (_ll0 == 0  and _missions select 9 == 0) then
				{
					i0 = NPC8 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[8,0],9];
				} else
				{
					i0 = NPC8 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],9];
				};
			};
			if (_missions select 0 == 1 and _missions select 1 == 0 and _missions select 9 == 0) then
			{
				if (_ll1 == 0) then
				{
					i1 = NPC8 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[8,1],8];
				} else
				{
					i1 = NPC8 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],8];
				};
			};
			if (_missions select 1 == 1 and _missions select 2 == 0 and _missions select 9 == 0) then
			{
				if (_ll2 == 0) then
				{
					i2 = NPC8 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[8,2],7];
				} else
				{
					i2 = NPC8 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 2 == 1 and _missions select 3 == 0 and _missions select 9 == 0) then
			{
				if (_ll3 == 0) then
				{
					i3 = NPC8 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[8,3],7];
				} else
				{
					i3 = NPC8 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 3 == 1 and _missions select 4 == 0 and _missions select 9 == 0) then
			{
				if (_ll4 == 0) then
				{
					i4 = NPC8 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[8,4],7];
				} else
				{
					i4 = NPC8 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 4 == 1 and _missions select 5 == 0 and _missions select 9 == 0) then
			{
				if (_ll5 == 0) then
				{
					i5 = NPC8 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[8,5],7];
				} else
				{
					i5 = NPC8 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
			};
			if (_missions select 5 == 1 and _missions select 6 == 0 and _missions select 9 == 0) then
			{
				if (_ll6 == 0) then
				{
					i6 = NPC8 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[8,6],7];
				} else
				{
					i6 = NPC8 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
			};
			if (_missions select 6 == 1 and _missions select 7 == 0 and _missions select 9 == 0) then
			{
				if (_ll7 == 0) then
				{
					i7 = NPC8 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[8,7],7];
				} else
				{
					i7 = NPC8 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
			};
			if (_missions select 7 == 1 and _missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll8 == 0) then
				{
					i8 = NPC8 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[8,8],7];
				} else
				{
					i8 = NPC8 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 7 == 1 and _missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll9 == 0) then
				{
					i9 = NPC8 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[8,9],7];
				} else
				{
					i9 = NPC8 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 9 == 1) then
			{
				i10 = NPC8 addAction ["<t color='#7d7dFF'>Regional Support</t>","callRun.sqf",[8,10],7];
			};
			
			
			
			
			
			player removeEventHandler ["SpeakToNPC8", 0];
			//hintSilent format["%1",_missions];
		};
		sleep 0.5;
		NPC8 setRandomLip true;
		sleep 2;
		NPC8 setRandomLip false;
	};
	
	case 9:
	{
		playSound "9a";
		"SpeakToNPC9" addPublicVariableEventHandler
		{
			
			//initialise
			_aPVEHName = _this select 0;
			_vars = _this select 1;
			
			_missions = _vars select 0;
			_MIPs = _vars select 1;
			
			//_missionNumber = _missions select 0;
			//_missionName = format["0a%1.sqf",_missionNumber];
			//_missionNumber = 0;
			
			//hint format["%1",_uid];
			
			
			
			_ll0 = {_x == "9a0"} count _MIPs;
			_ll1 = {_x == "9a1"} count _MIPs;
			_ll2 = {_x == "9a2"} count _MIPs;
			_ll3 = {_x == "9a3"} count _MIPs;
			_ll4 = {_x == "9a4"} count _MIPs;
			_ll5 = {_x == "9a5"} count _MIPs;
			_ll6 = {_x == "9a6"} count _MIPs;
			_ll7 = {_x == "9a7"} count _MIPs;
			_ll8 = {_x == "9a8"} count _MIPs;
			_ll9 = {_x == "9a9"} count _MIPs;
			
			
			//removeActions
			NPC9 removeAction j0;
			NPC9 removeAction j1;
			NPC9 removeAction j2;
			NPC9 removeAction j3;
			NPC9 removeAction j4;
			NPC9 removeAction j5;
			NPC9 removeAction j6;
			NPC9 removeAction j7;
			NPC9 removeAction j8;
			NPC9 removeAction j9;
			NPC9 removeAction j10;
			
			if (_missions select 0 == 0) then
			{
				if (_ll0 == 0  and _missions select 9 == 0) then
				{
					j0 = NPC9 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[9,0],9];
				} else
				{
					j0 = NPC9 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],9];
				};
			};
			if (_missions select 0 == 1 and _missions select 1 == 0 and _missions select 9 == 0) then
			{
				if (_ll1 == 0) then
				{
					j1 = NPC9 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[9,1],8];
				} else
				{
					j1 = NPC9 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],8];
				};
			};
			if (_missions select 1 == 1 and _missions select 2 == 0 and _missions select 9 == 0) then
			{
				if (_ll2 == 0) then
				{
					j2 = NPC9 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[9,2],7];
				} else
				{
					j2 = NPC9 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 2 == 1 and _missions select 3 == 0 and _missions select 9 == 0) then
			{
				if (_ll3 == 0) then
				{
					j3 = NPC9 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[9,3],7];
				} else
				{
					j3 = NPC9 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 3 == 1 and _missions select 4 == 0 and _missions select 9 == 0) then
			{
				if (_ll4 == 0) then
				{
					j4 = NPC9 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[9,4],7];
				} else
				{
					j4 = NPC9 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 4 == 1 and _missions select 5 == 0 and _missions select 9 == 0) then
			{
				if (_ll5 == 0) then
				{
					j5 = NPC9 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[9,5],7];
				} else
				{
					j5 = NPC9 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
			};
			if (_missions select 5 == 1 and _missions select 6 == 0 and _missions select 9 == 0) then
			{
				if (_ll6 == 0) then
				{
					j6 = NPC9 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[9,6],7];
				} else
				{
					j6 = NPC9 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
			};
			if (_missions select 6 == 1 and _missions select 7 == 0 and _missions select 9 == 0) then
			{
				if (_ll7 == 0) then
				{
					j7 = NPC9 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[9,7],7];
				} else
				{
					j7 = NPC9 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
			};
			if (_missions select 7 == 1 and _missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll8 == 0) then
				{
					j8 = NPC9 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[9,8],7];
				} else
				{
					j8 = NPC9 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 7 == 1 and _missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll9 == 0) then
				{
					j9 = NPC9 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[9,9],7];
				} else
				{
					j9 = NPC9 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 9 == 1) then
			{
				j10 = NPC9 addAction ["<t color='#7d7dFF'>Regional Support</t>","callRun.sqf",[9,10],7];
			};
			
			
			
			
			
			player removeEventHandler ["SpeakToNPC9", 0];
			//hintSilent format["%1",_missions];
		};
		sleep 0.5;
		NPC9 setRandomLip true;
		sleep 2;
		NPC9 setRandomLip false;
	};
	
	
	case 10:
	{
		playSound "10a";
		"SpeakToNPC10" addPublicVariableEventHandler
		{
			
			//initialise
			_aPVEHName = _this select 0;
			_vars = _this select 1;
			
			_missions = _vars select 0;
			_MIPs = _vars select 1;
			
			//_missionNumber = _missions select 0;
			//_missionName = format["0a%1.sqf",_missionNumber];
			//_missionNumber = 0;
			
			//hint format["%1",_uid];
			
			
			
			_ll0 = {_x == "10a0"} count _MIPs;
			_ll1 = {_x == "10a1"} count _MIPs;
			_ll2 = {_x == "10a2"} count _MIPs;
			_ll3 = {_x == "10a3"} count _MIPs;
			_ll4 = {_x == "10a4"} count _MIPs;
			_ll5 = {_x == "10a5"} count _MIPs;
			_ll6 = {_x == "10a6"} count _MIPs;
			_ll7 = {_x == "10a7"} count _MIPs;
			_ll8 = {_x == "10a8"} count _MIPs;
			_ll9 = {_x == "10a9"} count _MIPs;
			
			
			//removeActions
			NPC10 removeAction k0;
			NPC10 removeAction k1;
			NPC10 removeAction k2;
			NPC10 removeAction k3;
			NPC10 removeAction k4;
			NPC10 removeAction k5;
			NPC10 removeAction k6;
			NPC10 removeAction k7;
			NPC10 removeAction k8;
			NPC10 removeAction k9;
			NPC10 removeAction k10;
			
			if (_missions select 0 == 0) then
			{
				if (_ll0 == 0  and _missions select 9 == 0) then
				{
					k0 = NPC10 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[10,0],9];
				} else
				{
					k0 = NPC10 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],9];
				};
			};
			if (_missions select 0 == 1 and _missions select 1 == 0 and _missions select 9 == 0) then
			{
				if (_ll1 == 0) then
				{
					k1 = NPC10 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[10,1],8];
				} else
				{
					k1 = NPC10 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],8];
				};
			};
			if (_missions select 1 == 1 and _missions select 2 == 0 and _missions select 9 == 0) then
			{
				if (_ll2 == 0) then
				{
					k2 = NPC10 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[10,2],7];
				} else
				{
					k2 = NPC10 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 2 == 1 and _missions select 3 == 0 and _missions select 9 == 0) then
			{
				if (_ll3 == 0) then
				{
					k3 = NPC10 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[10,3],7];
				} else
				{
					k3 = NPC10 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 3 == 1 and _missions select 4 == 0 and _missions select 9 == 0) then
			{
				if (_ll4 == 0) then
				{
					k4 = NPC10 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[10,4],7];
				} else
				{
					k4 = NPC10 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , currently in progress</t>",{},[],7];
				};
			};
			if (_missions select 4 == 1 and _missions select 5 == 0 and _missions select 9 == 0) then
			{
				if (_ll5 == 0) then
				{
					k5 = NPC10 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[10,5],7];
				} else
				{
					k5 = NPC10 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
			};
			if (_missions select 5 == 1 and _missions select 6 == 0 and _missions select 9 == 0) then
			{
				if (_ll6 == 0) then
				{
					k6 = NPC10 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[10,6],7];
				} else
				{
					k6 = NPC10 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
			};
			if (_missions select 6 == 1 and _missions select 7 == 0 and _missions select 9 == 0) then
			{
				if (_ll7 == 0) then
				{
					k7 = NPC10 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[10,7],7];
				} else
				{
					k7 = NPC10 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
			};
			if (_missions select 7 == 1 and _missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll8 == 0) then
				{
					k8 = NPC10 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[10,8],7];
				} else
				{
					k8 = NPC10 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 7 == 1 and _missions select 8 == 0 and _missions select 9 == 0) then
			{
				if (_ll9 == 0) then
				{
					k9 = NPC10 addAction ["<t color='#7d7dFF'>Accept Job: </t>","callRun.sqf",[10,9],7];
				} else
				{
					k9 = NPC10 addAction ["<t color='#BDBDBD'>Cannot Accept Job: , already in progress</t>",{},[],7];
				};
				
			};
			if (_missions select 9 == 1) then
			{
				if (_ll10 == 0) then
				{
					k10 = NPC10 addAction ["<t color='#7d7dFF'>Regional Support</t>","callRun.sqf",[10,10],7];
				} else
				{
					k10 = NPC10 addAction ["<t color='#BDBDBD'>Cannot Accept Regional Support, already in progress</t>",{},[],7];
				};
				
			};
			
			
			
			
			
			player removeEventHandler ["SpeakToNPC10", 0];
			//hintSilent format["%1",_missions];
		};
		sleep 0.5;
		NPC10 setRandomLip true;
		sleep 2;
		NPC10 setRandomLip false;
	};
	
	
	
	/* 
	case 2:
	{z=1;};
	case 3:
	{z=1;};
	case 4:
	{z=1;}; */
};







sleep 0.5;

missionNamespace setVariable ["LoadSpeak",[_caller,_target]];

publicVariableServer "LoadSpeak";

/* 

//missionNamespace setVariable ["PlayerSave",[_caller,_databasename,_xPos,_yPos,_zPos,_arg1]];

//speak to landlord first task completion
_tskState = taskState FirstTask;

//	_tskState = _uid call BIS_fnc_taskState;

//hint _tskState;
if ((_tskState == "Created" or _tskState == "Assigned") and _whichNPC == 0) then
{
	["TaskSucceeded",["","Speak To The Landlord"]] call BIS_fnc_showNotification;
	FirstTask setTaskState "SUCCEEDED";
	//_nuffin = [_uid,"SUCCEEDED"] call BIS_fnc_taskSetState;
};
 */
