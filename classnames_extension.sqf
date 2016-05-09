// This file allows you to add content to the mission without conflict issues after each update of the original classnames.sqf
// If you want more modifications to be supported by this file, let's discuss it on the forums.



// *** SUPPORT STUFF ***

// Setting a value here will overwrite the original value found from the mission. Do that if you're doing a total conversion.
// Each of these should be unique, the same classnames for different purposes may cause various unpredictable issues with player actions. Or not. Just don't try.
FOB_typename = nil;						// Default "Land_Cargo_HQ_V1_F";
FOB_box_typename = nil;					// Default "B_Slingload_01_Cargo_F";
FOB_truck_typename = rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy;				// Default "B_Truck_01_box_F";
Arsenal_typename = nil;					// Default "B_supplyCrate_F";
Respawn_truck_typename = rhsusf_m113d_usarmy_unarmed;			// Default "B_Truck_01_medical_F";
huron_typename = RHS_UH60M_MEV2_d;					// Default "B_Heli_Transport_03_unarmed_F";
ammobox_b_typename = nil;				// Default "Box_NATO_AmmoVeh_F";
ammobox_o_typename = nil;				// Default "Box_East_AmmoVeh_F";
opfor_ammobox_transport = CUP_O_Ural_Open_TKA;			// Default "O_Truck_03_transport_F";    // Make sure this thing can transport ammo boxes (see box_transport_config down below) otherwise things will break
commander_classname = rhsusf_army_ucp_officer;				// Default "B_officer_F"
crewman_classname = rhsusf_army_ucp_combatcrewman;				// Default "B_crew_F";
pilot_classname = rhsusf_army_ucp_helicrew;					// Default "B_Helipilot_F";





// *** FRIENDLIES ***

// Each array below represents one page of the build menu
// Format : [ "classname", manpower, ammo, fuel ]
// Example : [ "B_APC_Tracked_01_AA_F", 0, 40, 15 ],

// If overwrite is set to true, then the extension list will entirely replace the original list defined in classnames.sqf. Otherwise it will be appended to it.
// Useful for total conversions to RHS and such, without having to alter the original file.
infantry_units_overwrite = false;
infantry_units_extension = [

];

light_vehicles_overwrite = false;
light_vehicles_extension = [
	["CUP_B_HMMWV_Crows_M2_USA",0,10,5],
	["CUP_B_HMMWV_Crows_MK19_USA",0,20,5],
	["CUP_B_HMMWV_M2_GPK_USA",0,10,10],
	["CUP_B_HMMWV_SOV_USA",0,40,3],
	["rhsusf_m998_w_4dr",0,0,2],
	["rhsusf_rg33_m2_d",0,10,3],
	["rhsusf_m113d_usarmy",0,10,3],
	["rhsusf_m113d_usarmy_M240",0,5,3],
	["rhsusf_m113d_usarmy_MK19",0,20,3],
	["rhsusf_m998_d_2dr_fulltop",0,0,3],
	["rhsusf_m998_d_2dr_halftop",0,0,3],
	["rhsusf_m998_d_2dr",0,0,3],
	["rhsusf_m998_d_4dr_fulltop",0,0,3],
	["rhsusf_m998_d_4dr_halftop",0,0,3],
	["rhsusf_m998_d_4dr",0,0,3],
	["rhsusf_m1025_d",0,0,3],
	["rhsusf_m1025_d_m2",0,10,3],
	["rhsusf_m1025_d_Mk19",0,20,3],
	["fsf_fnk_hmg_ce",0,10,3],
	["greuh_fnk_hmg_ce",0,10,3],
	["greuh_fnk_hmg_dsrt",0,10,3]
];

heavy_vehicles_overwrite = false;
heavy_vehicles_extension = [
	["I_APC_Wheeled_03_cannon_F",0,50,10],
	["CUP_B_M1126_ICV_M2_Desert_Slat",0,20,30],
	["CUP_B_M1126_ICV_M2_Desert",0,20,15],
	["CUP_B_M1126_ICV_MK19_Desert_Slat",0,30,30],
	["CUP_B_M1126_ICV_MK19_Desert",0,30,15],
	["CUP_B_M1128_MGS_Desert_Slat",0,60,30],
	["CUP_B_M1128_MGS_Desert",0,60,15],
	["CUP_B_M1130_CV_M2_Desert_Slat",0,60,30],
	["CUP_B_M1130_CV_M2_Desert",0,60,15],
	["greuh_pandur_wdld",0,50,10],
	["I_APC_tracked_03_cannon_F",0,40,15],
	["greuh_fv510_wdld",0,40,15],
	["greuh_fv510_dsrt",0,40,15],
	["RHS_M2A2",0,25,15],
	["RHS_M2A2_BUSKI",0,30,15],
	["RHS_M2A3",0,35,15],
	["RHS_M2A3_BUSKI",0,40,15],
	["RHS_M2A3_BUSKIII",0,50,15],
	["Steve_MBT_Kuma",0,100,25],
	["CUP_B_M270_DPICM_USA",0,400,60],
	["CUP_B_M270_HE_USA",0,350,60],
	["rhsusf_m109d_usarmy",0,150,25],
	["rhsusf_m1a1aimd_usarmy",0,80,70],
	["rhsusf_m1a1aim_tuski_d",0,90,70],
	["rhsusf_m1a2sep1d_usarmy",0,100,70],
	["rhsusf_m1a2sep1tuskid_usarmy",0,110,70],
	["rhsusf_m1a2sep1tuskiid_usarmy",0,110,80],
	["Burnes_FV4034_01",0,250,40]
];

air_vehicles_overwrite = false;
air_vehicles_extension = [
	["CUP_B_UH1Y_UNA_USMC",0,0,12],
	["CUP_B_UH1Y_GUNSHIP_USMC",0,50,12],
	["I_Heli_light_03_unarmed_F",0,0,12],
	["I_Heli_light_03_F",0,50,12],
	["JNS_Skycrane_BLU_Black",0,0,18],
	["RHS_CH_47F_light",0,20,20],
	["greuh_eh101_gr",0,0,25],
	["RHS_UH60M_d",0,10,25],
	["CUP_B_USMC_MQ9",0,20,30],
	["MV22",0,0,25],
	["RHS_AH1Z_wd_GS",0,175,30],
	["H_RAH66",0,200,30],
	["RHS_AH64D_wd",0,400,50],
	["FIR_F16C",0,100,30],
	["FIR_F15E",0,200,50],
	["FIR_F14D",0,150,40],
	["rhsusf_f22",0,500,75],
	["RHS_A10",0,250,75]
];

static_vehicles_overwrite = false;
static_vehicles_extension = [

];

buildings_overwrite = false;
buildings_extension = [

];

support_vehicles_overwrite = false;		// If you're going to overwrite this, make sure you have at least Arsenal_typename, Respawn_truck_typename, FOB_box_typename and FOB_truck_typename in there
support_vehicles_extension = [
	["JNS_Skycrane_Pod_Bench_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Ammo_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Medical_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Repair_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Transport_BLU_Black",5,0,0]
];

// All the UAVs must be declared here, otherwise there shall be UAV controlling issues. Namely: you won't be able to control them.
uavs = [
	"CUP_B_USMC_MQ9"
];

// Pre-made squads for the commander build menu. These shouldn't exceed 10 members.
// Light infantry squad
blufor_squad_inf_light = [

];

// Heavy infantry squad
blufor_squad_inf = [

];

// AT specialists squad
blufor_squad_at = [

];

// AA specialists squad
blufor_squad_aa = [

];

// Force recon squad
blufor_squad_recon = [

];

// Paratroopers squad
blufor_squad_para = [

];







// *** BADDIES ***

// All OPFOR infantry. Defining a value here will replace the default value from the original mission.
opfor_sentry = CUP_O_TK_Soldier;
opfor_rifleman = CUP_O_TK_Soldier_Backpack;
opfor_grenadier = CUP_O_TK_Soldier_GL;
opfor_squad_leader = CUP_O_TK_Soldier_SL;
opfor_team_leader = CUP_O_TK_Soldier_SL;
opfor_marksman = CUP_O_TK_Sniper;
opfor_machinegunner = CUP_O_TK_Soldier_MG;
opfor_heavygunner = CUP_O_TK_Soldier_MG;
opfor_medic = CUP_O_TK_Medic;
opfor_rpg = CUP_O_TK_Soldier_AT;
opfor_at = CUP_O_TK_Soldier_HAT;
opfor_aa = CUP_O_TK_Soldier_AA;
opfor_officer = CUP_O_TK_Officer;
opfor_sharpshooter = CUP_O_TK_Sniper;
opfor_sniper = CUP_O_TK_Sniper_KSVK;
opfor_engineer = CUP_O_TK_Engineer;
opfor_paratrooper = nil;

// OPFOR Vehicles to be used in secondary objectives
opfor_mrap = CUP_O_LR_Transport_TKA;
opfor_mrap_armed = CUP_O_LR_MG_TKA;
opfor_transport_helo = CUP_O_MI6T_TKA;
opfor_transport_truck = CUP_O_Ural_TKA;
opfor_fuel_truck = CUP_O_Ural_Refuel_TKA;
opfor_ammo_truck = CUP_O_Ural_Reammo_TKA;
opfor_fuel_container = nil;
opfor_ammo_container = nil;
opfor_flag = FlagCarrierTakistan_EP1;

// Militia infantry. Soldier classnames the game will pick from randomly
militia_squad_overwrite = true;
militia_squad_extension = [
	"CUP_O_TK_INS_Soldier",
	"CUP_O_TK_INS_Soldier_FNFAL",
	"CUP_O_TK_INS_Soldier_Enfield",
	"CUP_O_TK_INS_Soldier_GL",
	"CUP_O_TK_INS_Soldier_AR",
	"CUP_O_TK_INS_Soldier_TL",
	"CUP_O_TK_INS_Guerilla_Medic"
];

// Militia vehicles to choose from
militia_vehicles_overwrite = True;
militia_vehicles_extension = [
	"CUP_O_Ural_ZU23_TKM",
	"CUP_O_LR_SPG9_TKM",
	"CUP_O_LR_MG_TKM",
	"CUP_O_BTR40_MG_TKM",
	"I_MU_mercs_Offroad_01_armed_F",
	"LOP_AFR_BTR60",
	"LOP_AFR_M113_W",
	"LOP_AFR_T72BA",
	"I_MU_mercs_Offroad_01_armed_F"
];

// All the vehicles that can spawn as sector defenders and patrols
opfor_vehicles_overwrite = false;
opfor_vehicles_extension = [
	"CUP_O_LR_MG_TKA",
	"CUP_O_LR_SPG9_TKA",
	"CUP_O_UAZ_AGS30_TKA",
	"CUP_O_UAZ_MG_TKA",
	"CUP_O_UAZ_SPG9_TKA",
	"CUP_O_Ural_ZU23_TKA",
	"CUP_O_BMP1_TKA",
	"CUP_O_BMP1_TKA",
	"CUP_O_BMP2_TKA",
	"CUP_O_BMP2_ZU_TKA",
	"CUP_O_BRDM2_TKA",
	"CUP_O_BRDM2_ATGM_TKA",
	"CUP_O_BTR40_MG_TKA",
	"CUP_O_BTR60_TK",
	"CUP_O_M113_TKA",
	"CUP_O_T34_TKA",
	"CUP_O_T55_TK",
	"CUP_O_T72_TKA",
	"CUP_O_ZSU23_TK"

];

// Same with lighter choices to be used  when the alert level is low
opfor_vehicles_low_intensity_overwrite = true;
opfor_vehicles_low_intensity_extension = [
	"CUP_O_LR_MG_TKA",
	"CUP_O_LR_SPG9_TKA",
	"CUP_O_UAZ_AGS30_TKA",
	"CUP_O_UAZ_MG_TKA",
	"CUP_O_UAZ_SPG9_TKA",
	"CUP_O_Ural_ZU23_TKA"
];

// All the vehicles that can spawn as battlegroup members
opfor_battlegroup_vehicles_overwrite = true;
opfor_battlegroup_vehicles_extension = [
	"CUP_O_BRDM2_TKA",
	"CUP_O_BRDM2_ATGM_TKA",
	"CUP_O_BTR40_MG_TKA",
	"CUP_O_Ural_TKA",
	"CUP_O_BTR60_TK",
	"CUP_O_M113_TKA",
	"CUP_O_T34_TKA",
	"CUP_O_Mi24_D_TK",
	"CUP_O_T55_TK",
	"CUP_O_T72_TKA"
];

// Same with lighter choices to be used  when the alert level is low
opfor_battlegroup_vehicles_low_intensity_overwrite = true;
opfor_battlegroup_vehicles_low_intensity_extension = [
	"CUP_O_LR_MG_TKA",
	"CUP_O_LR_SPG9_TKA",
	"CUP_O_Ural_TKA",
	"CUP_O_UAZ_AGS30_TKA",
	"CUP_O_BTR60_TK",
	"CUP_O_UAZ_MG_TKA",
	"CUP_O_UAZ_SPG9_TKA",
	"CUP_O_Ural_ZU23_TKA"
];

// All the vehicles that can spawn as battlegroup members (see above) and also hold 8 soldiers as passengers.
// If something in here can't hold all 8 soldiers then buggy behaviours may occur
opfor_troup_transports_overwrite = true;
opfor_troup_transports_extension = [
	"CUP_O_Ural_TKA",
	"CUP_O_BTR60_TK",
];

// Battlegroup members that will need to spawn in flight. Should be only helos but, who knows
opfor_choppers_overwrite = true;
opfor_choppers_extension = [
	"CUP_O_Mi24_D_TK"

];

// Opfor military aircrafts
opfor_air_overwrite = true;
opfor_air_extension = [
	"CUP_O_Su25_TKA"
];







// Other stuff

// Civilians
civilians_overwrite = false;
civilians_extension = [

];

// Civilian vehicles
civilian_vehicles_overwrite = false;
civilian_vehicles_extension = [

];

// Everything the AI troups should be able to resupply from
ai_resupply_sources_extension = [

];

// Everything that can resupply other vehicles
vehicle_repair_sources_extension = [

];
vehicle_rearm_sources_extension = [

];
vehicle_refuel_sources_extension = [

];

// Elite vehicles that should be unlocked through military base capture.
elite_vehicles_extension = [
	"Steve_MBT_Kuma",
	"Burnes_FV4034_01",
	"RHS_AH1Z_wd_GS",
	"H_RAH66",
	"RHS_AH64D_wd",
	"JS_JC_FA18E",
	"JS_JC_FA18F",
	"greuh_pandur_wdld",
	"RHS_M2A3_BUSKIII_wd",
	"usaf_f22",
	"USAF_F35A",
	"rhsusf_m1a2sep1tuskiid_usarmy",
	"FIR_F16C",
	"FIR_F15E"
];

// Blacklisted arsenal items such as deployable weapons  that should be bought instead
// Useless if you're using a predefined arsenal in arsenal.sqf
blacklisted_from_arsenal_extension = [
	"RHS_Podnos_Bipod_Bag",
	"RHS_Podnos_Gun_Bag",
	"RHS_Metis_Gun_Bag",
	"RHS_Metis_Tripod_Bag",
	"RHS_AGS30_Tripod_Bag",
	"RHS_AGS30_Gun_Bag",
	"RHS_DShkM_Gun_Bag",
	"RHS_DShkM_TripodHigh_Bag",
	"RHS_DShkM_TripodLow_Bag",
	"RHS_Kord_Tripod_Bag",
	"RHS_Kord_Gun_Bag",
	"RHS_NSV_Tripod_Bag",
	"RHS_NSV_Gun_Bag",
	"RHS_SPG9_Gun_Bag",
	"RHS_SPG9_Tripod_Bag",
];

// Configuration for ammo boxes transport
// First entry: classname
// Second entry: how far behind the vehicle the boxes should be unloaded
// Following entries: attachTo position for each box, the number of boxes that can be loaded is derived from the number of entries
box_transport_config_extension = [
	[ "greuh_eh101_gr", -6.5, [0,	4.2,	-1.45], [0,	2.5,	-1.45], [0,	0.8, -1.45], [0,	-0.9, -1.45] ]
];