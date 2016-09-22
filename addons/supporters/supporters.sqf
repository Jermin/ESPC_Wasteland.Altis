// Virtual Arsenal Supporter Customization - 
// by CRE4MPIE
// Inspired by fn_r3m3dy - thx xD
// PS: Arrays are a bitch


// Remember to change your createvehicle.txt to log for logic only and not kick ( 3 "^Logic")
// Add exception to antihack for BIS_fnc_arsenal,bis_fnc_setidentity in filterExecAttempt.sqf
// payload.sqf	if (!isNull (uiNamespace getVariable ["RscDisplayArsenal", displayNull]) && !_isAdmin) exitWith { _cheatFlag = "Virtual Arsenal" };



// Supporter Loadout  
_supportersEnabled = ["A3W_supportersEnabled"] call isConfigOn;
_supporterLevel = player getVariable ["supporter", 0];


switch (_supporterLevel) do {	
		case 1: // Supporter
			{			
			
				_crate = "Box_East_Ammo_F";		
				["Open",_crate] call BIS_fnc_arsenal;

				[_crate,[

				// Megazines
				"16Rnd_9x21_Mag",
				"30Rnd_9x21_Mag",
				"30Rnd_9x21_Mag_SMG_02",
				"6Rnd_GreenSignal_F",
				"6Rnd_RedSignal_F",

				"6Rnd_45ACP_Cylinder",
				"9Rnd_45ACP_Mag",
				"11Rnd_45ACP_Mag",
				"30Rnd_45ACP_MAG_SMG_01",
				"30Rnd_45ACP_Mag_SMG_01_tracer_green",
				"20Rnd_556x45_UW_mag",

				"30Rnd_545x39_Mag_F",
				"30Rnd_545x39_Mag_Tracer_F",
				"30Rnd_545x39_Mag_Tracer_Green_F",

				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Green",
				"30Rnd_556x45_Stanag_Tracer_Yellow",
				"30Rnd_556x45_Stanag_Tracer_Red",

				"30Rnd_580x42_Mag_F",
				"30Rnd_580x42_Mag_Tracer_F",

				"30Rnd_65x39_caseless_mag",
				"30Rnd_65x39_caseless_mag_Tracer",
				"30Rnd_65x39_caseless_green",
				"30Rnd_65x39_caseless_green_mag_Tracer",
				"20Rnd_650x39_Cased_Mag_F",

				"10Rnd_762x54_Mag",
				"20Rnd_762x51_Mag",
				"30Rnd_762x39_Mag_F",
				"30Rnd_762x39_Mag_Tracer_F",
				"30Rnd_762x39_Mag_Tracer_Green_F",
				"RPG7_F",
				"RPG32_F",
				"RPG32_HE_F",
				"SmokeShell",
				"MiniGrenade",
				"1Rnd_Smoke_Grenade_shell",
				"3Rnd_Smoke_Grenade_shell",
				"UGL_FlareWhite_F",
				"UGL_FlareGreen_F",
				"UGL_FlareYellow_F",
				"UGL_FlareRed_F",
				"UGL_FlareCIR_F",
				"3Rnd_UGL_FlareWhite_F",
				"3Rnd_UGL_FlareGreen_F",
				"3Rnd_UGL_FlareYellow_F",
				"3Rnd_UGL_FlareRed_F",
				"3Rnd_UGL_FlareCIR_F"
				
				],true] call BIS_fnc_addVirtualMagazineCargo;

				[_crate,[

				// Backpacks
				"B_AssaultPack_blk",
				"B_AssaultPack_rgr",
				"B_AssaultPack_mcamo",
				"B_AssaultPack_ocamo",
				"B_AssaultPack_tna_F",

				"B_FieldPack_blk",
				"B_FieldPack_cbr",
				"B_FieldPack_ocamo",
				"B_FieldPack_khk",
				"B_FieldPack_oli",
				"B_FieldPack_oucamo",
				"B_FieldPack_ghex_F",

				"B_Kitbag_cbr",
				"B_Kitbag_rgr",
				"B_Kitbag_mcamo",
				"B_Kitbag_sgg",

				"B_ViperLightHarness_blk_F",
				"B_ViperLightHarness_hex_F",
				"B_ViperLightHarness_ghex_F",
				"B_ViperLightHarness_khk_F",
				"B_ViperLightHarness_oli_F",

				"B_ViperHarness_blk_F",
				"B_ViperHarness_hex_F",
				"B_ViperHarness_ghex_F",
				"B_ViperHarness_khk_F",
				"B_ViperHarness_oli_F",

				"B_Carryall_cbr",
				"B_Carryall_ocamo",
				"B_Carryall_khk",
				"B_Carryall_mcamo",
				"B_Carryall_oli",
				"B_Carryall_oucamo",
				"B_Carryall_ghex_F",

				"B_Bergen_dgtl_F",
				"B_Bergen_hex_F",
				"B_Bergen_mcamo_F",
				"B_Bergen_tna_F"

				// Quad rotor
				/*"B_UAV_01_backpack_F",
				"O_UAV_01_backpack_F",
				"I_UAV_01_backpack_F",

				// Static Designator
				"B_Static_Designator_01_weapon_F",
				"O_Static_Designator_02_weapon_F"*/
				
				],true] call BIS_fnc_addVirtualBackpackCargo;
				
				[_crate,[

				// Handguns
				"hgun_Pistol_01_F",
				"hgun_Pistol_heavy_01_F",
				"hgun_ACPC2_F",
				"hgun_P07_F",
				"hgun_P07_khk_F",
				"hgun_Rook40_F",
				"hgun_Pistol_Signal_F",
				"hgun_Pistol_heavy_02_F",

				// Rifles
				/*"srifle_DMR_04_F",
				"srifle_DMR_04_Tan_F",
				"srifle_DMR_05_blk_F",
				"srifle_DMR_05_hex_F",
				"srifle_DMR_05_tan_f",
				"srifle_GM6_F",
				"srifle_GM6_camo_F",*/
				"arifle_Katiba_F",
				"arifle_Katiba_C_F",
				"arifle_Katiba_GL_F",
				/*"srifle_LRR_F",
				"srifle_LRR_camo_F",
				"srifle_DMR_02_F",
				"srifle_DMR_02_camo_F",
				"srifle_DMR_02_sniper_F",*/
				"srifle_DMR_03_F",
				"srifle_DMR_03_multicam_F",
				"srifle_DMR_03_khaki_F",
				"srifle_DMR_03_tan_F",
				"srifle_DMR_03_woodland_F",
				"srifle_DMR_06_camo_F",
				"srifle_DMR_06_olive_F",
				"srifle_EBR_F",
				"srifle_DMR_07_blk_F",
				"srifle_DMR_07_hex_F",
				"srifle_DMR_07_ghex_F",
				"arifle_SPAR_03_blk_F",
				"arifle_SPAR_03_khk_F",
				"arifle_SPAR_03_snd_F",
				"arifle_Mk20_plain_F",
				"arifle_Mk20_F",
				"arifle_Mk20_GL_plain_F",
				"arifle_Mk20_GL_F",
				//"LMG_Mk200_F",
				"arifle_Mk20C_plain_F",
				"arifle_Mk20C_F",
				"arifle_MX_GL_F",
				"arifle_MX_GL_Black_F",
				"arifle_MX_GL_khk_F",
				"arifle_MX_F",
				"arifle_MX_Black_F",
				"arifle_MX_khk_F",
				"arifle_SPAR_01_blk_F",
				"arifle_SPAR_01_khk_F",
				"arifle_SPAR_01_snd_F",
				"arifle_SPAR_01_GL_blk_F",
				"arifle_SPAR_01_GL_khk_F",
				"arifle_SPAR_01_GL_snd_F",
				"arifle_CTAR_blk_F",
				"arifle_CTAR_GL_blk_F",
				"arifle_AKS_F",
				"arifle_AKM_F",
				"arifle_AK12_F",
				"arifle_AK12_GL_F",
				//"arifle_MX_SW_F",
				//"arifle_MX_SW_Black_F",
				"arifle_MXC_F",
				"arifle_MXC_Black_F",
				"arifle_MXC_khk_F",
				"arifle_MXM_F",
				"arifle_MXM_Black_F",
				"arifle_MXM_khk_F",
				//"MMG_01_hex_F",
				//"MMG_01_tan_F",
				"hgun_PDW2000_F",
				"SMG_05_F",
				"srifle_DMR_01_F",
				"arifle_SDAR_F",
				//"MMG_02_black_F",
				//"MMG_02_camo_F",
				//"MMG_02_sand_F",
				"SMG_02_F",
				"arifle_TRG20_F",
				"arifle_TRG21_F",
				"arifle_TRG21_GL_F",
				"SMG_01_F",
				//"LMG_Zafir_F",

				// Launchers
				"launch_RPG32_F",
				"launch_RPG32_ghex_F",
				"launch_RPG7_F",

				// Random
				"Rangefinder",
				//"Laserdesignator",
				//"Laserdesignator_02",
				//"Laserdesignator_03",
				"Binocular"

				],true] call BIS_fnc_addVirtualWeaponCargo;
									
				[_crate,[
				// Accessories
				/*
				"muzzle_snds_L",
				"muzzle_snds_acp",
				"muzzle_snds_M",
				"muzzle_snds_H",
				"muzzle_snds_H_MG",
				"muzzle_snds_B",
				"muzzle_snds_338_black",
				"muzzle_snds_338_green",
				"muzzle_snds_338_sand",
				"muzzle_snds_93mmg",
				"muzzle_snds_93mmg_tan",
				"bipod_01_F_blk",
				"bipod_02_F_blk",
				"bipod_03_F_blk",
				"bipod_01_F_mtp",
				"bipod_02_F_hex",
				"bipod_03_F_oli",
				"bipod_01_F_snd",
				"bipod_02_F_tan",
				*/
				"acc_flashlight",
				"acc_pointer_IR",
				"optic_Holosight",
				"optic_MRD",
				"optic_ERCO_blk_F",
				"optic_ERCO_khk_F",
				"optic_ERCO_snd_F",
				"optic_Hamr",
				"optic_Hamr_khk_F",
				"optic_aco_smg",
				"optic_Yorris",
				"optic_Holosight_smg",
				"optic_Aco",
				"optic_Aco_grn",
				"optic_MRCO",
				"optic_Arco",
				"optic_Arco_blk_F",
				"optic_Arco_ghex_F",
				"optic_DMS",
				"optic_DMS_ghex_F",
				"optic_SOS",
				"optic_SOS_khk_F",
				/*"optic_AMS",
				"optic_AMS_khk",
				"optic_AMS_snd",
				"optic_KHS_blk",
				"optic_KHS_hex",
				"optic_KHS_old",
				"optic_KHS_tan",
				"optic_LRPS",
				"optic_NVS",*/

				// Vests
				"V_RebreatherB",
				"V_RebreatherIR",
				"V_RebreatherIA",
				"V_PlateCarrier1_rgr",
				"V_PlateCarrier1_blk",
				"V_PlateCarrier1_tna_F",
				"V_PlateCarrier2_rgr",
				"V_PlateCarrier2_blk",
				"V_PlateCarrier2_tna_F",
				"V_PlateCarrier3_rgr",
				"V_PlateCarrierGL_rgr",
				"V_PlateCarrierGL_blk",
				"V_PlateCarrierGL_mtp",
				"V_PlateCarrierGL_tna_F",
				"V_PlateCarrierIA1_dgtl",
				"V_PlateCarrierIA2_dgtl",
				"V_PlateCarrierIAGL_dgtl",
				"V_PlateCarrierIAGL_oli",
				"V_HarnessO_brn",
				"V_HarnessO_gry",
				"V_HarnessO_ghex_F",
				"V_HarnessOGL_brn",
				"V_HarnessOGL_gry",
				"V_HarnessOGL_ghex_F"
				"V_HarnessOSpec_brn",
				"V_HarnessOSpec_gry",
				"V_BandollierB_blk",
				"V_BandollierB_cbr",
				"V_BandollierB_rgr",
				"V_BandollierB_khk",
				"V_BandollierB_oli",
				"V_BandollierB_ghex_F",
				"V_Chestrig_khk",
				"V_Chestrig_rgr",
				"V_Chestrig_blk",
				"V_Chestrig_oli",
				"V_TacChestrig_grn_F",
				"V_TacChestrig_oli_F",
				"V_TacChestrig_cbr_F",
				"V_TacVest_blk",
				"V_TacVest_brn",
				"V_TacVest_camo",
				"V_TacVest_khk",
				"V_TacVest_oli",
				"V_TacVest_blk_POLICE",
				"V_I_G_resistanceLeader_F",
				"V_TacVest_gen_F",
				"V_TacVestIR_blk",
				"V_PlateCarrierL_CTRG",
				"V_PlateCarrierH_CTRG",
				"V_PlateCarrierSpec_rgr",
				"V_PlateCarrierSpec_blk",
				"V_PlateCarrierSpec_mtp",
				"V_PlateCarrierSpec_tna_F",
				"V_Press_F",

				// Items
				"Medikit",
				"ToolKit",
				"MineDetector",
				// "Rangefinder",
				"FirstAidKit",
				// "Laserdesignator",
				"NVGoggles_OPFOR",
				"NVGoggles_INDEP",
				"NVGoggles_tna_F",
				"O_NVGoggles_hex_F",
				"O_NVGoggles_ghex_F",
				"O_NVGoggles_urb_F",
				"Chemlight_blue",
				"Chemlight_green",
				"Chemlight_yellow",
				"Chemlight_red",
				"ItemGPS",
				/*"I_UavTerminal",
				"O_UavTerminal",
				"B_UavTerminal",*/
				"ItemMap",
				"ItemCompass",
				"ItemWatch",
				"NVGoggles",
				"ItemRadio",

				// Goggles
				"G_Aviator",
				"G_Diving",
				"G_Balaclava_blk",
				"G_Balaclava_oli",
				"G_Balaclava_combat",
				"G_Balaclava_lowprofile",
				"G_Balaclava_TI_blk_F",
				"G_Balaclava_TI_G_blk_F",
				"G_Balaclava_TI_tna_F",
				"G_Balaclava_TI_G_tna_F",
				"G_Bandanna_aviator",
				"G_Bandanna_beast",
				"G_Bandanna_blk",
				"G_Bandanna_khk",
				"G_Bandanna_oli",
				"G_Bandanna_shades",
				"G_Bandanna_sport",
				"G_Bandanna_tan",
				"G_Combat",
				"G_Combat_Goggles_tna_F",
				"G_Goggles_VR",
				"G_Lady_Blue",
				"G_Lady_Dark",
				"G_Lady_Mirror",
				"G_Lady_Red",
				"G_Lowprofile",
				"G_Shades_Black",
				"G_Shades_Blue",
				"G_Shades_Green",
				"G_Shades_Red",
				"G_Spectacles",
				"G_Spectacles_Tinted",
				"G_Sport_Blackred",
				"G_Sport_BlackWhite",
				"G_Sport_Blackyellow",
				"G_Sport_Checkered",
				"G_Sport_Greenblack",
				"G_Sport_Red",
				"G_Squares",
				"G_Squares_Tinted",
				"G_Tactical_Black",
				"G_Tactical_Clear",

				// All Clothing
				"U_I_OfficerUniform",
				"U_O_T_Officer_F",
				"U_I_C_Soldier_Camo_F",
				"U_B_survival_uniform",
				"U_OrestesBody",
				"U_I_G_resistanceLeader_F",
				"U_B_GhillieSuit",
				"U_O_GhillieSuit",
				"U_I_GhillieSuit",
				"U_B_T_Sniper_F",
				"U_O_T_Sniper_F",
				"U_B_FullGhillie_ard",
				"U_O_FullGhillie_ard",
				"U_I_FullGhillie_ard",
				"U_B_FullGhillie_lsh",
				"U_O_FullGhillie_lsh",
				"U_I_FullGhillie_lsh",
				"U_B_FullGhillie_sard",
				"U_O_FullGhillie_sard",
				"U_I_FullGhillie_sard",
				"U_B_T_FullGhillie_tna_F",
				"U_O_T_FullGhillie_tna_F",
				"U_B_Wetsuit",
				"U_O_Wetsuit",
				"U_I_Wetsuit",
				"U_B_CombatUniform_mcam",
				"U_O_CombatUniform_ocamo",
				"U_I_CombatUniform",
				"U_B_CombatUniform_mcam_tshirt",
				"U_B_CombatUniform_mcam_vest",
				"U_B_T_Soldier_SL_F"
				"U_B_T_Soldier_F",
				"U_B_T_Soldier_AR_F",
				"U_B_SpecopsUniform_sgg",
				"U_B_CTRG_1",
				"U_B_CTRG_2",
				"U_B_CTRG_3",
				"U_B_CTRG_Soldier_urb_1_F",
				"U_B_CTRG_Soldier_urb_2_F",
				"U_B_CTRG_Soldier_urb_3_F",
				"U_B_CTRG_Soldier_F",
				"U_B_CTRG_Soldier_2_F",
				"U_B_CTRG_Soldier_3_F",
				"U_O_SpecopsUniform_ocamo",
				"U_O_SpecopsUniform_blk",
				"U_O_T_Soldier_F",
				"U_O_CombatUniform_oucamo",
				"U_I_CombatUniform_shortsleeve",
				"U_I_CombatUniform_tshirt",
				"U_O_OfficerUniform_ocamo",
				"U_I_OfficerUniform",
				"U_B_PilotCoveralls",
				"U_O_PilotCoveralls",
				"U_I_pilotCoveralls",
				"U_B_HeliPilotCoveralls",
				"U_I_HeliPilotCoveralls",
				"U_BG_Guerilla1_1",
				"U_BG_Guerilla2_1",
				"U_BG_Guerilla2_2",
				"U_BG_Guerilla2_3",
				"U_BG_Guerilla3_1",
				"U_BG_Guerilla3_2",
				"U_BG_leader",
				"U_OG_Guerilla1_1",
				"U_OG_Guerilla2_1",
				"U_OG_Guerilla2_2",
				"U_OG_Guerilla2_3",
				"U_OG_Guerilla3_1",
				"U_OG_Guerilla3_2",
				"U_OG_leader",
				"U_IG_Guerilla1_1",
				"U_IG_Guerilla2_1",
				"U_IG_Guerilla2_2",
				"U_IG_Guerilla2_3",
				"U_IG_Guerilla3_1",
				"U_IG_Guerilla3_2",
				"U_IG_leader",
				"U_Competitor",
				"U_Rangemaster",
				"U_B_Protagonist_VR",
				"U_O_Protagonist_VR",
				"U_I_Protagonist_VR",
				"U_C_WorkerCoveralls",
				"U_C_Poor_1",
				"U_C_Poloshirt_redwhite",
				"U_C_Poloshirt_salmon",
				"U_C_Poloshirt_tricolour",
				"U_C_Poloshirt_blue",
				"U_C_Poloshirt_burgundy",
				"U_C_Poloshirt_stripped",
				"U_C_Driver_1_black",
				"U_C_Driver_1_blue",
				"U_C_Driver_1_green",
				"U_C_Driver_1_yellow",
				"U_C_Driver_1_orange",
				"U_C_Driver_1_red",
				"U_C_Driver_1_white",
				"U_C_Driver_1",
				"U_C_Driver_2",
				"U_C_Driver_3",
				"U_C_Driver_4",

				// All Headgear
				"H_Helmet_Kerry",
				"H_HelmetB",
				"H_HelmetB_camo",
				"H_HelmetB_light",
				"H_HelmetB_Light_tna_F",
				"H_HelmetB_paint",
				"H_HelmetB_grass",
				"H_HelmetB_snakeskin",
				"H_HelmetB_desert",
				"H_HelmetB_black",
				"H_HelmetB_sand",
				"H_HelmetB_Enh_tna_F",
				"H_HelmetB_TI_tna_F",
				"H_HelmetB_tna_F",
				"H_HelmetSpecB",
				"H_HelmetSpecB_blk",
				"H_HelmetSpecB_paint1",
				"H_HelmetSpecB_paint2",
				"H_HelmetSpecB_snakeskin",
				"H_HelmetB_plain_blk",
				"H_HelmetB_plain_mcamo",
				"H_HelmetO_ocamo",
				"H_HelmetO_oucamo",
				"H_HelmetO_ghex_F",
				"H_HelmetLeaderO_ocamo",
				"H_HelmetLeaderO_oucamo",
				"H_HelmetLeaderO_ghex_F",
				"H_HelmetSpecO_blk",
				"H_CrewHelmetHeli_B",
				"H_CrewHelmetHeli_O",
				"H_CrewHelmetHeli_I",
				"H_PilotHelmetHeli_B",
				"H_PilotHelmetHeli_O",
				"H_PilotHelmetHeli_I",
				"H_HelmetCrew_B",
				"H_HelmetCrew_O",
				"H_HelmetCrew_I",
				"H_HelmetCrew_O_ghex_F",
				"H_PilotHelmetFighter_B",
				"H_PilotHelmetFighter_O",
				"H_PilotHelmetFighter_I",
				"H_Helmet_Skate",
				"H_MilCap_blue",
				"H_MilCap_gry",
				"H_MilCap_oucamo",
				"H_MilCap_rucamo",
				"H_MilCap_mcamo",
				"H_MilCap_ocamo",
				"H_MilCap_dgtl",
				"H_MilCap_ghex_F",
				"H_MilCap_gen_F",
				"H_MilCap_tna_F",
				"H_Cap_headphones",
				"H_Bandanna_cbr",
				"H_Bandanna_camo",
				"H_Bandanna_gry",
				"H_Bandanna_khk",
				"H_Bandanna_mcamo",
				"H_Bandanna_sgg",
				"H_Bandanna_surfer",
				"H_Watchcap_blk",
				"H_Watchcap_sgg",
				"H_Watchcap_cbr",
				"H_Watchcap_khk",
				"H_Watchcap_camo",
				"H_Beret_blk",
				"H_Beret_Colonel",
				"H_Beret_02",
				"H_Beret_gen_F",
				"H_Booniehat_khk_hs",
				"H_Booniehat_khk",
				"H_Booniehat_tan",
				"H_Booniehat_mcamo",
				"H_Booniehat_oli",
				"H_Booniehat_dgtl",
				"H_Booniehat_tna_F",
				"H_Hat_blue",
				"H_Hat_brown",
				"H_Hat_camo",
				"H_Hat_checker",
				"H_Hat_grey",
				"H_Hat_tan",
				"H_Cap_blk",
				"H_Cap_blu",
				"H_Cap_grn",
				"H_Cap_oli",
				"H_Cap_oli_hs",
				"H_Cap_red",
				"H_Cap_tan",
				"H_Cap_grn_BI",
				"H_Cap_blk_CMMG",
				"H_Cap_blk_ION",
				"H_Cap_blk_Raven",
				"H_Cap_khaki_specops_UK",
				"H_Cap_tan_specops_US",
				"H_Cap_brn_SPECOPS",
				"H_Cap_police",
				"H_Cap_press",
				"H_Cap_surfer",
				"H_Cap_usblack",
				"H_ShemagOpen_khk",
				"H_ShemagOpen_tan",
				"H_Shemag_khk",
				"H_Shemag_olive",
				"H_Shemag_olive_hs",
				"H_Shemag_tan",
				"H_RacingHelmet_1_black_F",
				"H_RacingHelmet_1_blue_F",
				"H_RacingHelmet_1_green_F",
				"H_RacingHelmet_1_yellow_F",
				"H_RacingHelmet_1_orange_F",
				"H_RacingHelmet_1_red_F",
				"H_RacingHelmet_1_white_F",
				"H_RacingHelmet_1_F",
				"H_RacingHelmet_2_F",
				"H_RacingHelmet_3_F",
				"H_RacingHelmet_4_F",
				"H_HelmetSpecO_ocamo",
				"H_HelmetIA",
				"H_HelmetIA_net",
				"H_HelmetIA_camo",
				"H_BandMask_blk",
				"H_BandMask_demon",
				"H_BandMask_khk",
				"H_BandMask_reaper"	
					  
				],true] call BIS_fnc_addVirtualItemCargo;

				systemChat format["Welcome %1, Enjoy your Supporter Loadout!", name player];
		};	
};

waitUntil {isNull (uiNamespace getVariable ["RscDisplayArsenal", displayNull])};
	


	