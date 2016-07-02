// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

// empty name = name is extracted from class config

pistolArray = compileFinal str
[
	// Handguns
	["P07 Pistol", "hgun_P07_F", 50],
	["Rook-40 Pistol", "hgun_Rook40_F", 50],
	["ACP-C2 Pistol", "hgun_ACPC2_F", 75],
	["Zubr Revolver", "hgun_Pistol_heavy_02_F", 200],
	["4-Five Pistol", "hgun_Pistol_heavy_01_F", 300],
	["Starter Pistol", "hgun_Pistol_Signal_F", 500]
];

smgArray = compileFinal str
[
	["PDW2000 SMG", "hgun_PDW2000_F", 100],
	["Sting SMG", "SMG_02_F", 125],
	["Vermin SMG", "SMG_01_F", 125]
];

rifleArray = compileFinal str
[
	// Underwater Gun
	["SDAR Underwater Rifle", "arifle_SDAR_F", 100],

	// Assault Rifles
	["Mk20 Carbine", "arifle_Mk20C_plain_F", 150],
	["Mk20 Carbine (Camo)", "arifle_Mk20C_F", 175],
	["Mk20 Rifle", "arifle_Mk20_plain_F", 200],
	["Mk20 Rifle (Camo)", "arifle_Mk20_F", 200],
	["Mk20 EGLM Rifle", "arifle_Mk20_GL_plain_F", 250],
	["Mk20 EGLM Rifle (Camo)", "arifle_Mk20_GL_F", 250],

	["TRG-20 Carbine", "arifle_TRG20_F", 150],
	["TRG-21 Rifle ", "arifle_TRG21_F", 200],
	["TRG-21 EGLM Rifle", "arifle_TRG21_GL_F", 250],

	["Katiba Carbine", "arifle_Katiba_C_F", 150],
	["Katiba Rifle", "arifle_Katiba_F", 200],
	["Katiba GL Rifle", "arifle_Katiba_GL_F", 250],

	["MX Carbine", "arifle_MXC_F", 150],
	["MX Carbine (Black)", "arifle_MXC_Black_F", 300],
	["MX Rifle", "arifle_MX_F", 200],
	["MX Rifle (Black)", "arifle_MX_Black_F", 400],
	["MX 3GL Rifle", "arifle_MX_GL_F", 250],
	["MX 3GL Rifle (Black)", "arifle_MX_GL_Black_F", 500],

	// Marksman Rifles
	["MXM Rifle", "arifle_MXM_F", 300],
	["MXM Rifle (Black)", "arifle_MXM_Black_F", 500],
	["DMR Rifle", "srifle_DMR_01_F", 750],
	["Mk18 ABR Rifle", "srifle_EBR_F", 750],

	// DLC
	["Mk14 Rifle (Camo) [DLC]", "srifle_DMR_06_camo_F", 1000],
	["Mk14 Rifle (Olive) [DLC]", "srifle_DMR_06_olive_F", 1000],
	["Mk-I EMR Rifle [DLC]", "srifle_DMR_03_F", 1200],
	["Mk-I EMR Rifle (Camo) [DLC]", "srifle_DMR_03_multicam_F", 1200],
	["Mk-I EMR Rifle (Khaki) [DLC]", "srifle_DMR_03_khaki_F", 1200],
	["Mk-I EMR Rifle (Sand) [DLC]", "srifle_DMR_03_tan_F", 1200],
	["Mk-I EMR Rifle (Woodland) [DLC]", "srifle_DMR_03_woodland_F", 1200],
	["MAR-10 Rifle [DLC]", "srifle_DMR_02_F", 1400],
	["MAR-10 Rifle (Camo) [DLC]", "srifle_DMR_02_camo_F", 1600],
	["MAR-10 Rifle (Sand) [DLC]", "srifle_DMR_02_sniper_F", 1600],
	["Cyrus Rifle [DLC]", "srifle_DMR_05_blk_F", 2000],
	["Cyrus Rifle (Hex) [DLC]", "srifle_DMR_05_hex_F", 2200],
	["Cyrus Rifle (Tan) [DLC]", "srifle_DMR_05_tan_f", 2200],

	// Sniper Rifles
	["M320 LRR Sniper", "srifle_LRR_LRPS_F", 1500],
	["M320 LRR Sniper (Camo)", "srifle_LRR_camo_LRPS_F", 2000],
	["GM6 Lynx Sniper", "srifle_GM6_LRPS_F", 2500],
	["GM6 Lynx Sniper (Camo)", "srifle_GM6_camo_LRPS_F", 3000],
	["ASP-1 Kir Rifle [DLC]", "srifle_DMR_04_F", 800],
	["ASP-1 Kir Rifle (Tan) [DLC]", "srifle_DMR_04_Tan_F", 1000]
];

lmgArray = compileFinal str
[
	["MX SW LMG", "arifle_MX_SW_F", 300],
	["MX SW LMG (Black)", "arifle_MX_SW_Black_F", 325],
	["Mk200 LMG", "LMG_Mk200_F", 400],
	["Zafir LMG", "LMG_Zafir_F", 500],
	["SPMG MMG (Sand)", "MMG_02_sand_F", 750],
	["SPMG MMG (MTP)", "MMG_02_camo_F", 750],
	["SPMG MMG (Black)", "MMG_02_black_F", 750],
	["Navid MMG (Tan)", "MMG_01_tan_F", 1000],
	["Navid MMG (Hex)", "MMG_01_hex_F", 1000]
];

launcherArray = compileFinal str
[
	["RPG-42 Alamut", "launch_RPG32_F", 600],
	["PCML", "launch_NLAW_F", 1500],
	["Titan MPRL Compact (Sand)", "launch_Titan_short_F", 3000],
	["Titan MPRL Compact (Coyote)", "launch_O_Titan_short_F", 3000],
	["Titan MPRL Compact (Olive)", "launch_I_Titan_short_F", 3000],
	["Titan MPRL AA (Sand)", "launch_Titan_F", 3500],
	["Titan MPRL AA (Hex)", "launch_O_Titan_F", 3500],
	["Titan MPRL AA (Digi)", "launch_I_Titan_F", 3500]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str
[
	//["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 2500],
	["Static Titan AT 4Rnd", "B_static_AT_F", 10000], // Static launchers only have 4 ammo, hence the lower price
	["Static Titan AT 4Rnd", "O_static_AT_F", 10000],
	["Static Titan AT 4Rnd", "I_static_AT_F", 10000],
	["Static Titan AA 4Rnd", "B_static_AA_F", 12000],
	["Static Titan AA 4Rnd", "O_static_AA_F", 12000],
	["Static Titan AA 4Rnd", "I_static_AA_F", 12000],
	["Mk30 HMG .50 Low tripod", "B_HMG_01_F", 5000],
	["Mk30 HMG .50 Low tripod", "O_HMG_01_F", 5000],
	["Mk30 HMG .50 Low tripod", "I_HMG_01_F", 5000],
	["Mk30A HMG .50 Sentry", "B_HMG_01_A_F", 8000], // "A" = Autonomous = Overpowered
	["Mk30A HMG .50 Sentry", "O_HMG_01_A_F", 8000],
	["Mk30A HMG .50 Sentry", "I_HMG_01_A_F", 8000],
	["Mk30 HMG .50 High tripod", "B_HMG_01_high_F", 6000],
	["Mk30 HMG .50 High tripod", "O_HMG_01_high_F", 6000],
	["Mk30 HMG .50 High tripod", "I_HMG_01_high_F", 6000],
	["Mk32 GMG 20mm Low tripod", "B_GMG_01_F", 8000],
	["Mk32 GMG 20mm Low tripod", "O_GMG_01_F", 8000],
	["Mk32 GMG 20mm Low tripod", "I_GMG_01_F", 8000],
	["Mk32A GMG 20mm Sentry", "B_GMG_01_A_F", 12000],
	["Mk32A GMG 20mm Sentry", "O_GMG_01_A_F", 12000],
	["Mk32A GMG 20mm Sentry", "I_GMG_01_A_F", 12000],
	["Mk32 GMG 20mm High tripod", "B_GMG_01_high_F", 10000],
	["Mk32 GMG 20mm High tripod", "O_GMG_01_high_F", 10000],
	["Mk32 GMG 20mm High tripod", "I_GMG_01_high_F", 10000],
	["Mk6 Mortar", "B_Mortar_01_F", 17500],
	["Mk6 Mortar", "O_Mortar_01_F", 17500],
	["Mk6 Mortar", "I_Mortar_01_F", 17500]
];

throwputArray = compileFinal str
[
	["RGN Mini Grenade", "MiniGrenade", 50],
	["RGO Frag Grenade", "HandGrenade", 100],
	["Toxic Gas Grenade", "SmokeShellYellow", 200],
	["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 200],
	["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 250],
	["APERS Mine", "APERSMine_Range_Mag", 300],
	["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 350],
	["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 350],
	["AT Mine", "ATMine_Range_Mag", 400],
	["Explosive Charge", "DemoCharge_Remote_Mag", 450],
	["Explosive Satchel", "SatchelCharge_Remote_Mag", 500],
	["Smoke Grenade (White)", "SmokeShell", 50],
	["Smoke Grenade (Purple)", "SmokeShellPurple", 50],
	["Smoke Grenade (Blue)", "SmokeShellBlue", 50],
	["Smoke Grenade (Green)", "SmokeShellGreen", 50],
	["Smoke Grenade (Orange)", "SmokeShellOrange", 50],
	["Smoke Grenade (Red)", "SmokeShellRed", 50]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	["9mm 16Rnd Mag", "16Rnd_9x21_Mag", 10],
	["9mm 30Rnd Mag", "30Rnd_9x21_Mag", 15],
	["10mm Flare Slug (Green)", "6Rnd_GreenSignal_F", 10],
	["10mm Flare Slug (Red)", "6Rnd_RedSignal_F", 10],
	[".45 ACP 6Rnd Cylinder", "6Rnd_45ACP_Cylinder", 5],
	[".45 ACP 9Rnd Mag", "9Rnd_45ACP_Mag", 10],
	[".45 ACP 11Rnd Mag", "11Rnd_45ACP_Mag", 15],
	[".45 ACP 30Rnd Vermin Mag", "30Rnd_45ACP_MAG_SMG_01", 20],
	[".45 ACP 30Rnd Tracer (Green) Mag", "30Rnd_45ACP_Mag_SMG_01_tracer_green", 15],
	["5.56mm 20Rnd Underwater Mag", "20Rnd_556x45_UW_mag", 10],
	["5.56mm 30Rnd STANAG Mag", "30Rnd_556x45_Stanag", 20],
	["5.56mm 30Rnd Tracer (Green) Mag", "30Rnd_556x45_Stanag_Tracer_Green", 15],
	["5.56mm 30Rnd Tracer (Yellow) Mag", "30Rnd_556x45_Stanag_Tracer_Yellow", 15],
	["5.56mm 30Rnd Tracer (Red) Mag", "30Rnd_556x45_Stanag_Tracer_Red", 15],
	["6.5mm 30Rnd STANAG Mag", "30Rnd_65x39_caseless_mag", 20],
	["6.5mm 30Rnd Tracer (Red) Mag", "30Rnd_65x39_caseless_mag_Tracer", 15],
	["6.5mm 30Rnd Caseless Mag", "30Rnd_65x39_caseless_green", 20],
	["6.5mm 30Rnd Tracer (Green) Mag", "30Rnd_65x39_caseless_green_mag_Tracer", 15],
	["6.5mm 100Rnd Belt Case", "100Rnd_65x39_caseless_mag", 75],
	["6.5mm 100Rnd Tracer (Red) Belt Case", "100Rnd_65x39_caseless_mag_Tracer", 50],
	["6.5mm 200Rnd Belt Case", "200Rnd_65x39_cased_Box", 150],
	["6.5mm 200Rnd Tracer (Yellow) Belt Case", "200Rnd_65x39_cased_Box_Tracer", 125],
	//["7.62mm 10Rnd Mag", "10Rnd_762x51_Mag", 15],
	["7.62mm 10Rnd Mag", "10Rnd_762x54_Mag", 15],
	["7.62mm 20Rnd Mag", "20Rnd_762x51_Mag", 25],
	//["7.62mm 150Rnd Box", "150Rnd_762x51_Box", 150],
	//["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x51_Box_Tracer", 125],
	["7.62mm 150Rnd Box", "150Rnd_762x54_Box", 150],
	["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x54_Box_Tracer", 125],
	[".338 LM 10Rnd Mag", "10Rnd_338_Mag", 50],
	[".338 NM 130Rnd Belt", "130Rnd_338_Mag", 150],
	["9.3mm 10Rnd Mag", "10Rnd_93x64_DMR_05_Mag", 50],
	["9.3mm 150Rnd Belt", "150Rnd_93x64_Mag", 150],
	[".408 7Rnd Cheetah Mag", "7Rnd_408_Mag", 50],
	["12.7mm 5Rnd Mag", "5Rnd_127x108_Mag", 50],	
	["12.7mm 5Rnd Armor-Piercing Mag", "5Rnd_127x108_APDS_Mag", 60],
	["12.7mm 10Rnd Subsonic Mag", "10Rnd_127x54_Mag", 75],
	["RPG-42 Anti-Tank Rocket", "RPG32_F", 250],              // Direct damage: high      | Splash damage: low    | Guidance: none
	["RPG-42 High-Explosive Rocket", "RPG32_HE_F", 250],      // Direct damage: medium    | Splash damage: medium | Guidance: none
	["PCML Anti-Tank Missile", "NLAW_F", 750],                // Direct damage: very high | Splash damage: low    | Guidance: laser, ground vehicles
	["Titan Anti-Tank Missile", "Titan_AT", 1500],             // Direct damage: high      | Splash damage: low    | Guidance: mouse, laser, ground vehicles
	["Titan Anti-Personnel Missile", "Titan_AP", 1000],        // Direct damage: low       | Splash damage: high   | Guidance: mouse, laser
	["Titan Anti-Air Missile", "Titan_AA", 1000],              // Direct damage: low       | Splash damage: medium | Guidance: aircraft
	["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 125],
	["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 250],
	["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 50],
	["40mm Smoke Round (Purple)", "1Rnd_SmokePurple_Grenade_shell", 50],
	["40mm Smoke Round (Blue)", "1Rnd_SmokeBlue_Grenade_shell", 50],
	["40mm Smoke Round (Green)", "1Rnd_SmokeGreen_Grenade_shell", 50],
	["40mm Smoke Round (Yellow)", "1Rnd_SmokeYellow_Grenade_shell", 50],
	["40mm Smoke Round (Orange)", "1Rnd_SmokeOrange_Grenade_shell", 50],
	["40mm Smoke Round (Red)", "1Rnd_SmokeRed_Grenade_shell", 50],
	["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Purple)", "3Rnd_SmokePurple_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Blue)", "3Rnd_SmokeBlue_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Green)", "3Rnd_SmokeGreen_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Yellow)", "3Rnd_SmokeYellow_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Orange)", "3Rnd_SmokeOrange_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Red)", "3Rnd_SmokeRed_Grenade_shell", 100],
	["40mm Flare Round (White)", "UGL_FlareWhite_F", 25],
	["40mm Flare Round (Green)", "UGL_FlareGreen_F", 25],
	["40mm Flare Round (Yellow)", "UGL_FlareYellow_F", 25],
	["40mm Flare Round (Red)", "UGL_FlareRed_F", 25],
	["40mm Flare Round (IR)", "UGL_FlareCIR_F", 25],
	["40mm 3Rnd Flares (White)", "3Rnd_UGL_FlareWhite_F", 50],
	["40mm 3Rnd Flares (Green)", "3Rnd_UGL_FlareGreen_F", 50],
	["40mm 3Rnd Flares (Yellow)", "3Rnd_UGL_FlareYellow_F", 50],
	["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 50],
	["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 50]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	["Suppressor 9mm", "muzzle_snds_L", 50, "item"],
	["Suppressor .45 ACP", "muzzle_snds_acp", 75, "item"],
	["Suppressor 5.56mm", "muzzle_snds_M", 100, "item"],
	["Suppressor 6.5mm", "muzzle_snds_H", 100, "item"],
	["Suppressor 6.5mm LMG", "muzzle_snds_H_MG", 125, "item"],
	["Suppressor 7.62mm", "muzzle_snds_B", 125, "item"],
	["Suppressor .338", "muzzle_snds_338_black", 150, "item"],
	["Suppressor .338 (Green)", "muzzle_snds_338_green", 150, "item"],
	["Suppressor .338 (Sand)", "muzzle_snds_338_sand", 175, "item"],
	["Suppressor 9.3mm", "muzzle_snds_93mmg", 175, "item"],
	["Suppressor 9.3mm (Tan)", "muzzle_snds_93mmg_tan", 175, "item"],
	["Bipod (NATO)", "bipod_01_F_blk", 100, "item", "noDLC"],
	["Bipod (CSAT)", "bipod_02_F_blk", 100, "item", "noDLC"],
	["Bipod (AAF)", "bipod_03_F_blk", 100, "item", "noDLC"],
	["Bipod (MTP)", "bipod_01_F_mtp", 100, "item", "noDLC"],
	["Bipod (Hex)", "bipod_02_F_hex", 100, "item", "noDLC"],
	["Bipod (Olive)", "bipod_03_F_oli", 100, "item", "noDLC"],
	["Bipod (Sand)", "bipod_01_F_snd", 100, "item", "noDLC"],
	["Bipod (Tan)", "bipod_02_F_tan", 100, "item", "noDLC"], 
	["Flashlight", "acc_flashlight", 25, "item"],
	["IR Laser Pointer", "acc_pointer_IR", 25, "item"],
	["Yorris Sight (Zubr Revolver)", "optic_Yorris", 50, "item"],
	["MRD Sight (4-Five Pistol)", "optic_MRD", 50, "item"],
	["ACO SMG (Red)", "optic_aco_smg", 50, "item"],
	["ACO SMG (Green)", "optic_ACO_grn_smg", 50, "item"],
	["ACO (Red)", "optic_Aco", 75, "item"],
	["ACO (Green)", "optic_Aco_grn", 75, "item"],
	["Holosight SMG", "optic_Holosight_smg", 50, "item"],
	["Holosight", "optic_Holosight", 75, "item"],
	["MRCO", "optic_MRCO", 100, "item"],
	["ARCO", "optic_Arco", 125, "item"],
	["RCO", "optic_Hamr", 150, "item"],
	["MOS", "optic_SOS", 150, "item"],
	["DMS", "optic_DMS", 175, "item"],
	["Kahlia (Sightless)", "optic_KHS_old", 200, "item"],
	["Kahlia", "optic_KHS_blk", 225, "item"],
	["Kahlia (Hex)", "optic_KHS_hex", 225, "item"],
	["Kahlia (Tan)", "optic_KHS_tan", 225, "item"],
	["AMS", "optic_AMS", 250, "item"],
	["AMS (Khaki)", "optic_AMS_khk", 250, "item"],
	["AMS (Sand)", "optic_AMS_snd", 250, "item"],
	["LRPS", "optic_LRPS", 300, "item"],
	["NVS", "optic_NVS", 1000, "item"],
	["TWS", "optic_tws", 1500, "item"], // To hide from store list, add "HIDDEN" after "item", like "item", "HIDDEN"]
	["TWS MG", "optic_tws_mg", 2000, "item"],
	["Nightstalker", "optic_Nightstalker", 2500, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
	["Gas Mask (NATO)", "H_CrewHelmetHeli_B", 1000, "hat"],
	["Gas Mask (CSAT)", "H_CrewHelmetHeli_O", 1000, "hat"],
	["Gas Mask (AAF)", "H_CrewHelmetHeli_I", 1000, "hat"],
	["MICH", "H_HelmetIA", 50, "hat"],
	["MICH (Camo)", "H_HelmetIA_net", 50, "hat"],
	["MICH 2 (Camo)", "H_HelmetIA_camo", 50, "hat"],
	["ECH", "H_HelmetB", 50, "hat"],
	["ECH (Ghillie)", "H_HelmetB_camo", 50, "hat"],
	["ECH (Light)", "H_HelmetB_light", 50, "hat"],
	["ECH (Spraypaint)", "H_HelmetB_paint", 50, "hat"],
	["ECH (Grass)", "H_HelmetB_grass", 50, "hat"],
	["ECH (Snakeskin)", "H_HelmetB_snakeskin", 50, "hat"],
	["ECH (Desert)", "H_HelmetB_desert", 50, "hat"],
	["ECH (Black)", "H_HelmetB_black", 50, "hat"],
	["ECH (Sand)", "H_HelmetB_sand", 50, "hat"],
	["SF Helmet", "H_HelmetSpecB", 75, "hat"],
	["SF Helmet (Black)", "H_HelmetSpecB_blk", 75, "hat"],
	["SF Helmet (Light Paint)", "H_HelmetSpecB_paint1", 75, "hat"],
	["SF Helmet (Dark Paint)", "H_HelmetSpecB_paint2", 75, "hat"],
	["SF Helmet (Snakeskin)", "H_HelmetSpecB_snakeskin", 75, "hat"],
	["Combat Helmet (Black)", "H_HelmetB_plain_blk", 50, "hat"],
	["Combat Helmet (Camo)", "H_HelmetB_plain_mcamo", 50, "hat"],
	["Combat Helmet (Kerry)", "H_Helmet_Kerry", 50, "hat"],
	["Protector Helmet (Hex)", "H_HelmetO_ocamo", 60, "hat"],
	["Protector Helmet (Urban)", "H_HelmetO_oucamo", 60, "hat"],
	["Assassin Helmet (Hex)", "H_HelmetSpecO_ocamo", 75, "hat"],
	["Assassin Helmet (Black)", "H_HelmetSpecO_blk", 75, "hat"],
	["Defender Helmet (Hex)", "H_HelmetLeaderO_ocamo", 100, "hat"],
	["Defender Helmet (Urban)", "H_HelmetLeaderO_oucamo", 100, "hat"],
	["Pilot Helmet (NATO)", "H_PilotHelmetFighter_B", 60, "hat"],
	["Pilot Helmet (CSAT)", "H_PilotHelmetFighter_O", 60, "hat"],
	["Pilot Helmet (AAF)", "H_PilotHelmetFighter_I", 60, "hat"],
	/*["Heli Crew Helmet (NATO)", "H_CrewHelmetHeli_B", 50, "hat"],
	["Heli Crew Helmet (CSAT)", "H_CrewHelmetHeli_O", 50, "hat"],
	["Heli Crew Helmet (AAF)", "H_CrewHelmetHeli_I", 50, "hat"],*/ // Removed and renamed as gasmask
	["Heli Pilot Helmet (NATO)", "H_PilotHelmetHeli_B", 50, "hat"],
	["Heli Pilot Helmet (CSAT)", "H_PilotHelmetHeli_O", 50, "hat"],
	["Heli Pilot Helmet (AAF)", "H_PilotHelmetHeli_I", 50, "hat"],
	["Heli Crew Helmet (NATO)", "H_CrewHelmetHeli_B", 50, "hat"],
	["Heli Crew Helmet (CSAT)", "H_CrewHelmetHeli_O", 50, "hat"],
	["Heli Crew Helmet (AAF)", "H_CrewHelmetHeli_I", 50, "hat"],
	["Military Cap (Blue)", "H_MilCap_blue", 25, "hat"],
	["Military Cap (Gray)", "H_MilCap_gry", 25, "hat"],
	["Military Cap (Urban)", "H_MilCap_oucamo", 25, "hat"],
	["Military Cap (Russia)", "H_MilCap_rucamo", 25, "hat"],
	["Military Cap (MTP)", "H_MilCap_mcamo", 25, "hat"],
	["Military Cap (Hex)", "H_MilCap_ocamo", 25, "hat"],
	["Military Cap (AAF)", "H_MilCap_dgtl", 25, "hat"],
	["Rangemaster Cap", "H_Cap_headphones", 25, "hat"],
	["Marshal Cap", "H_Cap_marshal", 500, "hat"],
	["Cap (press)", "H_Cap_press", 200, "hat"],
	["Cap (US Black)", "H_Cap_usblack", 200, "hat"],
	["Bandana (Black)", "H_Bandanna_gry", 10, "hat"],
	["Bandana (Blue)", "H_Bandanna_blu", 10, "hat"],
	["Bandana (Coyote)", "H_Bandanna_cbr", 10, "hat"],
	["Bandana (Headset)", "H_Bandanna_khk_hs", 10, "hat"],
	["Bandana (Khaki)", "H_Bandanna_khk", 10, "hat"],
	["Bandana (MTP)", "H_Bandanna_mcamo", 10, "hat"],
	["Bandana (Sage)", "H_Bandanna_sgg", 10, "hat"],
	["Bandana (Sand)", "H_Bandanna_sand", 10, "hat"],
	["Bandana (Surfer)", "H_Bandanna_surfer", 10, "hat"],
	["Bandana (Surfer, Black)", "H_Bandanna_surfer_blk", 10, "hat"],
	["Bandana (Surfer, Green)", "H_Bandanna_surfer_grn", 10, "hat"],
	["Bandana (Woodland)", "H_Bandanna_camo", 10, "hat"],
	// ["Bandanna Mask (Black)", "H_BandMask_blk", 10, "hat"],
	// ["Bandanna Mask (Demon)", "H_BandMask_demon", 10, "hat"],
	// ["Bandanna Mask (Khaki)", "H_BandMask_khk", 10, "hat"],
	// ["Bandanna Mask (Reaper)", "H_BandMask_reaper", 10, "hat"],
	["Beanie (Black)", "H_Watchcap_blk", 10, "hat"],
	["Beanie (Brown)", "H_Watchcap_cbr", 10, "hat"],
	["Beanie (Khaki)", "H_Watchcap_khk", 10, "hat"],
	["Beanie (Navy)", "H_Watchcap_sgg", 10, "hat"],
	["Beanie (Olive)", "H_Watchcap_camo", 10, "hat"],
	["Beret (Black)", "H_Beret_blk", 10, "hat"],
	["Beret (Colonel)", "H_Beret_Colonel", 10, "hat"],
	["Beret (NATO)", "H_Beret_02", 10, "hat"],
	// ["Beret (Green)", "H_Beret_grn", 10, "hat"],
	// ["Beret (Police)", "H_Beret_blk_POLICE", 10, "hat"],
	// ["Beret (Red)", "H_Beret_red", 10, "hat"],
	// ["Beret (SAS)", "H_Beret_brn_SF", 10, "hat"],
	// ["Beret (SF)", "H_Beret_grn_SF", 10, "hat"],
	// ["Beret (RED)", "H_Beret_ocamo", 10, "hat"],
	// ["Black Turban", "H_TurbanO_blk", 50, "hat"],
	// ["Booniehat (Dirty)", "H_Booniehat_dirty", 10, "hat"],
	// ["Booniehat (Green)", "H_Booniehat_grn", 10, "hat"],
	// ["Booniehat (Khaki)", "H_Booniehat_indp", 10, "hat"],
	["Booniehat (AAF)", "H_Booniehat_dgtl", 10, "hat"],
	["Booniehat (Headset)", "H_Booniehat_khk_hs", 10, "hat"],
	["Booniehat (Khaki)", "H_Booniehat_khk", 10, "hat"],
	["Booniehat (MTP)", "H_Booniehat_mcamo", 10, "hat"],
	["Booniehat (Olive)", "H_Booniehat_oli", 10, "hat"],
	["Booniehat (Sand)", "H_Booniehat_tan", 10, "hat"],
	["Fedora (Blue)", "H_Hat_blue", 10, "hat"],
	["Fedora (Brown)", "H_Hat_brown", 10, "hat"],
	["Fedora (Camo)", "H_Hat_camo", 10, "hat"],
	["Fedora (Checker)", "H_Hat_checker", 10, "hat"],
	["Fedora (Gray)", "H_Hat_grey", 10, "hat"],
	["Fedora (Tan)", "H_Hat_tan", 10, "hat"],
	["Cap (BI)", "H_Cap_grn_BI", 10, "hat"],
	["Cap (Black)", "H_Cap_blk", 10, "hat"],
	["Cap (Blue)", "H_Cap_blu", 10, "hat"],
	["Cap (CMMG)", "H_Cap_blk_CMMG", 10, "hat"],
	["Cap (Green)", "H_Cap_grn", 10, "hat"],
	["Cap (ION)", "H_Cap_blk_ION", 10, "hat"],
	["Cap (Olive)", "H_Cap_oli", 10, "hat"],
	["Cap (Olive, Headset)", "H_Cap_oli_hs", 10, "hat"],
	["Cap (Police)", "H_Cap_police", 10, "hat"],
	["Cap (Press)", "H_Cap_press", 10, "hat"],
	["Cap (Red)", "H_Cap_red", 10, "hat"],
	["Cap (Surfer)", "H_Cap_surfer", 10, "hat"],
	["Cap (Tan)", "H_Cap_tan", 10, "hat"],
	["Cap (UK)", "H_Cap_khaki_specops_UK", 10, "hat"],
	["Cap (US Black)", "H_Cap_usblack", 10, "hat"],
	["Cap (US MTP)", "H_Cap_tan_specops_US", 10, "hat"],
	["Cap (AAF)", "H_Cap_blk_Raven", 10, "hat"],
	["Cap (OPFOR)", "H_Cap_brn_SPECOPS", 10, "hat"],
	["Shemag (Olive)", "H_Shemag_olive", 25, "hat"],
	["Shemag (Olive, Headset)", "H_Shemag_olive_hs", 25, "hat"],
	["Shemag (Tan)", "H_ShemagOpen_tan", 25, "hat"],
	["Shemag (White)", "H_ShemagOpen_khk", 25, "hat"],
	// ["Shemag mask (Tan)", "H_Shemag_tan", 25, "hat"],
	["Racing Helmet (Black)", "H_RacingHelmet_1_black_F", 25, "hat"],
	["Racing Helmet (Blue)", "H_RacingHelmet_1_blue_F", 25, "hat"],
	["Racing Helmet (Green)", "H_RacingHelmet_1_green_F", 25, "hat"],
	["Racing Helmet (Yellow)", "H_RacingHelmet_1_yellow_F", 25, "hat"],
	["Racing Helmet (Orange)", "H_RacingHelmet_1_orange_F", 25, "hat"],
	["Racing Helmet (Red)", "H_RacingHelmet_1_red_F", 25, "hat"],
	["Racing Helmet (White)", "H_RacingHelmet_1_white_F", 25, "hat"],
	["Racing Helmet (Fuel)", "H_RacingHelmet_1_F", 25, "hat"],
	["Racing Helmet (Bluking)", "H_RacingHelmet_2_F", 25, "hat"],
	["Racing Helmet (Redstone)", "H_RacingHelmet_3_F", 25, "hat"],
	["Racing Helmet (Vrana)", "H_RacingHelmet_4_F", 25, "hat"]
];

uniformArray = compileFinal str
[
	["Wetsuit (NATO)", "U_B_Wetsuit", 200, "uni"],
	["Wetsuit (CSAT)", "U_O_Wetsuit", 200, "uni"],
	["Wetsuit (AAF)", "U_I_Wetsuit", 200, "uni"],
	["Light Ghillie (NATO)", "U_B_GhillieSuit", 300, "uni"],
	["Light Ghillie (CSAT)", "U_O_GhillieSuit", 300, "uni"],
	["Light Ghillie (AAF)", "U_I_GhillieSuit", 300, "uni"],
	["Full Ghillie (Arid) [DLC]", "U_B_FullGhillie_ard", 1000, "uni"],
	["Full Ghillie (Arid) [DLC]", "U_O_FullGhillie_ard", 1000, "uni"],
	["Full Ghillie (Arid) [DLC]", "U_I_FullGhillie_ard", 1000, "uni"],
	["Full Ghillie (Lush) [DLC]", "U_B_FullGhillie_lsh", 1000, "uni"],
	["Full Ghillie (Lush) [DLC]", "U_O_FullGhillie_lsh", 1000, "uni"],
	["Full Ghillie (Lush) [DLC]", "U_I_FullGhillie_lsh", 1000, "uni"],
	["Full Ghillie (Semi-Arid) [DLC]", "U_B_FullGhillie_sard", 1000, "uni"],
	["Full Ghillie (Semi-Arid) [DLC]", "U_O_FullGhillie_sard", 1000, "uni"],
	["Full Ghillie (Semi-Arid) [DLC]", "U_I_FullGhillie_sard", 1000, "uni"],
	["Survival Fatigues (NATO)", "U_B_survival_uniform", 200, "uni"],
	["Default Uniform (NATO)", "U_B_CombatUniform_mcam", 25, "uni"],
	["Default Uniform (CSAT)", "U_O_OfficerUniform_ocamo", 25, "uni"],
	["Default Uniform (AAF)", "U_I_CombatUniform", 25, "uni"],
	["Recon Fatigues (MTP)", "U_B_CombatUniform_mcam_vest", 25, "uni"],
	["Combat Fatigues (Tee)", "U_B_CombatUniform_mcam_tshirt", 25, "uni"],
	["Combat Fatigues (Gangsta)", "U_I_G_resistanceLeader_F", 25, "uni"],
	["Combat Fatigues (Rolled-up)", "U_I_CombatUniform_shortsleeve", 25, "uni"],
	["CTRG Combat Uniform", "U_B_CTRG_1", 25, "uni"],
	["CTRG Combat Uniform (Tee)", "U_B_CTRG_2", 25, "uni"],
	["CTRG Combat Uniform (Rolled-up)", "U_B_CTRG_3", 25, "uni"],
	["Fatigues (Hex)", "U_O_CombatUniform_ocamo", 50, "uni"],
	["Fatigues (Urban)", "U_O_CombatUniform_oucamo", 50, "uni"],
	["Officer Fatigues", "U_I_OfficerUniform", 25, "uni"],
	["Pilot Coveralls", "U_B_PilotCoveralls", 25, "uni"],
	["Pilot Coveralls", "U_O_PilotCoveralls", 25, "uni"],
	["Pilot Coveralls", "U_I_pilotCoveralls", 25, "uni"],
	["Heli Pilot Coveralls", "U_B_HeliPilotCoveralls", 25, "uni"],
	["Heli Pilot Coveralls", "U_I_HeliPilotCoveralls", 25, "uni"],
	["Guerilla Garment", "U_BG_Guerilla1_1", 25, "uni"],  // BLUFOR
	["Guerilla Outfit (Plain, Dark)", "U_BG_Guerilla2_1", 25, "uni"],
	["Guerilla Outfit (Pattern)", "U_BG_Guerilla2_2", 25, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_BG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks", "U_BG_Guerilla3_1", 25, "uni"],
	["Guerilla Apparel", "U_BG_Guerrilla_6_1", 25, "uni"],
	["Guerilla Uniform", "U_BG_leader", 25, "uni"],
	["Guerilla Garment", "U_OG_Guerilla1_1", 25, "uni"], // OPFOR
	["Guerilla Outfit (Plain, Dark)", "U_OG_Guerilla2_1", 25, "uni"],
	["Guerilla Outfit (Pattern)", "U_OG_Guerilla2_2", 25, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_OG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks", "U_OG_Guerilla3_1", 25, "uni"],
	["Guerilla Apparel", "U_OG_Guerrilla_6_1", 25, "uni"],
	["Guerilla Uniform", "U_OG_leader", 25, "uni"],
	["Guerilla Garment", "U_IG_Guerilla1_1", 25, "uni"], // Independent
	["Guerilla Outfit (Plain, Dark)", "U_IG_Guerilla2_1", 25, "uni"],
	["Guerilla Outfit (Pattern)", "U_IG_Guerilla2_2", 25, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_IG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks", "U_IG_Guerilla3_1", 25, "uni"],
	["Guerilla Apparel", "U_IG_Guerrilla_6_1", 25, "uni"],
	["Guerilla Uniform", "U_IG_leader", 25, "uni"],
	/*["Worker Coveralls", "U_C_WorkerCoveralls", 25, "uni"], // can only be worn by civilian units
	["T-Shirt (Blue)", "U_C_Poor_1", 25, "uni"],
	["Polo (Red/white)", "U_C_Poloshirt_redwhite", 25, "uni"],
	["Polo (Salmon)", "U_C_Poloshirt_salmon", 25, "uni"],
	["Polo (Tri-color)", "U_C_Poloshirt_tricolour", 25, "uni"],
	["Polo (Navy)", "U_C_Poloshirt_blue", 25, "uni"],
	["Polo (Burgundy)", "U_C_Poloshirt_burgundy", 25, "uni"],
	["Polo (Blue/green)", "U_C_Poloshirt_stripped", 25, "uni"],*/
	["Polo (Competitor)", "U_Competitor", 25, "uni"],
	["Polo (Rangemaster)", "U_Rangemaster", 25, "uni"],
	/*["Racing Suit (Black)", "U_C_Driver_1_black", 25, "uni"], // can only be worn by civilian units
	["Racing Suit (Blue)", "U_C_Driver_1_blue", 25, "uni"],
	["Racing Suit (Green)", "U_C_Driver_1_green", 25, "uni"],
	["Racing Suit (Yellow)", "U_C_Driver_1_yellow", 25, "uni"],
	["Racing Suit (Orange)", "U_C_Driver_1_orange", 25, "uni"],
	["Racing Suit (Red)", "U_C_Driver_1_red", 25, "uni"],
	["Racing Suit (White)", "U_C_Driver_1_white", 25, "uni"],
	["Racing Suit (Fuel)", "U_C_Driver_1", 25, "uni"],
	["Racing Suit (Bluking)", "U_C_Driver_2", 25, "uni"],
	["Racing Suit (Redstone)", "U_C_Driver_3", 25, "uni"],
	["Racing Suit (Vrana)", "U_C_Driver_4", 25, "uni"],*/
	["Tron Light Suit (Blue)", "U_B_Protagonist_VR", 3000, "uni"],
	["Tron Light Suit (Red)", "U_O_Protagonist_VR", 3000, "uni"],
	["Tron Light Suit (Green)", "U_I_Protagonist_VR", 3000, "uni"]
];

vestArray = compileFinal str
[
	["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"],
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", -1, "vest"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", -1, "vest"],
	["Carrier Lite (CTRG)", "V_PlateCarrierL_CTRG", -1, "vest"],
	["Carrier Rig (Green)", "V_PlateCarrier2_rgr", -1, "vest"],
	["Carrier Rig (Black)", "V_PlateCarrier2_blk", -1, "vest"],
	["Carrier Rig (CTRG)", "V_PlateCarrierH_CTRG", -1, "vest"],
	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", -1, "vest"],
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", -1, "vest"],
	["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", -1, "vest"],
	["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr", -1, "vest"],
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", -1, "vest"],
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", -1, "vest"],
	["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", -1, "vest"],
	["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Olive)", "V_PlateCarrierIAGL_oli", -1, "vest"],
	["LBV Harness", "V_HarnessO_brn", -1, "vest"],
	["LBV Harness (Gray)", "V_HarnessO_gry", -1, "vest"],
	["LBV Grenadier Harness", "V_HarnessOGL_brn", -1, "vest"],
	["LBV Grenadier Harness (Gray)", "V_HarnessOGL_gry", -1, "vest"],
	["Slash Bandolier (Black)", "V_BandollierB_blk", -1, "vest"],
	["Slash Bandolier (Coyote)", "V_BandollierB_cbr", -1, "vest"],
	["Slash Bandolier (Green)", "V_BandollierB_rgr", -1, "vest"],
	["Slash Bandolier (Khaki)", "V_BandollierB_khk", -1, "vest"],
	["Slash Bandolier (Olive)", "V_BandollierB_oli", -1, "vest"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", -1, "vest"],
	["Chest Rig (Green)", "V_Chestrig_rgr", -1, "vest"],
	["Fighter Chestrig (Black)", "V_Chestrig_blk", -1, "vest"],
	["Fighter Chestrig (Olive)", "V_Chestrig_oli", -1, "vest"],
	["Tactical Vest (Black)", "V_TacVest_blk", -1, "vest"],
	["Tactical Vest (Brown)", "V_TacVest_brn", -1, "vest"],
	["Tactical Vest (Camo)", "V_TacVest_camo", -1, "vest"],
	["Tactical Vest (Khaki)", "V_TacVest_khk", -1, "vest"],
	["Tactical Vest (Olive)", "V_TacVest_oli", -1, "vest"],
	["Tactical Vest (Police)", "V_TacVest_blk_POLICE", -1, "vest"],
	["Tactical Vest (Stavrou)", "V_I_G_resistanceLeader_F", -1, "vest"],
	["Raven Night Vest", "V_TacVestIR_blk", -1, "vest"],
	["Press Vest", "V_Press_F", -1, "vest"]
];

backpackArray = compileFinal str
[
	//["Parachute", "B_Parachute", 200, "backpack"],

	["Assault Pack (Black)", "B_AssaultPack_blk", 100, "backpack"],
	["Assault Pack (Green)", "B_AssaultPack_rgr", 100, "backpack"],
	["Assault Pack (MTP)", "B_AssaultPack_mcamo", 100, "backpack"],
	["Assault Pack (Hex)", "B_AssaultPack_ocamo", 100, "backpack"],

	["Field Pack (Black)", "B_FieldPack_blk", 200, "backpack"],
	["Field Pack (Coyote)", "B_FieldPack_cbr", 200, "backpack"],
	["Field Pack (Hex)", "B_FieldPack_ocamo", 200, "backpack"],
	["Field Pack (Khaki)", "B_FieldPack_khk", 200, "backpack"],
	["Field Pack (Olive)", "B_FieldPack_oli", 200, "backpack"],
	["Field Pack (Urban)", "B_FieldPack_oucamo", 200, "backpack"],

	["Kitbag (Coyote)", "B_Kitbag_cbr", 350, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 350, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 350, "backpack"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 350, "backpack"],

	["Carryall (Coyote)", "B_Carryall_cbr", 500, "backpack"],
	["Carryall (Hex)", "B_Carryall_ocamo", 500, "backpack"],
	["Carryall (Khaki)", "B_Carryall_khk", 500, "backpack"],
	["Carryall (MTP)", "B_Carryall_mcamo", 500, "backpack"],
	["Carryall (Olive)", "B_Carryall_oli", 500, "backpack"],
	["Carryall (Urban)", "B_Carryall_oucamo", 500, "backpack"],

	["Bergen (Digital)", "B_Bergen_dgtl_F", 1000, "backpack", "noDLC"],
	["Bergen (Hex)", "B_Bergen_hex_F", 1000, "backpack", "noDLC"],
	["Bergen (MTP)", "B_Bergen_mcamo_F", 1000, "backpack", "noDLC"],
	["Bergen (Tropic)", "B_Bergen_tna_F", 1000, "backpack", "noDLC"]
];

genItemArray = compileFinal str
[
	["UAV Terminal (NATO)", "B_UavTerminal", 500, "gps"],
	["UAV Terminal (CSAT)", "O_UavTerminal", 500, "gps"],
	["UAV Terminal (AAF)", "I_UavTerminal", 500, "gps"],
	["Quadrotor UAV (NATO)", "B_UAV_01_backpack_F", 9500, "backpack"],
	["Quadrotor UAV (CSAT)", "O_UAV_01_backpack_F", 9500, "backpack"],
	["Quadrotor UAV (AAF)", "I_UAV_01_backpack_F", 9500, "backpack"],
	["Remote Designator Bag (NATO) [DLC]", "B_Static_Designator_01_weapon_F", 2500, "backpack"],
	["Remote Designator Bag (CSAT) [DLC]", "O_Static_Designator_02_weapon_F", 2500, "backpack"],
	["GPS", "ItemGPS", 100, "gps"],
	["First Aid Kit", "FirstAidKit", 25, "item"],
	["Medikit", "Medikit", 150, "item"],
	["Toolkit", "ToolKit", 150, "item"],
	["Mine Detector", "MineDetector", 250, "item"],
	["Diving Goggles", "G_Diving", 200, "gogg"],
	["NV Goggles (Brown)", "NVGoggles", 200, "nvg"],
	["NV Goggles (Black)", "NVGoggles_OPFOR", 200, "nvg"],
	["NV Goggles (Green)", "NVGoggles_INDEP", 200, "nvg"],
	["Binoculars", "Binocular", 50, "binoc"],
	["Rangefinder", "Rangefinder", 150, "binoc"],
	["Laser Designator (NATO)", "Laserdesignator", 1000, "binoc", "WEST"],
	["Laser Designator (CSAT)", "Laserdesignator_02", 1000, "binoc", "EAST"],
	["Laser Designator (AAF)", "Laserdesignator_03", 1000, "binoc", "GUER"],
	["IR Grenade (NATO)", "B_IR_Grenade", 50, "mag", "WEST"],
	["IR Grenade (CSAT)", "O_IR_Grenade", 50, "mag", "EAST"],
	["IR Grenade (AAF)", "I_IR_Grenade", 50, "mag", "GUER"],
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"],
	["Balaclava (Black)", "G_Balaclava_blk", 100, "gogg"],
	["Balaclava (Olive)", "G_Balaclava_oli", 100, "gogg"],
	["Balaclava (Combat Goggles)", "G_Balaclava_combat", 150, "gogg"],
	["Balaclava (Low Profile Goggles)", "G_Balaclava_lowprofile", 150, "gogg"],
	["Bandanna (Aviator)", "G_Bandanna_aviator", 100, "gogg"],
	["Bandanna (Beast)", "G_Bandanna_beast", 100, "gogg"],
	["Bandanna (Black)", "G_Bandanna_blk", 100, "gogg"],
	["Bandanna (Khaki)", "G_Bandanna_khk", 100, "gogg"],
	["Bandanna (Olive)", "G_Bandanna_oli", 100, "gogg"],
	["Bandanna (Shades)", "G_Bandanna_shades", 100, "gogg"],
	["Bandanna (Sport)", "G_Bandanna_sport", 100, "gogg"],
	["Bandanna (Tan)", "G_Bandanna_tan", 100, "gogg"],
	["Combat Goggles", "G_Combat", 100, "gogg"],
	["VR Goggles", "G_Goggles_VR", 100, "gogg"],
	["Aviator Glasses", "G_Aviator", 100, "gogg"],
	["Ladies Shades (ICE)", "G_Lady_Blue", 100, "gogg"],
	["Ladies Shades (Sea)", "G_Lady_Dark", 100, "gogg"],
	["Ladies Shades (Iridium)", "G_Lady_Mirror", 100, "gogg"],
	["Ladies Shades (Fire)", "G_Lady_Red", 100, "gogg"],
	["Low Profile Goggles", "G_Lowprofile", 100, "gogg"],
	["Shades (Black)", "G_Shades_Black", 100, "gogg"],
	["Shades (Blue)", "G_Shades_Blue", 100, "gogg"],
	["Shades (Green)", "G_Shades_Green", 100, "gogg"],
	["Shades (Red)", "G_Shades_Red", 100, "gogg"],
	["Spectacle Glasses", "G_Spectacles", 100, "gogg"],
	["Sport Shades (Fire)", "G_Sport_Red", 100, "gogg"],
	["Sport Shades (Poison)", "G_Sport_Blackyellow", 100, "gogg"],
	["Sport Shades (Shadow)", "G_Sport_BlackWhite", 100, "gogg"],
	["Sport Shades (Style)", "G_Sport_Checkered", 100, "gogg"],
	["Sport Shades (Vulcan)", "G_Sport_Blackred", 100, "gogg"],
	["Sport Shades (Yetti)", "G_Sport_Greenblack", 100, "gogg"],
	["Square Shades", "G_Squares_Tinted", 100, "gogg"],
	["Square Spectacles", "G_Squares", 100, "gogg"],
	["Tactical Glasses", "G_Tactical_Clear", 100, "gogg"],
	["Tactical Shades", "G_Tactical_Black", 100, "gogg"],
	["Tinted Spectacles", "G_Spectacles_Tinted", 100, "gogg"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	//["Base Re-Locker", "Land_Portable_generator_F", 100000, "object"],  //Cael817, SNAFU,Used for base operations <-- Non destroyable
	["Winner's Podium", "Land_WinnersPodium_01_F", 250, "object"],
	["Base Re-Locker", "Land_Device_assembled_F", 25000, "object"],  //Cael817, SNAFU,Used for base operations <-- Destroyable
	["Food sacks", "Land_Sacks_goods_F", 5000, "object"], // Added on player request
	["Water Barrel", "Land_BarrelWater_F", 5000, "object"], // Added on player request
	["Camo Ammo Cache", "Box_FIA_Support_F", 250, "ammocrate"],
	["Metal Barrel", "Land_MetalBarrel_F", 25, "object"],
	["Toilet Box", "Land_ToiletBox_F", 25, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 25, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 25, "object"],
	["Boom Gate", "Land_BarGate_F", 50, "object"],
	["Pipes", "Land_Pipes_Large_F", 100, "object"],
	["Concrete Frame", "Land_CncShelter_F", 100, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 100, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 150, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 175, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 250, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 50, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 100, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 175, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 250, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 200, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 250, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 350, "object"],
	["Concrete Wall", "Land_CncWall1_F", 200, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 200, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 300, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 300, "object"],
	// ["Shoot House Wall", "Land_Shoot_House_Wall_F", 180, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 200, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 250, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 75, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 75, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 100, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 75, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 75, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 175, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 300, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 500, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 800, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 2500, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 200, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 250, "object"],
	["Scaffolding", "Land_Scaffolding_F", 200, "object"],
	["Basketball Court", "Land_BC_Court_F", 500, "object"],
	["Transmitter Tower", "Land_TTowerBig_1_F", 1000, "object"],
	["Transmitter Tower (Tall)", "Land_TTowerBig_2_F", 1500, "object"],
	["Kavala Castle (Stone)", "Land_Castle_01_step_F", 200, "object"],
	["Runway Edgelight", "Land_runway_edgelight_blue_F", 50, "object"],
	["Concrete Block", "BlockConcrete_F", 300, "object"],
	["Shoot House - Wall (Stand, Long)", "Land_Shoot_House_Wall_Long_Stand_F", 180, "object"],
	["Shoot House - Wall (Crouch, Long)", "Land_Shoot_House_Wall_Long_Crouch_F", 150, "object"],
	["Shoot House - Wall (Prone, Long)", "Land_Shoot_House_Wall_Long_Prone_F", 120, "object"],
	["Shoot House - Corner", "Land_Shoot_House_Corner_F", 150, "object"],
	["Shoot House - Corner (Stand)", "Land_Shoot_House_Corner_Stand_F", 120, "object"],
	["Shoot House - Corner (Crouch)", "Land_Shoot_House_Corner_Crouch_F", 90, "object"],
	["Shoot House - Corner (Prone)", "Land_Shoot_House_Corner_Prone_F", 60, "object"],
	["Shoot House - Panels", "Land_Shoot_House_Panels_F", 200, "object"],
	["Shoot House - Tunnel", "Land_Shoot_House_Tunnel_F", 150, "object"],
	["Shoot House - Tunnel (Stand)", "Land_Shoot_House_Tunnel_Stand_F", 120, "object"],
	["Shoot House - Tunnel (Crouch)", "Land_Shoot_House_Tunnel_Crouch_F", 90, "object"],
	["Shoot House - Tunnel (Prone)", "Land_Shoot_House_Tunnel_Prone_F", 60, "object"],
	["Lamp (Halogen)", "Land_LampHalogen_F", 50, "object"],
	["Solar Tower", "Land_spp_Tower_F", 1500, "object"],
	["Canal Wall", "Land_Canal_Wall_10m_F", 400, "object"],
	["Inn Garden", "Land_i_Addon_03_V1_F", 1000, "object"],
	["Inn Garden (Middle)", "Land_i_Addon_03mid_V1_F", 500, "object"],
	["Inn Garden (No Roof)", "Land_i_Addon_04_V1_F", 300, "object"],
	["Grave (Dirt)", "Land_Grave_dirt_F", 2000, "object"],
	["Grave (Forest)", "Land_Grave_forest_F", 2000, "object"],
	["Grave (Rocks)", "Land_Grave_rocks_F", 2000, "object"],
	["Tower Crane", "Land_Crane_F", 2000, "object"],
	["Concrete Pier", "Land_Pier_Box_F", 500, "object"]
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	["Kart", "C_Kart_01_F", 200, "vehicle"],

	["Quadbike (Civilian)", "C_Quadbike_01_F", 150, "vehicle"],
	["Quadbike (NATO)", "B_Quadbike_01_F", 200, "vehicle"],
	["Quadbike (CSAT)", "O_Quadbike_01_F", 200, "vehicle"],
	["Quadbike (AAF)", "I_Quadbike_01_F", 200, "vehicle"],
	["Quadbike (FIA)", "B_G_Quadbike_01_F", 200, "vehicle"],

	["Hatchback", "C_Hatchback_01_F", 400, "vehicle"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 700, "vehicle"],
	["SUV", "C_SUV_01_F", 750, "vehicle"],
	["Offroad", "C_Offroad_01_F", 750, "vehicle"],
	["Offroad Camo", "B_G_Offroad_01_F", 800, "vehicle"],
	["Offroad Repair", "C_Offroad_01_repair_F", 1500, "vehicle"],
	["Offroad HMG", "B_G_Offroad_01_armed_F", 2500, "vehicle"],

	["Truck", "C_Van_01_transport_F", 250, "vehicle"],
	["Truck (Camo)", "B_G_Van_01_transport_F", 300, "vehicle"],
	["Truck Box", "C_Van_01_box_F", 300, "vehicle"],
	["Fuel Truck", "C_Van_01_fuel_F", 2000, "vehicle"],
	["Fuel Truck (Camo)", "B_G_Van_01_fuel_F", 2100, "vehicle"],

	["HEMTT Tractor", "B_Truck_01_mover_F", 2000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 3000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 4000, "vehicle"],
	["HEMTT Box", "B_Truck_01_box_F", 4000, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 5000, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 6000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 7500, "vehicle"],
	["HEMTT Ammo", "B_Truck_01_ammo_F", 11000, "vehicle"],

	["Tempest Device", "O_Truck_03_device_F", 2500, "vehicle"],
	["Tempest Transport", "O_Truck_03_transport_F", 3000, "vehicle"],
	["Tempest Covered", "O_Truck_03_covered_F", 4000, "vehicle"],
	["Tempest Fuel", "O_Truck_03_fuel_F", 5000, "vehicle"],
	["Tempest Medical", "O_Truck_03_medical_F", 6000, "vehicle"],
	["Tempest Repair", "O_Truck_03_repair_F", 7500, "vehicle"],
	["Tempest Ammo", "O_Truck_03_ammo_F", 11000, "vehicle"],

	["Zamak Transport", "I_Truck_02_transport_F", 2000, "vehicle"],
	["Zamak Covered", "I_Truck_02_covered_F", 3000, "vehicle"],
	["Zamak Fuel", "I_Truck_02_fuel_F", 4000, "vehicle"],
	["Zamak Medical", "I_Truck_02_medical_F", 6000, "vehicle"],
	["Zamak Repair", "I_Truck_02_box_F", 7000, "vehicle"],
	["Zamak Ammo", "I_Truck_02_ammo_F", 10000, "vehicle"],

	["UGV Stomper (NATO)", "B_UGV_01_F", 3000, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 3000, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 3000, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 15000, "vehicle"]
];

armoredArray = compileFinal str
[
	["Hunter", "B_MRAP_01_F", 2000, "vehicle"],
	["Hunter HMG", "B_MRAP_01_hmg_F", 7500, "vehicle"],
	["Hunter GMG", "B_MRAP_01_gmg_F", 7500, "vehicle"],
	["Ifrit", "O_MRAP_02_F", 2000, "vehicle"],
	["Ifrit HMG", "O_MRAP_02_hmg_F", 7500, "vehicle"],
	["Ifrit GMG", "O_MRAP_02_gmg_F", 7500, "vehicle"],
	["Strider", "I_MRAP_03_F", 2000, "vehicle"],
	["Strider HMG", "I_MRAP_03_hmg_F", 7500, "vehicle"],
	["Strider GMG", "I_MRAP_03_gmg_F", 7500, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_F", 10000, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 12000, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 15000, "vehicle"]
];

tanksArray = compileFinal str
[
	["CRV-6e Bobcat", "B_APC_Tracked_01_CRV_F", 12500, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 11000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 13000, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 18000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 20000, "vehicle"],
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 20000, "vehicle"],
	["M2A1 Slammer", "B_MBT_01_cannon_F", 20000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 22000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 24000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 27000, "vehicle"],
	["M5 Sandstorm MLRS", "B_MBT_01_mlrs_F", 500000, "vehicle"]
	//["M4 Scorcher", "B_MBT_01_arty_F", 50000, "vehicle"]
];


helicoptersArray = compileFinal str
[
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 3000, "vehicle"], // MH-6
	["M-900", "C_Heli_Light_01_civil_F", 2000, "vehicle"],
	["PO-30 Orca (Black)", "O_Heli_Light_02_unarmed_F", 4500, "vehicle"], // Ka-60
	["WY-55 Hellcat (Green)", "I_Heli_light_03_unarmed_F", 4500, "vehicle"], // AW159
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 5500, "vehicle"], // AW101
	["CH-46 Huron (Armed) [DLC]", "B_Heli_Transport_03_F", 15000, "vehicle"], 
	["CH-46 Huron (Black) [DLC]", "B_Heli_Transport_03_unarmed_F", 10000, "vehicle"], 
	["Mi-290 Taru (Crane) [DLC]", "O_Heli_Transport_04_F", 4500, "vehicle"], 
	["Mi-290 Taru (Box) [DLC]", "O_Heli_Transport_04_box_F", 7500, "vehicle"],
	["Mi-290 Taru (Transport) [DLC]", "O_Heli_Transport_04_covered_F", 7500, "vehicle"], 
	["Mi-290 Taru (Ammo) [DLC]", "O_Heli_Transport_04_ammo_F", 10000, "vehicle"], 
	["Mi-290 Taru (Bench) [DLC]", "O_Heli_Transport_04_bench_F", 6000, "vehicle"], 
	["Mi-290 Taru (Fuel) [DLC]", "O_Heli_Transport_04_fuel_F", 6000, "vehicle"], 
	["Mi-290 Taru (Medical) [DLC]", "O_Heli_Transport_04_medevac_F", 6000, "vehicle"], 
	["Mi-290 Taru (Repair) [DLC]", "O_Heli_Transport_04_repair_F", 6000, "vehicle"],  

	["UH-80 Ghost Hawk (Black)", "B_Heli_Transport_01_F", 7500, "vehicle"], // UH-60 Stealth with 2 side miniguns
	["AH-9 Pawnee", "B_Heli_Light_01_armed_F", 12000, "vehicle"], // Armed AH-6
	["PO-30 Orca (Armed, Black)", "O_Heli_Light_02_v2_F", 15000, "vehicle"], // Armed Ka-60
	["PO-30 Orca (Armed, Hex)", "O_Heli_Light_02_F", 30000, "vehicle"], // Armed Ka-60
	["WY-55 Hellcat (Armed)", "I_Heli_light_03_F", 17500, "vehicle"], // Armed AW159
	["AH-99 Blackfoot", "B_Heli_Attack_01_F", 100000, "vehicle"], // RAH-66 with gunner
	["Mi-48 Kajman (Hex)", "O_Heli_Attack_02_F", 50000, "vehicle"] // Mi-28 with gunner
];

planesArray = compileFinal str
[
	["A-143 Buzzard AA", "I_Plane_Fighter_03_AA_F", 50000, "vehicle"],
	["A-143 Buzzard CAS", "I_Plane_Fighter_03_CAS_F", 40000, "vehicle"],
	["A-164 Wipeout CAS", "B_Plane_CAS_01_F", 100000, "vehicle"],
	["To-199 Neophron CAS", "O_Plane_CAS_02_F", 80000, "vehicle"],
	//["MQ4A Greyhawk ATGM UAV", "B_UAV_02_F", 50000, "vehicle"],
	["MQ4A Greyhawk Bomber UAV", "B_UAV_02_CAS_F", 30000, "vehicle"], // Bomber UAVs are a lot harder to use, hence why they are cheaper than ATGMs
	//["K40 Ababil-3 ATGM UAV (CSAT)", "O_UAV_02_F", 50000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (CSAT)", "O_UAV_02_CAS_F", 30000, "vehicle"],
	//["K40 Ababil-3 ATGM UAV (AAF)", "I_UAV_02_F", 50000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (AAF)", "I_UAV_02_CAS_F", 30000, "vehicle"]
];

boatsArray = compileFinal str
[
	["Rescue Boat", "C_Rubberboat", 500, "boat"],
	["Rescue Boat (NATO)", "B_Lifeboat", 500, "boat"],
	["Rescue Boat (CSAT)", "O_Lifeboat", 500, "boat"],
	["Assault Boat (NATO)", "B_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (FIA)", "B_G_Boat_Transport_01_F", 600, "boat"],
	["Motorboat", "C_Boat_Civil_01_F", 1000, "boat"],
	["Motorboat Rescue", "C_Boat_Civil_01_rescue_F", 900, "boat"],
	["Motorboat Police", "C_Boat_Civil_01_police_F", 1100, "boat"],
	["Speedboat HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 4000, "boat"],
	["Speedboat Minigun (NATO)", "B_Boat_Armed_01_minigun_F", 4000, "boat"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 4000, "boat"],
	["SDV Submarine (NATO)", "B_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 1000, "submarine"]
];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	// Deprecated
];

noColorVehicles = compileFinal str
[
  	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_wreckDir = "\A3\structures_f\wrecks\data\";
_gorgonDir = "\A3\armor_f_gamma\APC_Wheeled_03\data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All",
		[
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Gray", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.paa"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.paa"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.paa"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Bloodshot", _texDir + "bloodshot.paa"],
			["Carbon", _texDir + "carbon.paa"],
			["Confederate", _texDir + "confederate.paa"],
			["Denim", _texDir + "denim.paa"],
			["Digital", _texDir + "digi.paa"],
			["Digital Black", _texDir + "digi_black.paa"],
			["Digital Desert", _texDir + "digi_desert.paa"],
			["Digital Woodland", _texDir + "digi_wood.paa"],
			["Doritos", _texDir + "doritos.paa"],
			["Drylands", _texDir + "drylands.paa"],
			["Hello Kitty", _texDir + "hellokitty.paa"],
			["Hex", _texDir + "hex.paa"],
			["Hippie", _texDir + "hippie.paa"],
			["ISIS", _texDir + "isis.paa"],
			["Leopard", _texDir + "leopard.paa"],
			["Mountain Dew", _texDir + "mtndew.paa"],
			["'Murica", _texDir + "murica.paa"],
			["Nazi", _texDir + "nazi.paa"],
			["Orange Camo", _texDir + "camo_orange.paa"],
			["Pink Camo", _texDir + "camo_pink.paa"],
			["Pride", _texDir + "pride.paa"],
			["Psych", _texDir + "psych.paa"],
			["Red Camo", _texDir + "camo_red.paa"],
			["Rusty", _texDir + "rusty.paa"],
			["Sand", _texDir + "sand.paa"],
			["Snake", _texDir + "snake.paa"],
			["Stripes", _texDir + "stripes.paa"],
			["Stripes 2", _texDir + "stripes2.paa"],
			["Stripes 3", _texDir + "stripes3.paa"],
			["Swamp", _texDir + "swamp.paa"],
			["Tiger", _texDir + "tiger.paa"],
			["Trippy", _texDir + "rainbow.paa"],
			["Union Jack", _texDir + "unionjack.paa"],
			["Urban", _texDir + "urban.paa"],
			["Weed", _texDir + "weed.paa"],
			["Woodland", _texDir + "woodland.paa"],
			["Woodland Dark", _texDir + "wooddark.paa"],
			["Woodland Tiger", _texDir + "woodtiger.paa"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Black (Kart)", ["Black"]], // ["Black (Kart)", [configName (configFile >> "CfgVehicles" >> "C_Kart_01_F" >> "TextureSources" >> "Black")]],
			["White (Kart)", ["White"]],
			["Blue (Kart)", ["Blue"]],
			["Green (Kart)", ["Green"]],
			["Yellow (Kart)", ["Yellow"]],
			["Orange (Kart)", ["Orange"]],
			["Red (Kart)", [[0, _kartDir + "kart_01_base_red_co.paa"]]] // no red TextureSource :(
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Mohawk colors
		"Heli_Transport_02_base_F",
		[
			["Dahoman (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_dahoman_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_dahoman_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_dahoman_co.paa"]
			]],
			["ION (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_ion_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_ion_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_ion_co.paa"]
			]]
		]
	],
	[ // Taru paintjob
		"Heli_Transport_04_base_F",
		[
			["Black (Taru)", ["Black"]]
		]
	],
	[ // Kajman paintjobs
		"Heli_Attack_02_base_F",
		[
			["Black (Kajman)", ["Black"]],
			["Rusty (Kajman)", [
				[0, _wreckDir + "wreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "wreck_heli_attack_02_body2_co.paa"]
			]],
			["Mossy (Kajman)", [
				[0, _wreckDir + "uwreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "uwreck_heli_attack_02_body2_co.paa"]
			]]
		]
	],
	[ // Ghost Hawk camo 
		"Heli_Transport_01_base_F",
		[
			["Green (Ghost Hawk)", ["Green"]]
		]
	],
	[ // Strider NATO color
		"MRAP_03_base_F",
		[
			["NATO Tan (Strider)", ["Blufor"]]
		]
	],
	[ // Gorgon NATO color
		"APC_Wheeled_03_base_F",
		[
			["NATO Tan (Gorgon)", [
				[0, _gorgonDir + "apc_wheeled_03_ext_co.paa"],
				[1, _gorgonDir + "apc_wheeled_03_ext2_co.paa"],
				[2, _gorgonDir + "rcws30_co.paa"],
				[3, _gorgonDir + "apc_wheeled_03_ext_alpha_co.paa"]
			]]
		]
	],
	[ // Hatchback wreck paintjob
		"Hatchback_01_base_F",
		[
			["Rusty (Hatchback)", [[0, _wreckDir + "civilcar_extwreck_co.paa"]]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\waterbottle.paa", 30, 15],
	["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 30, 15],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 500, 250],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 2000, 1000],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 200, 100],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100],
	["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 100, 50],
	["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 1000, 500],
	["IP/Net Camera", "cctv_camera", localize "STR_WL_ShopDescriptions_CCTV_Camera", "addons\cctv\icons\camcorder.paa", 1000, 500],
  	["Camera Terminal", "cctv_base", localize "STR_WL_ShopDescriptions_CCTV_Base", "addons\cctv\icons\laptop.paa", 500, 250]
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
