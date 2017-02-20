// This file allows you to add content to the mission without conflict issues after each update of the original classnames.sqf
// If you want more modifications to be supported by this file, let's discuss it on the forums.



// *** SUPPORT STUFF ***

// Setting a value here will overwrite the original value found from the mission. Do that if you're doing a total conversion.
// Each of these should be unique, the same classnames for different purposes may cause various unpredictable issues with player actions. Or not. Just don't try.
FOB_typename = "Land_Cargo_HQ_V4_F";						// Default "Land_Cargo_HQ_V1_F";
FOB_box_typename = nil;					// Default "B_Slingload_01_Cargo_F";
FOB_truck_typename = "rhsusf_M988A4_REPAIR_BKIT_usarmy_wd";				// Default "B_Truck_01_box_F";
Arsenal_typename = nil;					// Default "B_supplyCrate_F";
Respawn_truck_typename = "rhsusf_M1083A1P2_B_wd_fmtv_usarmy";			// Default "B_Truck_01_medical_F";
huron_typename = "rhsusf_CH53E_USMC";					// Default "B_Heli_Transport_03_unarmed_F";
ammobox_b_typename = nil;				// Default "Box_NATO_AmmoVeh_F";
ammobox_o_typename = nil;				// Default "Box_East_AmmoVeh_F";
opfor_ammobox_transport = "rhsgref_nat_ural_open";			// Default "O_Truck_03_transport_F";    // Make sure this thing can transport ammo boxes (see box_transport_config down below) otherwise things will break
commander_classname = "rhsusf_usmc_marpat_wd_officer";				// Default "B_officer_F"
crewman_classname = "rhsusf_usmc_marpat_wd_crewman";				// Default "B_crew_F";
pilot_classname = "rhsusf_usmc_marpat_wd_helipilot";					// Default "B_Helipilot_F";





// *** FRIENDLIES ***

// Each array below represents one page of the build menu
// Format : [ "classname", manpower, ammo, fuel ]
// Example : [ "B_APC_Tracked_01_AA_F", 0, 40, 15 ],

// If overwrite is set to true, then the extension list will entirely replace the original list defined in classnames.sqf. Otherwise it will be appended to it.
// Useful for total conversions to RHS and such, without having to alter the original file.
infantry_units_overwrite = true;
infantry_units_extension = [
	["rhsusf_usmc_marpat_wd_officer",5,0,0],
	["rhsusf_usmc_marpat_wd_rifleman_m4",3,0,0],
	["rhsusf_usmc_marpat_wd_teamleader",4,0,0],
	["rhsusf_usmc_marpat_wd_helipilot",4,0,0],
	["rhsusf_usmc_marpat_wd_grenadier",3,0,0],
	["rhsusf_usmc_marpat_wd_marksman",3,0,0],
	["rhsusf_usmc_marpat_wd_sniper",4,5,0],
	["rhsusf_usmc_marpat_wd_riflemanat",4,10,0],
	["rhsusf_usmc_marpat_wd_engineer",3,0,0],
	["rhsusf_usmc_marpat_wd_combatcrewman",3,0,0],
	["rhsusf_usmc_marpat_wd_smaw",4,10,0],
	["rhsusf_usmc_marpat_wd_stinger",4,10,0],
	["rhsusf_usmc_marpat_wd_machinegunner",5,0,0],
	["rhsusf_usmc_marpat_wd_autorifleman_m249",5,0,0]
];

light_vehicles_overwrite = true;
light_vehicles_extension = [
	["rhsusf_rg33_m2_wd",0,10,3],
	["rhsusf_m113_usarmy",0,10,3],
	["rhsusf_m113_usarmy_M240",0,5,3],
	["rhsusf_m113_usarmy_MK19",0,20,3],
	["rhsusf_M1117_W",0,20,5],
	["rhsusf_m1025_w_s",0,0,3],
	["rhsusf_m1025_w_s_m2",0,10,3],
	["rhsusf_m1025_w_s_Mk19",0,20,3]
];

heavy_vehicles_overwrite = true;
heavy_vehicles_extension = [
	["RHS_M2A2_wd",0,25,15],
	["RHS_M2A2_BUSKI_WD",0,30,15],
	["RHS_M2A3_wd",0,35,15],
	["RHS_M2A3_BUSKI_wd",0,40,15],
	["RHS_M2A3_BUSKIII_wd",0,50,15],
	["rhsusf_m109_usarmy",0,150,25],
	["rhsusf_m1a1fep_wd",0,80,70]
];

air_vehicles_overwrite = true;
air_vehicles_extension = [
	["RHS_CH_47F",0,20,20],
	["RHS_UH1Y_UNARMED",0,10,25],
	["RHS_AH1Z_wd_GS",0,175,30],
	["RHS_AH1Z_wd",0,400,50],
	["rhsusf_f22",0,500,75],
	["RHS_A10",0,250,75]
];

static_vehicles_overwrite = true;
static_vehicles_extension = [
	["RHS_Stinger_AA_pod_USMC_WD",0,25,0],
	["RHS_TOW_TriPod_USMC_WD",0,30,0],
	["RHS_M252_USMC_WD",0,20,0],
	["RHS_M119_WD",0,50,0],
	["B_T_Mortar_01_F",0,50,0]
];

buildings_overwrite = true;
buildings_extension = [
	["Land_CncBarrierMedium4_F",0,0,0],
	["Land_CncWall4_F",0,0,0],
	["Land_CncShelter_F",0,0,0],
	["Land_HBarrier_01_line_3_green_F",0,0,0],
	["Land_HBarrier_01_line_5_green_F",0,0,0],
	["Land_HBarrier_01_big_4_green_F",0,0,0],
	["Land_HBarrier_01_line_1_green_F",0,0,0],
	["Land_HBarrier_01_wall_corner_green_F",0,0,0],
	["Land_HBarrier_01_wall_6_green_F",0,0,0],
	["Land_HBarrier_01_wall_4_green_F",0,0,0],
	["Land_HBarrier_01_big_tower_green_F",0,0,0],
	["Land_BagBunker_01_large_green_F",0,0,0],
	["Land_BagBunker_01_small_green_F",0,0,0],
	["Land_HBarrier_01_tower_green_F",0,0,0],
	["Land_PortableLight_single_F",0,0,0],
	["Land_LampHalogen_F",0,0,0],
	["CamoNet_BLUFOR_open_F",0,0,0],
	["CamoNet_BLUFOR_big_F",0,0,0],
	["Land_Cargo_House_V4_F",0,0,0],
	["Land_Cargo_Patrol_V4_F",0,0,0],
	["Flag_NATO_F",0,0,0],
	["Land_HelipadSquare_F",0,0,0],
	["Land_Razorwire_F",0,0,0],
	["Fort_RazorWire",0,0,0],
	["Land_BagFence_Round_F",0,0,0],
	["Land_ToolTrolley_02_F",0,0,0],
	["Land_WeldingTrolley_01_F",0,0,0],
	["Land_GasTank_02_F",0,0,0],
	["Land_Workbench_01_F",0,0,0],
	["Land_WaterTank_F",0,0,0],
	["Land_WaterBarrel_F",0,0,0],
	["Land_MetalCase_01_large_F",0,0,0],
	["CargoNet_01_box_F",0,0,0],
	["Land_CampingChair_V1_F",0,0,0],
	["Land_CampingChair_V2_F",0,0,0],
	["Land_CampingTable_F",0,0,0],
	["MapBoard_altis_F",0,0,0],
	["Land_Metal_rack_Tall_F",0,0,0],
	["PortableHelipadLight_01_blue_F",0,0,0],
	["Land_DieselGroundPowerUnit_01_F",0,0,0],
	["Land_Pallet_MilBoxes_F",0,0,0],
	["Land_PaperBox_open_full_F",0,0,0],
	["Land_ClutterCutter_large_F",0,0,0],
	["Flag_US_F",0,0,0],
	["Flag_UNO_F",0,0,0],
	["TargetBootcampHuman_F",0,0,0],
	["PortableHelipadLight_01_red_F",0,0,0],
	["Land_fort_artillery_nest_EP1",0,0,0],
	["Land_BagFence_01_long_green_F",0,0,0],
	["Land_Fort_Watchtower_EP1",0,0,0],
	["76n6ClamShell_EP1",0,0,0],
	["SignM_FOB_Revolve_EP1",0,0,0],
	["SignM_FARP_Winchester_EP1",0,0,0],
	["SignM_UN_Base_EP1",0,0,0],
	["Sign_Checkpoint_US_EP1",0,0,0],
	["Land_BarGate_F",0,0,0],
	["Land_Barrack2_EP1",0,0,0],
	["ACE_Wheel",0,0,0],
	["ACE_Track",0,0,0],
	["Land_ScrapHeap_1_F",0,0,0],
	["Land_Misc_Cargo1Eo_EP1",0,0,0],
	["Land_Misc_Cargo1E_EP1",0,0,0],
	["Land_Barrel_sand",0,0,0],
	["Barrels",0,0,0],
	["PowerGenerator_EP1",0,0,0],
	["Land_Toilet",0,0,0],
	["Fuel_can",0,0,0],
	["Land_GasTank_01_khaki_F",0,0,0],
	["Land_JetEngineStarter_01_",0,0,0],
	["Windsock_01_F",0,0,0],
	["Loudspeakers_EP",0,0,0],
	["AmmoCrates_NoInteractive_Large",0,0,0],
	["AmmoCrates_NoInteractive_Medium",0,0,0],
	["RoadCone",0,0,0],
	["Land_CamoNetVar_NATO_EP1",0,0,0]
];

support_vehicles_overwrite = false;		// If you're going to overwrite this, make sure you have at least Arsenal_typename, Respawn_truck_typename, FOB_box_typename and FOB_truck_typename in there
support_vehicles_extension = [
	["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",10,0,5],
	["rhsusf_M978A4_BKIT_usarmy_wd",10,0,5],
	["rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd",10,0,5]
];

// All the UAVs must be declared here, otherwise there shall be UAV controlling issues. Namely: you won't be able to control them.
uavs = [
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
opfor_sentry = "rhsgref_nat_rifleman";
opfor_rifleman = "rhsgref_nat_rifleman";
opfor_grenadier = "rhsgref_nat_grenadier";
opfor_squad_leader = "rhsgref_nat_commander";
opfor_team_leader = "rhsgref_nat_commander";
opfor_marksman = "rhsgref_nat_scout";
opfor_machinegunner = "rhsgref_nat_machinegunner";
opfor_heavygunner = "rhsgref_nat_pmil_machinegunner";
opfor_medic = "rhsgref_ins_g_medic";
opfor_rpg = "rhsgref_nat_grenadier_rpg";
opfor_at = "rhsgref_nat_grenadier_rpg";
opfor_aa = "rhsgref_nat_specialist_aa";
opfor_officer = "rhsgref_nat_warlord";
opfor_sharpshooter = "rhsgref_nat_militiaman_kar98k";
opfor_sniper = "rhsgref_ins_g_sniper";
opfor_engineer = "rhsgref_ins_g_engineer";
opfor_paratrooper = nil;

// OPFOR Vehicles to be used in secondary objectives
opfor_mrap = "rhsgref_BRDM2UM_ins_g";
opfor_mrap_armed = "rhsgref_BRDM2_ins_g";
opfor_transport_helo = "rhsgref_ins_g_Mi8amt";
opfor_transport_truck = "rhsgref_nat_ural_open";
opfor_fuel_truck = "rhsgref_nat_van_fuel";
opfor_ammo_truck = "rhsgref_ins_g_gaz66_ammo";
opfor_fuel_container = nil;
opfor_ammo_container = nil;
opfor_flag = "Flag_HorizonIslands_F";

// Militia infantry. Soldier classnames the game will pick from randomly
militia_squad_overwrite = false;
militia_squad_extension = [

];

// Militia vehicles to choose from
militia_vehicles_overwrite = false;
militia_vehicles_extension = [

];

// All the vehicles that can spawn as sector defenders and patrols
opfor_vehicles_overwrite = true;
opfor_vehicles_extension = [
	"rhsgref_nat_ural",
	"rhsgref_nat_ural_open",
	"rhsgref_nat_rual_Zu23",
	"rhsgref_nat_uaz_ags",
	"rhsgref_nat_uaz_dshkm",
	"rhsgref_nat_btr70",
	"rhsgref_ins_g_zsu234",
	"rhsgref_ins_g_bmd1",
	"rhsgref_ins_g_bmp2",
	"rhsgref_ins_g_t72ba"
];

// Same with lighter choices to be used  when the alert level is low
opfor_vehicles_low_intensity_overwrite = true;
opfor_vehicles_low_intensity_extension = [
	"rhsgref_nat_ural",
	"rhsgref_nat_ural_open",
	"rhsgref_nat_uaz_ags",
	"rhsgref_nat_uaz_dshkm"
];

// All the vehicles that can spawn as battlegroup members
opfor_battlegroup_vehicles_overwrite = true;
opfor_battlegroup_vehicles_extension = [
	"rhsgref_nat_uaz_ags",
	"rhsgref_nat_uaz_dshkm",
	"rhsgref_nat_btr70",
	"rhsgref_ins_g_zsu234",
	"rhsgref_ins_g_bmd1",
	"rhsgref_ins_g_bmp2",
	"rhsgref_ins_g_t72ba"
];

// Same with lighter choices to be used  when the alert level is low
opfor_battlegroup_vehicles_low_intensity_overwrite = true;
opfor_battlegroup_vehicles_low_intensity_extension = [
	"rhsgref_nat_ural",
	"rhsgref_nat_ural_open",
	"rhsgref_nat_uaz_ags",
	"rhsgref_nat_uaz_dshkm"
];

// All the vehicles that can spawn as battlegroup members (see above) and also hold 8 soldiers as passengers.
// If something in here can't hold all 8 soldiers then buggy behaviours may occur
opfor_troup_transports_overwrite = true;
opfor_troup_transports_extension = [
	"rhsgref_nat_ural",
	"rhsgref_nat_ural_open",
	"rhsgref_nat_btr70"
];

// Battlegroup members that will need to spawn in flight. Should be only helos but, who knows
opfor_choppers_overwrite = true;
opfor_choppers_extension = [
	"rhsgref_cdf_reg_Mi17Sh_UPK"
];

// Opfor military aircrafts
opfor_air_overwrite = true;
opfor_air_extension = [
	"rhsgref_cdf_su25"
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
	"RHS_A10",
	"RHS_AH1Z_wd_GS",
	"rhsusf_m1a1fep_wd",
	"RHS_M2A3_BUSKIII_wd",
	"rhsusf_m109_usarmy",
	"rhsusf_f22"
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
	"RHS_SPG9_Tripod_Bag"
];

// Configuration for ammo boxes transport
// First entry: classname
// Second entry: how far behind the vehicle the boxes should be unloaded
// Following entries: attachTo position for each box, the number of boxes that can be loaded is derived from the number of entries
box_transport_config_extension = [
	[ "greuh_eh101_gr", -6.5, [0,	4.2,	-1.45], [0,	2.5,	-1.45], [0,	0.8, -1.45], [0,	-0.9, -1.45] ]
];
