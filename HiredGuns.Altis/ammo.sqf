_NPCPos0 = getPosATL Landlord;
_NPCPos1 = getPosATL NPC1;
_NPCPos2 = getPosATL NPC2;
_NPCPos3 = getPosATL NPC3;
_NPCPos4 = getPosATL NPC4;
_NPCPos5 = getPosATL NPC5;
_NPCPos6 = getPosATL NPC6;
_NPCPos7 = getPosATL NPC7;
_NPCPos8 = getPosATL NPC8;
_NPCPos9 = getPosATL NPC9;
_NPCPos10 = getPosATL NPC10;
if (isServer) then {

	Landlord setPosATL _NPCPos0;
	NPC1 setPosATL _NPCPos1;
	NPC2 setPosATL _NPCPos2;
	NPC3 setPosATL _NPCPos3;
	NPC4 setPosATL _NPCPos4;
	NPC5 setPosATL _NPCPos5;
	NPC6 setPosATL _NPCPos6;
	NPC7 setPosATL _NPCPos7;
	NPC8 setPosATL _NPCPos8;
	NPC9 setPosATL _NPCPos9;
	NPC10 setPosATL _NPCPos10;


	if (daytime >=22) then
	{
		skipTime 9;
	};
	while {true} do {
		{
			//setups
			if not alive _x exitwith {};
			if isnull _x exitwith {};
			_x allowDamage false;
			
			
			//weapons
			_x addweaponcargoGlobal ["arifle_Mk20_MRCO_pointer_F",1];
			_x addweaponcargoGlobal ["LMG_Mk200_pointer_F",1];
			_x addweaponcargoGlobal ["hgun_ACPC2_F",1];
			_x addweaponcargoGlobal ["Binocular",1];
			_x addweaponcargoGlobal ["srifle_EBR_MRCO_pointer_F",1];
			//_x addweaponcargoGlobal ["launch_I_Titan_short_F",1];
			//_x addweaponcargoGlobal ["launch_I_Titan_F",1];
			//_x addweaponcargoGlobal ["launch_NLAW_F",1];
			_x addweaponcargoGlobal ["Laserdesignator",1];
			_x addweaponcargoGlobal ["Rangefinder",1];
			_x addweaponcargoGlobal ["arifle_SDAR_F",1];
			_x addweaponcargoGlobal ["hgun_ACPC2_snds_F",1];
			//_x addweaponcargoGlobal ["",1];
			
			//ammo
			_x addmagazinecargoGlobal ["30Rnd_556x45_Stanag",3];
			_x addmagazinecargoGlobal ["30Rnd_556x45_Stanag_Tracer_Yellow",3];
			_x addmagazinecargoGlobal ["10Rnd_762x51_Mag",3];
			_x addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
			_x addmagazinecargoGlobal ["HandGrenade",1];
			_x addmagazinecargoGlobal ["I_IR_Grenade",1];
			_x addmagazinecargoGlobal ["SmokeShell",1];
			_x addmagazinecargoGlobal ["SmokeShellGreen",1];
			_x addmagazinecargoGlobal ["SmokeShellOrange",1];
			_x addmagazinecargoGlobal ["SmokeShellPurple",1];
			_x addmagazinecargoGlobal ["Chemlight_green",1];
			_x addmagazinecargoGlobal ["SmokeShellRed",1];
			_x addmagazinecargoGlobal ["SmokeShellYellow",1];
			_x addmagazinecargoGlobal ["SmokeShellBlue",1];
			_x addmagazinecargoGlobal ["MiniGrenade",2];
			_x addmagazinecargoGlobal ["1Rnd_HE_Grenade_shell",2];
			_x addmagazinecargoGlobal ["200Rnd_65x39_cased_Box",1];
			//_x addmagazinecargoGlobal ["RPG32_F",1];
			//_x addmagazinecargoGlobal ["RPG32_HE_F",1];
			//_x addmagazinecargoGlobal ["NLAW_F",1];
			_x addmagazinecargoGlobal ["1Rnd_Smoke_Grenade_shell",1];
			_x addmagazinecargoGlobal ["1Rnd_SmokeRed_Grenade_shell",1];
			_x addmagazinecargoGlobal ["1Rnd_SmokeGreen_Grenade_shell",1];
			_x addmagazinecargoGlobal ["1Rnd_SmokeYellow_Grenade_shell",1];
			_x addmagazinecargoGlobal ["1Rnd_SmokePurple_Grenade_shell",1];
			_x addmagazinecargoGlobal ["1Rnd_SmokeBlue_Grenade_shell",1];
			_x addmagazinecargoGlobal ["1Rnd_SmokeOrange_Grenade_shell",1];
			_x addmagazinecargoGlobal ["20Rnd_556x45_UW_mag",1];
			_x addmagazinecargoGlobal ["Laserbatteries",1];
			//_x addmagazinecargoGlobal ["",1];
			
			//items
			_x additemcargoGlobal ["Medikit",1];
			_x additemcargoGlobal ["ItemGPS",1];
			_x additemcargoGlobal ["NVGoggles_INDEP",1];
			_x additemcargoGlobal ["MineDetector",1];
			_x additemcargoGlobal ["FirstAidKit",1];
			_x additemcargoGlobal ["ToolKit",1];
			_x additemcargoGlobal ["I_UavTerminal",1];
			_x additemcargoGlobal ["muzzle_snds_M",1];
			_x additemcargoGlobal ["muzzle_snds_H",1];
			_x additemcargoGlobal ["muzzle_snds_L",1];
			_x additemcargoGlobal ["muzzle_snds_B",1];
			_x additemcargoGlobal ["Medikoptic_Arcoit",2];
			_x additemcargoGlobal ["optic_NVS",1];
			//_x additemcargoGlobal ["",1];
			
			//backpack
			_x addBackpackCargoGlobal ["B_AssaultPack_blk",1];
			_x addBackpackCargoGlobal ["B_Carryall_mcamo",1];
			//_x addBackpackCargoGlobal ["",1];
			
		}forEach [box0,box1,box2,box3,box4,box5,box6,box7,box8,box9];
		sleep 180;
		
		
/* 		{
			if (count units _x == 0) then
			{
				deleteGroup _x;
			};
		}forEach allGroups;


		{
			if (!alive _x) then
			{
				deleteVehicle _x;
			};
		}forEach vehicles;

	 */	
		

		{
			//add heavy weapons
			_x allowDamage false;
			
			_x addweaponcargoGlobal ["launch_I_Titan_short_F",1];
			_x addweaponcargoGlobal ["launch_I_Titan_F",1];
			_x addweaponcargoGlobal ["launch_NLAW_F",1];
			_x addmagazinecargoGlobal ["RPG32_F",3];
			_x addmagazinecargoGlobal ["RPG32_HE_F",3];
			_x addmagazinecargoGlobal ["NLAW_F",3];
		}forEach [HWBox,HWBox_1,HWBox_2,HWBox_3,HWBox_4,HWBox_5,HWBox_6,HWBox_7,HWBox_8,HWBox_9,HWBox_10,HWBox_11,HWBox_12,HWBox_13,HWBox_14,HWBox_15,HWBox_16,HWBox_17,HWBox_18,HWBox_19,HWBox_20];

		{
			//add special weapons
			_x allowDamage false;
			
			_x addweaponcargoGlobal ["hgun_PDW2000_Holo_snds_F",1];
			_x addweaponcargoGlobal ["srifle_LRR_LRPS_F",1];
			_x addweaponcargoGlobal ["srifle_GM6_LRPS_F",1];
			_x addweaponcargoGlobal ["srifle_DMR_01_DMS_F",1];
			_x addweaponcargoGlobal ["arifle_MX_GL_Holo_pointer_snds_F",1];
			_x addweaponcargoGlobal ["srifle_LRR_SOS_F",1];
			_x addweaponcargoGlobal ["arifle_Mk20_GL_ACO_F",1];
			_x addweaponcargoGlobal ["hgun_Pistol_heavy_02_Yorris_F",1];
			_x addweaponcargoGlobal ["hgun_Pistol_heavy_01_snds_F",1];
			_x addmagazinecargoGlobal ["30Rnd_9x21_Mag",10];
			_x addmagazinecargoGlobal ["7Rnd_408_Mag",20];
			_x addmagazinecargoGlobal ["5Rnd_127x108_Mag",10];
			_x addmagazinecargoGlobal ["10Rnd_762x51_Mag",10];
			_x addmagazinecargoGlobal ["1Rnd_HE_Grenade_shell",10];
			_x addmagazinecargoGlobal ["30Rnd_556x45_Stanag",10];
			_x addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag",10];
			_x addmagazinecargoGlobal ["6Rnd_45ACP_Cylinder",10];
			_x addmagazinecargoGlobal ["11Rnd_45ACP_Mag",10];
			_x additemcargoGlobal ["NVGoggles_INDEP",1];
			_x additemcargoGlobal ["optic_Arco",1];
			_x additemcargoGlobal ["optic_DMS",1];
			_x additemcargoGlobal ["optic_LRPS",1];
			_x additemcargoGlobal ["muzzle_snds_M",1];
			_x additemcargoGlobal ["optic_MRCO",1];
		}forEach [SWBox,SWBox_1,SWBox_2,SWBox_3,SWBox_4,SWBox_5,SWBox_6,SWBox_7,SWBox_8,SWBox_9,SWBox_10,SWBox_11,SWBox_12,SWBox_13,SWBox_14,SWBox_15,SWBox_16,SWBox_17,SWBox_18,SWBox_19,SWBox_20];
		

		sleep 120;
		{
			//add special weapons
			_x allowDamage false;
			
			//add explosives
			_x addmagazinecargoGlobal ["DemoCharge_Remote_Mag",1];
			_x addmagazinecargoGlobal ["SatchelCharge_Remote_Mag",1];
			_x addmagazinecargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",1];
			_x addmagazinecargoGlobal ["APERSTripMine_Wire_Mag",1];
			_x addmagazinecargoGlobal ["SLAMDirectionalMine_Wire_Mag",1];
			_x addmagazinecargoGlobal ["APERSBoundingMine_Range_Mag",1];
			_x addmagazinecargoGlobal ["APERSMine_Range_Mag",1];
			_x addmagazinecargoGlobal ["ATMine_Range_Mag",1];
			
			
			//_x addBackpackCargoGlobal ["I_Parachute_02_F",1];
			_x addBackpackCargoGlobal ["B_Parachute",1];
			_x addItemCargoGlobal ["G_I_Diving",1];
			_x addItemCargoGlobal ["V_RebreatherIA",1];
			_x addItemCargoGlobal ["U_I_Wetsuit",1];
		}forEach [EWBox,EWBox_1,EWBox_2,EWBox_3,EWBox_4,EWBox_5,EWBox_6,EWBox_7,EWBox_8,EWBox_9,EWBox_10,EWBox_11,EWBox_12,EWBox_13,EWBox_14,EWBox_15,EWBox_16,EWBox_17,EWBox_18,EWBox_19,EWBox_20];
		
		
	};
	
	
	
	
	
	
	
	
	
	
	
	
	

};