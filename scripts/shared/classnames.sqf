

// !! IF YOU WANT TO EDIT THIS FOR MODDING PURPOSES, PLEASE USE CLASSNAMES_EXTENSIONS.SQF INSTEAD !!
// If you know what you're doing then sure, proceed :)




if ( isNil "FOB_typename" ) then { FOB_typename = "Land_Cargo_HQ_V1_F"; };
if ( isNil "FOB_box_typename" ) then { FOB_box_typename = "B_Slingload_01_Cargo_F"; };
if ( isNil "FOB_truck_typename" ) then { FOB_truck_typename = "rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy"; };
if ( isNil "Arsenal_typename" ) then { Arsenal_typename = "B_supplyCrate_F"; };
if ( isNil "Respawn_truck_typename" ) then { Respawn_truck_typename = "rhsusf_M977A4_BKIT_M2_usarmy_d"; };
if ( isNil "huron_typename" ) then { huron_typename = "RHS_UH60M_MEV2_d"; };
if ( isNil "ammobox_b_typename" ) then { ammobox_b_typename = "Box_NATO_AmmoVeh_F"; };
if ( isNil "ammobox_o_typename" ) then { ammobox_o_typename = "Box_East_AmmoVeh_F"; };
if ( isNil "opfor_ammobox_transport" ) then { opfor_ammobox_transport = "CUP_O_Ural_Open_TKA"; };
if ( isNil "commander_classname" ) then { commander_classname = "B_officer_F"; };
if ( isNil "crewman_classname" ) then { crewman_classname = "rhsusf_army_ocp_combatcrewman" };
if ( isNil "pilot_classname" ) then { pilot_classname = "rhsusf_army_ocp_helipilot" };

infantry_units = [
	["rhsusf_army_ucp_rifleman_1stcav",2,0,0],
	["rhsusf_army_ucp_grenadier",3,0,0],
	["rhsusf_army_ucp_autorifleman",3,0,0],
	["rhsusf_army_ucp_medic",3,0,0],
	["rhsusf_army_ucp_rifleman",3,0,0],
	["rhsusf_army_ucp_engineer",3,0,0],
	["rhsusf_army_ucp_riflemanat",4,0,0],
	["rhsusf_army_ucp_marksman",5,0,0],
	["rhsusf_army_ucp_machinegunner",5,0,0],
	["rhsusf_usmc_recon_marpat_wd_rifleman_fast",4,0,0],
	["rhsusf_navy_sarc_w_fast",4,0,0],
	["rhsusf_usmc_recon_marpat_wd_teamleader_fast",5,0,0],
	["rhsusf_usmc_recon_marpat_wd_marksman_fast",8,0,0],
	["rhsusf_army_ucp_aa",5,10,0],
	["rhsusf_army_ucp_javelin",5,10,0],
	["rhsusf_army_ucp_sniper_m107",10,0,0],
	["rhsusf_army_ocp_combatcrewman",1,0,0],
	["rhsusf_army_ocp_helipilot",1,0,0]
];
if ( isNil "infantry_units_extension" ) then { infantry_units_extension = [] };
if ( isNil "infantry_units_overwrite" ) then { infantry_units_overwrite = false };
if ( infantry_units_overwrite ) then { infantry_units = infantry_units_extension; } else { infantry_units = infantry_units + infantry_units_extension; };

light_vehicles = [
	["CUP_B_HMMWV_Crows_M2_USA",0,10,5],
	["CUP_B_HMMWV_Crows_MK19_USA",0,20,5],
	["CUP_B_HMMWV_M2_GPK_USA",0,10,10],
	["CUP_B_HMMWV_SOV_USA",0,40,3],
	["rhsusf_m998_w_4dr",0,0,2],
	["rhsusf_rg33_m2_d",0,10,3],
	["rhsusf_m113d_usarmy",0,10,3],
	["rhsusf_m113d_usarmy_M240",0,5,3],
	["rhsusf_m113d_usarmy_MK19",0,20,3],
	["rhsusf_M1117_D",0,20,5],
	["rhsusf_m998_d_2dr_fulltop",0,0,3],
	["rhsusf_m998_d_2dr_halftop",0,0,3],
	["rhsusf_m998_d_2dr",0,0,3],
	["rhsusf_m998_d_4dr_fulltop",0,0,3],
	["rhsusf_m998_d_4dr_halftop",0,0,3],
	["rhsusf_m998_d_4dr",0,0,3],
	["rhsusf_m1025_d",0,0,3],
	["rhsusf_m1025_d_m2",0,10,3],
	["rhsusf_m1025_d_Mk19",0,20,3],
	["rhsusf_m998_w_2dr_fulltop",0,0,3],
	["rhsusf_m998_w_2dr_halftop",0,0,3],
	["rhsusf_m998_w_2dr",0,0,3],
	["rhsusf_m998_w_4dr_fulltop",0,0,3],
	["rhsusf_m998_w_4dr_halftop",0,0,3],
	["rhsusf_m998_w_4dr",0,0,3],
	["rhsusf_m1025_w",0,0,3],
	["rhsusf_m1025_w_m2",0,10,3],
	["rhsusf_m1025_w_Mk19",0,20,3],
	["fsf_fnk_hmg_ce",0,10,3],
	["greuh_fnk_hmg_ce",0,10,3],
	["greuh_fnk_hmg_dsrt",0,10,3]
];
if ( isNil "light_vehicles_extension" ) then { light_vehicles_extension = [] };
if ( isNil "light_vehicles_overwrite" ) then { light_vehicles_overwrite = false };
if ( light_vehicles_overwrite ) then { light_vehicles = light_vehicles_extension; } else { light_vehicles = light_vehicles + light_vehicles_extension; };

heavy_vehicles = [
	["I_APC_Wheeled_03_cannon_F",0,50,10],
	["CUP_B_M1126_ICV_M2_Desert_Slat",0,20,30],
	["CUP_B_M1126_ICV_M2_Desert",0,20,15],
	["CUP_B_M1126_ICV_MK19_Desert_Slat",0,30,30],
	["CUP_B_M1126_ICV_MK19_Desert",0,30,15],
	["CUP_B_M1128_MGS_Desert_Slat",0,60,30],
	["CUP_B_M1128_MGS_Desert",0,60,15],
	["CUP_B_M1129_MC_MK19_Desert_Slat",0,60,30],
	["CUP_B_M1129_MC_MK19_Desert",0,60,15],
	["CUP_B_M163_USA",0,40,3],
	["greuh_pandur_wdld",0,50,10],
	["I_APC_tracked_03_cannon_F",0,40,15],
	["greuh_fv510_wdld",0,40,15],
	["greuh_fv510_dsrt",0,40,15],
	["RHS_M2A2",0,25,15],
	["RHS_M2A2_BUSKI",0,30,15],
	["RHS_M2A3",0,35,15],
	["RHS_M2A3_BUSKI",0,40,15],
	["RHS_M2A3_BUSKIII",0,50,15],
	["RHS_M6",0,55,15],
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
if ( isNil "heavy_vehicles_extension" ) then { heavy_vehicles_extension = [] };
if ( isNil "heavy_vehicles_overwrite" ) then { heavy_vehicles_overwrite = false };
if ( heavy_vehicles_overwrite ) then { heavy_vehicles = heavy_vehicles_extension; } else { heavy_vehicles = heavy_vehicles + heavy_vehicles_extension; };

air_vehicles = [
	["RHS_UH1Y_d",0,10,12],
	["RHS_UH1Y_d_GS",0,50,12],
	["I_Heli_light_03_unarmed_F",0,0,12],
	["I_Heli_light_03_F",0,50,12],
	["JNS_Skycrane_BLU_Black",0,0,18],
	["RHS_CH_47F_light",0,20,20],
	["greuh_eh101_gr",0,0,25],
	["RHS_UH60M_d",0,10,25],
	["CUP_B_USMC_MQ9",0,20,30],
	["CUP_B_MV22_USMC_RAMPGUN",0,20,25],
	["RHS_AH1Z_wd_GS",0,175,30],
	["RHS_AH1Z",0,180,30],
	["RHS_AH64DGrey",0,200,30],
	["RHS_AH64D",0,200,30],
	["RHS_AH64D_GS",0,200,30],
	["RHS_AH64D_CS",0,200,30],
	["H_RAH66",0,200,30],
	["RHS_AH64D_wd",0,400,50],
	["FIR_F16C",0,100,30],
	["FIR_F15E",0,200,50],
	["FIR_F14D",0,150,40],
	["rhsusf_f22",0,500,75],
	["RHS_MELB_MH6M",0,0,10],
	["RHS_MELB_H6M",0,0,10],
	["RHS_MELB_AH6M_H",0,30,10],
	["RHS_MELB_AH6M_L",0,10,10],
	["RHS_MELB_AH6M_M",0,20,10],
	["RHS_C130J",0,200,75],
	["RHS_A10_AT",0,275,75],
	["RHS_A10",0,250,75]
];
if ( isNil "air_vehicles_extension" ) then { air_vehicles_extension = [] };
if ( isNil "air_vehicles_overwrite" ) then { air_vehicles_overwrite = false };
if ( air_vehicles_overwrite ) then { air_vehicles = air_vehicles_extension; } else { air_vehicles = air_vehicles + air_vehicles_extension; };

static_vehicles = [
	["RHS_Stinger_AA_pod_D",0,25,0],
	["RHS_TOW_TriPod_WD",0,30,0],
	["RHS_M252_WD",0,20,0],
	["RHS_M119_WD",0,50,0],
	["B_Mortar_01_F",0,50,0]
];
if ( isNil "static_vehicles_extension" ) then { static_vehicles_extension = [] };
if ( isNil "static_vehicles_overwrite" ) then { static_vehicles_overwrite = false };
if ( static_vehicles_overwrite ) then { static_vehicles = static_vehicles_extension; } else { static_vehicles = static_vehicles + static_vehicles_extension; };

buildings = [
	["Land_CncBarrierMedium4_F",0,0,0],
	["Land_CncWall4_F",0,0,0],
	["Land_CncShelter_F",0,0,0],
	["Land_HBarrier_5_F",0,0,0],
	["Land_HBarrierBig_F",0,0,0],
	["Land_HBarrierWall6_F",0,0,0],
	["Land_HBarrierWall_corner_F",0,0,0],
	["Land_HBarrierTower_F",0,0,0],
	["Land_BagBunker_Large_F",0,0,0],
	["Land_BagBunker_Small_F",0,0,0],
	["Land_BagBunker_Tower_F",0,0,0],
	["Land_PortableLight_single_F",0,0,0],
	["Land_LampHalogen_F",0,0,0],
	["CamoNet_BLUFOR_open_F",0,0,0],
	["CamoNet_BLUFOR_big_F",0,0,0],
	["Land_Cargo_House_V1_F",0,0,0],
	["Land_Cargo_Patrol_V1_F",0,0,0],
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
	["Land_BagFenceLong",0,0,0],
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
if ( isNil "buildings_extension" ) then { buildings_extension = [] };
if ( isNil "buildings_overwrite" ) then { buildings_overwrite = false };
if ( buildings_overwrite ) then { buildings = buildings_extension; } else { buildings = buildings + buildings_extension; };

support_vehicles = [
	[Arsenal_typename,10,0,0],
	[Respawn_truck_typename,20,0,5],
	[FOB_box_typename,30,50,0],
	[FOB_truck_typename,30,50,5],
	["B_APC_Tracked_01_CRV_F",0,30,10],
	["C_Offroad_01_repair_F",5,0,2],
	["rhsusf_M977A4_REPAIR_BKIT_usarmy_d",10,0,5],
	["rhsusf_M978A4_BKIT_usarmy_d",10,0,5],
	["rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d",10,0,5],
	["B_Slingload_01_Repair_F",5,0,0],
	["B_Slingload_01_Fuel_F",5,0,0],
	["B_Slingload_01_Ammo_F",5,0,0],
	["Box_NATO_AmmoVeh_F",0,154,0],
	["Box_East_AmmoVeh_F",0,115,0]
];
if ( isNil "support_vehicles_extension" ) then { support_vehicles_extension = [] };
if ( isNil "support_vehicles_overwrite" ) then { support_vehicles_overwrite = false };
if ( support_vehicles_overwrite ) then { support_vehicles = support_vehicles_extension; } else { support_vehicles = support_vehicles + support_vehicles_extension; };

if ( isNil "blufor_squad_inf_light" ) then { blufor_squad_inf_light = [] };
if ( count blufor_squad_inf_light == 0 ) then { blufor_squad_inf_light = [ "B_Soldier_SL_F","B_Soldier_TL_F","B_Soldier_GL_F","B_soldier_AR_F","B_Soldier_GL_F","B_medic_F","B_Soldier_LAT_F","B_Soldier_F","B_Soldier_F" ]; };
if ( isNil "blufor_squad_inf" ) then { blufor_squad_inf = [] };
if ( count blufor_squad_inf == 0 ) then { blufor_squad_inf = [ "B_Soldier_SL_F","B_Soldier_TL_F","B_Soldier_AR_F","B_HeavyGunner_F","B_medic_F","B_Soldier_GL_F","B_Soldier_LAT_F","B_Soldier_LAT_F","B_soldier_M_F","B_Sharpshooter_F" ]; };
if ( isNil "blufor_squad_at" ) then { blufor_squad_at = [] };
if ( count blufor_squad_at == 0 ) then { blufor_squad_at = [ "B_Soldier_SL_F","B_soldier_AT_F","B_soldier_AT_F","B_soldier_AT_F","B_medic_F","B_soldier_F" ]; };
if ( isNil "blufor_squad_aa" ) then { blufor_squad_aa = [] };
if ( count blufor_squad_aa == 0 ) then { blufor_squad_aa = [ "B_Soldier_SL_F","B_soldier_AA_F","B_soldier_AA_F","B_soldier_AA_F","B_medic_F","B_soldier_F" ]; };
if ( isNil "blufor_squad_recon" ) then { blufor_squad_recon = [] };
if ( count blufor_squad_recon == 0 ) then { blufor_squad_recon = [ "B_recon_TL_F","B_recon_F","B_recon_exp_F","B_recon_medic_F","B_recon_LAT_F","B_recon_LAT_F","B_recon_M_F","B_Recon_Sharpshooter_F","B_recon_F" ]; };
if ( isNil "blufor_squad_para" ) then { blufor_squad_para = [] };
if ( count blufor_squad_para == 0 ) then { blufor_squad_para = [ "B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F","B_soldier_PG_F" ]; };
if ( isNil "blufor_squad_inf_light" ) then { blufor_squad_inf_light = [] };
if ( count blufor_squad_inf_light == 0 ) then { blufor_squad_inf_light = [ "B_Soldier_SL_F","B_Soldier_TL_F","B_Soldier_GL_F","B_soldier_AR_F","B_Soldier_GL_F","B_medic_F","B_Soldier_LAT_F","B_Soldier_F","B_Soldier_F"]; };
if ( isNil "uavs" ) then { uavs = [] }; uavs = [] + uavs + [ "B_UAV_01_F","B_UAV_02_F","B_UAV_02_CAS_F","B_UGV_01_F","CUP_B_USMC_MQ9","B_UGV_01_rcws_F" ];
if ( isNil "elite_vehicles_extension" ) then { elite_vehicles_extension = [] }; elite_vehicles = [] + elite_vehicles_extension + ["B_UGV_01_rcws_F","B_MBT_01_TUSK_F","B_MBT_01_arty_F","B_MBT_01_mlrs_F","B_Heli_Attack_01_F","B_Plane_CAS_01_F","B_UAV_02_F","B_UAV_02_CAS_F"];
if ( isNil "ai_resupply_sources_extension" ) then { ai_resupply_sources_extension = [] };
ai_resupply_sources = [] + ai_resupply_sources_extension + [ Respawn_truck_typename, huron_typename, Arsenal_typename, "B_Slingload_01_Ammo_F", "B_APC_Tracked_01_CRV_F", "B_Truck_01_ammo_F", "JNS_Skycrane_Pod_Ammo_BLU_Black" ];
if ( isNil "vehicle_repair_sources_extension" ) then { vehicle_repair_sources_extension = [] };
vehicle_repair_sources = [] + vehicle_repair_sources_extension + [ "B_APC_Tracked_01_CRV_F", "C_Offroad_01_repair_F", "B_Truck_01_Repair_F", "B_Slingload_01_Repair_F", "JNS_Skycrane_Pod_Repair_BLU_Black" ];
if ( isNil "vehicle_rearm_sources_extension" ) then { vehicle_rearm_sources_extension = [] };
vehicle_rearm_sources = [] + vehicle_rearm_sources_extension + [ "B_APC_Tracked_01_CRV_F", "B_Truck_01_ammo_F", "B_Slingload_01_Ammo_F", "JNS_Skycrane_Pod_Ammo_BLU_Black" ];
if ( isNil "vehicle_refuel_sources_extension" ) then { vehicle_refuel_sources_extension = [] };
vehicle_refuel_sources = [] + vehicle_refuel_sources_extension +  [ "B_APC_Tracked_01_CRV_F", "B_Truck_01_fuel_F", "B_Slingload_01_Fuel_F" ];
squads = [
	[blufor_squad_inf_light,20,0,0],
	[blufor_squad_inf,30,0,0],
	[blufor_squad_at,20,25,0],
	[blufor_squad_aa,20,25,0],
	[blufor_squad_recon,25,0,0],
	[blufor_squad_para,20,0,0]
];

if ( isNil "opfor_sentry") then { opfor_sentry = "rhs_msv_rifleman"; };
if ( isNil "opfor_rifleman") then { opfor_rifleman = "rhs_msv_rifleman"; };
if ( isNil "opfor_grenadier") then { opfor_grenadier = "rhs_msv_grenadier"; };
if ( isNil "opfor_squad_leader") then { opfor_squad_leader = "rhs_msv_sergeant"; };
if ( isNil "opfor_team_leader") then { opfor_team_leader = "rhs_msv_junior_sergeant"; };
if ( isNil "opfor_marksman") then { opfor_marksman = "rhs_msv_marksman"; };
if ( isNil "opfor_machinegunner") then { opfor_machinegunner = "rhs_msv_machinegunner"; };
if ( isNil "opfor_heavygunner") then { opfor_heavygunner = "rhs_msv_arifleman"; };
if ( isNil "opfor_medic") then { opfor_medic = "rhs_msv_medic"; };
if ( isNil "opfor_rpg") then { opfor_rpg = "rhs_msv_LAT"; };
if ( isNil "opfor_at") then { opfor_at = "rhs_msv_at"; };
if ( isNil "opfor_aa") then { opfor_aa = "rhs_msv_aa"; };
if ( isNil "opfor_officer") then { opfor_officer = "rhs_msv_officer"; };
if ( isNil "opfor_sharpshooter") then { opfor_sharpshooter = "rhs_mvd_izlom_marksman"; };
if ( isNil "opfor_sniper") then { opfor_sniper = "rhs_mvd_izlom_rifleman_asval"; };
if ( isNil "opfor_engineer") then { opfor_engineer = "rhs_mvd_izlom_sergeant"; };
if ( isNil "opfor_paratrooper") then { opfor_paratrooper = "rhs_mvd_izlom_sergeant"; };
if ( isNil "opfor_mrap") then { opfor_mrap = "rhs_tigr_3camo_msv"; };
if ( isNil "opfor_mrap_armed") then { opfor_mrap_armed = "rhs_tigr_sts_3camo_msv"; };
if ( isNil "opfor_transport_helo") then { opfor_transport_helo = "RHS_Mi8mt_vdv"; };
if ( isNil "opfor_transport_truck") then { opfor_transport_truck = "RHS_Ural_MSV_01"; };
if ( isNil "opfor_fuel_truck") then { opfor_fuel_truck = "RHS_Ural_MSV_01"; };
if ( isNil "opfor_ammo_truck") then { opfor_ammo_truck = "rhs_gaz66_ammo_msv"; };
if ( isNil "opfor_fuel_container") then { opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F"; };
if ( isNil "opfor_ammo_container") then { opfor_ammo_container = "rhs_gear_crate"; };
if ( isNil "opfor_flag") then { opfor_flag = "rhs_Flag_Russia_F"; };

militia_squad = [
	"rhs_vdv_recon_rifleman",
	"rhs_vdv_recon_rifleman_ak103",
	"rhs_vdv_recon_sergeant",
	"rhs_vdv_recon_rifleman_scout",
	"rhs_vdv_recon_grenadier_scout",
	"rhs_vdv_recon_arifleman_scout",
	"rhs_vdv_recon_marksman",
	"rhs_vdv_recon_rifleman_asval"
];
if ( isNil "militia_squad_extension" ) then { militia_squad_extension = [] };
if ( isNil "militia_squad_overwrite" ) then { militia_squad_overwrite = false };
if ( militia_squad_overwrite ) then { militia_squad = militia_squad_extension; } else { militia_squad = militia_squad + militia_squad_extension; };

militia_vehicles = [
	"rhs_tigr_sts_3camo_vv",
	"rhs_btr80a_vv",
	"rhs_btr80a_vv",
	"rhs_bmp2d_vv",
	"rhs_tigr_m_3camo_vv"
];
if ( isNil "militia_vehicles_extension" ) then { militia_vehicles_extension = [] };
if ( isNil "militia_vehicles_overwrite" ) then { militia_vehicles_overwrite = false };
if ( militia_vehicles_overwrite ) then { militia_vehicles = militia_vehicles_extension; } else { militia_vehicles = militia_vehicles + militia_vehicles_extension; };

opfor_vehicles = [
	"rhs_bmp2_msv",
	"rhs_btr80a_msv",
	"rhs_t80uk",
	"rhs_t80um",
	"rhs_zsu234_aa",
	"rhs_t90a_tv",
	"rhs_btr70_msv",
	"rhs_tigr_sts_3camo_msv",
	"rhs_t72bd_tv",
	"rhs_t80bvk",
	"rhs_t80ue1",
	"rhs_t72bc_tv",
	"rhs_t90_tv",
	"rhs_t72ba_tv",
	"rhs_t72bb_tv"
];
if ( isNil "opfor_vehicles_extension" ) then { opfor_vehicles_extension = [] };
if ( isNil "opfor_vehicles_overwrite" ) then { opfor_vehicles_overwrite = false };
if ( opfor_vehicles_overwrite ) then { opfor_vehicles = opfor_vehicles_extension; } else { opfor_vehicles = opfor_vehicles + opfor_vehicles_extension; };

opfor_vehicles_low_intensity = [
	"rhs_tigr_sts_3camo_vv",
	"rhs_btr80a_vv",
	"rhs_btr80a_vv",
	"rhs_bmp2d_vv",
	"rhs_tigr_m_3camo_vv"
];
if ( isNil "opfor_vehicles_low_intensity_extension" ) then { opfor_vehicles_low_intensity_extension = [] };
if ( isNil "opfor_vehicles_low_intensity_overwrite" ) then { opfor_vehicles_low_intensity_overwrite = false };
if ( opfor_vehicles_low_intensity_overwrite ) then { opfor_vehicles_low_intensity = opfor_vehicles_low_intensity_extension; } else { opfor_vehicles_low_intensity = opfor_vehicles_low_intensity + opfor_vehicles_low_intensity_extension; };

opfor_battlegroup_vehicles = [
	"rhs_tigr_sts_3camo_msv",
	"rhs_t72bd_tv",
	"rhs_t80ue1",
	"rhs_t80bvk",
	"rhs_t72bc_tv",
	"rhs_t90_tv",
	"rhs_t90a_tv",
	"RHS_Ural_MSV_01",
	"rhs_btr80a_msv",
	"CUP_O_T72_TKA"
];
if ( isNil "opfor_battlegroup_vehicles_extension" ) then { opfor_battlegroup_vehicles_extension = [] };
if ( isNil "opfor_battlegroup_vehicles_overwrite" ) then { opfor_battlegroup_vehicles_overwrite = false };
if ( opfor_battlegroup_vehicles_overwrite ) then { opfor_battlegroup_vehicles = opfor_battlegroup_vehicles_extension; } else { opfor_battlegroup_vehicles = opfor_battlegroup_vehicles + opfor_battlegroup_vehicles_extension; };

opfor_battlegroup_vehicles_low_intensity = [
	"rhs_tigr_sts_3camo_msv",
	"rhs_gaz66_flat_msv",
	"rhs_t72bd_tv",
	"rhs_btr70_msv",
	"rhs_tigr_m_3camo_vv",
	"rhs_btr80a_vv",
	"rhs_bmp2d_vv"
];
if ( isNil "opfor_battlegroup_vehicles_low_intensity_extension" ) then { opfor_battlegroup_vehicles_low_intensity_extension = [] };
if ( isNil "opfor_battlegroup_vehicles_low_intensity_overwrite" ) then { opfor_battlegroup_vehicles_low_intensity_overwrite = false };
if ( opfor_battlegroup_vehicles_low_intensity_overwrite ) then { opfor_battlegroup_vehicles_low_intensity = opfor_battlegroup_vehicles_low_intensity_extension; } else { opfor_battlegroup_vehicles_low_intensity = opfor_battlegroup_vehicles_low_intensity + opfor_battlegroup_vehicles_low_intensity_extension; };

opfor_troup_transports = [
	"RHS_Ural_MSV_01",
	"rhs_gaz66_flat_msv",
	"rhs_btr80a_msv"
];
if ( isNil "opfor_troup_transports_extension" ) then { opfor_troup_transports_extension = [] };
if ( isNil "opfor_troup_transports_overwrite" ) then { opfor_troup_transports_overwrite = false };
if ( opfor_troup_transports_overwrite ) then { buildinopfor_troup_transportsgs = opfor_troup_transports_extension; } else { opfor_troup_transports = opfor_troup_transports + opfor_troup_transports_extension; };

opfor_choppers = [
	"RHS_Mi24P_CAS_vdv",
	"RHS_Ka52_vvs",
	"RHS_Mi8mt_vdv"
];
if ( isNil "opfor_choppers_extension" ) then { opfor_choppers_extension = [] };
if ( isNil "opfor_choppers_overwrite" ) then { opfor_choppers_overwrite = false };
if ( opfor_choppers_overwrite ) then { opfor_choppers = opfor_choppers_extension; } else { opfor_choppers = opfor_choppers + opfor_choppers_extension; };

opfor_air = [
	"RHS_Su25SM_KH29_vvs",
	"RHS_T50_vvs_054",
	"RHS_T50_vvs_blueonblue"
];
if ( isNil "opfor_air_extension" ) then { opfor_air_extension = [] };
if ( isNil "opfor_air_overwrite" ) then { opfor_air_overwrite = false };
if ( opfor_air_overwrite ) then { opfor_air = opfor_air_extension; } else { opfor_air = opfor_air + opfor_air_extension; };


civilians = [
	"C_man_1",
	"C_man_polo_6_F",
	"C_man_polo_3_F",
	"C_man_polo_2_F",
	"C_man_polo_4_F",
	"C_man_polo_5_F",
	"C_man_polo_1_F",
	"C_man_p_beggar_F",
	"C_man_1_2_F",
	"C_man_p_fugitive_F",
	"C_man_hunter_1_F",
	"C_journalist_F",
	"C_man_shorts_2_F",
	"C_man_w_worker_F"
];
if ( isNil "civilians_extension" ) then { civilians_extension = [] };
if ( isNil "civilians_overwrite" ) then { civilians_overwrite = false };
if ( civilians_overwrite ) then { civilians = civilians_extension; } else { civilians = civilians + civilians_extension; };

civilian_vehicles = [
	"C_Hatchback_01_F",
	"C_Hatchback_01_sport_F",
	"C_Offroad_01_F",
	"C_SUV_01_F",
	"C_Van_01_transport_F",
	"C_Van_01_box_F",
	"C_Van_01_fuel_F",
	"C_Quadbike_01_F"
];
if ( isNil "civilian_vehicles_extension" ) then { civilian_vehicles_extension = [] };
if ( isNil "civilian_vehicles_overwrite" ) then { civilian_vehicles_overwrite = false };
if ( civilian_vehicles_overwrite ) then { civilian_vehicles = civilian_vehicles_extension; } else { civilian_vehicles = civilian_vehicles + civilian_vehicles_extension; };

GRLIB_blacklisted_from_arsenal = [
	"B_Respawn_Sleeping_bag_blue_F",
	"B_Respawn_Sleeping_bag_brown_F",
	"B_Respawn_TentDome_F",
	"B_Respawn_Sleeping_bag_F",
	"B_Respawn_TentA_F",
	"I_GMG_01_A_weapon_F",
	"O_GMG_01_A_weapon_F",
	"B_GMG_01_A_weapon_F",
	"I_HMG_01_A_weapon_F",
	"B_HMG_01_A_weapon_F",
	"O_HMG_01_A_weapon_F",
	"O_HMG_01_weapon_F",
	"B_HMG_01_weapon_F",
	"I_HMG_01_weapon_F",
	"I_HMG_01_high_weapon_F",
	"O_HMG_01_high_weapon_F",
	"B_HMG_01_high_weapon_F",
	"O_GMG_01_weapon_F",
	"I_GMG_01_weapon_F",
	"B_GMG_01_weapon_F",
	"B_GMG_01_high_weapon_F",
	"I_GMG_01_high_weapon_F",
	"O_GMG_01_high_weapon_F",
	"I_Mortar_01_support_F",
	"B_Mortar_01_support_F",
	"O_Mortar_01_support_F",
	"B_Mortar_01_weapon_F",
	"O_Mortar_01_weapon_F",
	"I_Mortar_01_weapon_F",
	"B_HMG_01_support_F",
	"O_HMG_01_support_F",
	"I_HMG_01_support_F",
	"B_HMG_01_support_high_F",
	"O_HMG_01_support_high_F",
	"I_HMG_01_support_high_F",
	"B_AA_01_weapon_F",
	"O_AA_01_weapon_F",
	"I_AA_01_weapon_F",
	"B_AT_01_weapon_F",
	"O_AT_01_weapon_F",
	"I_AT_01_weapon_F",
	"I_UAV_01_backpack_F",
	"B_UAV_01_backpack_F",
	"O_UAV_01_backpack_F"
];
if ( isNil "blacklisted_from_arsenal_extension" ) then { blacklisted_from_arsenal_extension = [] };
GRLIB_blacklisted_from_arsenal = [] + blacklisted_from_arsenal_extension + GRLIB_blacklisted_from_arsenal;

box_transport_config = [
	[ "B_Truck_01_transport_F", -6.5, [0,	-0.4,	0.4], [0,	-2.1,	0.4], [0,	-3.8,	0.4] ],
	[ "B_Truck_01_covered_F", -6.5, [0,	-0.4,	0.4], [0,	-2.1,	0.4], [0,	-3.8,	0.4] ],
	[ "O_Truck_03_transport_F", -6.5, [0,	-0.8,	0.4], [0,	-2.4,	0.4], [0,	-4.0,	0.4] ],
	[ "O_Truck_03_covered_F", -6.5, [0,	-0.8,	0.4], [0,	-2.4,	0.4], [0,	-4.0,	0.4] ],
	[ "B_Heli_Transport_03_F", -7.5, [0,	2.2,	-1], [0,	0.8,	-1], [0,	-1.0, -1] ],
	[ "B_Heli_Transport_03_unarmed_F", -7.5, [0,	2.2,	-1], [0,	0.8,	-1], [0,	-1.0, -1] ],
	[ "I_Heli_Transport_02_F", -6.5, [0,	4.2,	-1.45], [0,	2.5,	-1.45], [0,	0.8, -1.45], [0,	-0.9, -1.45] ]
];
if ( isNil "box_transport_config_extension" ) then { box_transport_config_extension = [] };
box_transport_config = [] + box_transport_config + box_transport_config_extension;

infantry_units = [ infantry_units ] call F_filterMods;
light_vehicles = [ light_vehicles ] call F_filterMods;
heavy_vehicles = [ heavy_vehicles ] call F_filterMods;
air_vehicles = [ air_vehicles ] call F_filterMods;
support_vehicles = [ support_vehicles ] call F_filterMods;
static_vehicles = [ static_vehicles ] call F_filterMods;
buildings = [ buildings ] call F_filterMods;
build_lists = [[],infantry_units,light_vehicles,heavy_vehicles,air_vehicles,static_vehicles,buildings,support_vehicles,squads];
militia_squad = [ militia_squad , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
militia_vehicles = [ militia_vehicles , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_vehicles = [ opfor_vehicles , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_vehicles_low_intensity = [ opfor_vehicles_low_intensity , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_battlegroup_vehicles = [ opfor_battlegroup_vehicles , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_battlegroup_vehicles_low_intensity = [ opfor_battlegroup_vehicles_low_intensity , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_troup_transports = [ opfor_troup_transports , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_choppers = [ opfor_choppers , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
opfor_air = [ opfor_air , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
civilians = [ civilians , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
civilian_vehicles = [ civilian_vehicles , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
military_alphabet = ["Alpha","Bravo","Charlie","Delta","Echo","Foxtrot","Golf","Hotel","India","Juliet","Kilo","Lima","Mike","November","Oscar","Papa","Quebec","Romeo","Sierra","Tango","Uniform","Victor","Whiskey","X-Ray","Yankee","Zulu"];
land_vehicles_classnames = (opfor_vehicles + militia_vehicles);
opfor_squad_low_intensity = [opfor_team_leader,opfor_machinegunner,opfor_medic,opfor_rpg,opfor_sentry,opfor_sentry,opfor_sentry,opfor_sentry];
opfor_squad_8_standard = [opfor_squad_leader,opfor_team_leader,opfor_machinegunner,opfor_heavygunner,opfor_medic,opfor_marksman,opfor_grenadier,opfor_rpg];
opfor_squad_8_infkillers = [opfor_squad_leader,opfor_machinegunner,opfor_machinegunner,opfor_heavygunner,opfor_medic,opfor_marksman,opfor_sharpshooter,opfor_sniper];
opfor_squad_8_tankkillers = [opfor_squad_leader,opfor_medic,opfor_machinegunner,opfor_rpg,opfor_rpg,opfor_at,opfor_at,opfor_at];
opfor_squad_8_airkillers = [opfor_squad_leader,opfor_medic,opfor_machinegunner,opfor_rpg,opfor_rpg,opfor_aa,opfor_aa,opfor_aa];
all_resistance_troops = [] + militia_squad;
all_hostile_classnames = (land_vehicles_classnames + opfor_air + opfor_choppers + opfor_troup_transports + opfor_vehicles_low_intensity);
{ land_vehicles_classnames pushback (_x select 0); } foreach (heavy_vehicles + light_vehicles);
air_vehicles_classnames = [] + opfor_choppers;
{ air_vehicles_classnames pushback (_x select 0); } foreach air_vehicles;
markers_reset = [99999,99999,0];
zeropos = [0,0,0];
squads_names = [ localize "STR_LIGHT_RIFLE_SQUAD", localize "STR_RIFLE_SQUAD", localize "STR_AT_SQUAD", localize "STR_AA_SQUAD",  localize "STR_RECON_SQUAD", localize "STR_PARA_SQUAD" ];
boats_names = [ "B_Boat_Transport_01_F", "B_Boat_Armed_01_minigun_F" ];
ammobox_transports_typenames = [];
{ ammobox_transports_typenames pushback (_x select 0) } foreach box_transport_config;
ammobox_transports_typenames = [ ammobox_transports_typenames , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
elite_vehicles = [ elite_vehicles , { [ _x ] call F_checkClass } ]  call BIS_fnc_conditionalSelect;
original_resistance = [ "O_G_Soldier_SL_F","O_G_Soldier_A_F","O_G_Soldier_AR_F","O_G_medic_F","O_G_engineer_F","O_G_Soldier_exp_F","O_G_Soldier_GL_F","O_G_Soldier_M_F","O_G_Soldier_F","O_G_Soldier_LAT_F","O_G_Soldier_lite_F","O_g_soldier_unarmed_f","O_G_Sharpshooter_F","O_g_survivor_F","O_G_Soldier_TL_F"];
opfor_infantry = [opfor_sentry,opfor_rifleman,opfor_grenadier,opfor_squad_leader,opfor_team_leader,opfor_marksman,opfor_machinegunner,opfor_heavygunner,opfor_medic,opfor_rpg,opfor_at,opfor_aa,opfor_officer,opfor_sharpshooter,opfor_sniper,opfor_engineer];
GRLIB_intel_table = "Land_CampingTable_small_F";
GRLIB_intel_chair = "Land_CampingChair_V2_F";
GRLIB_intel_file = "Land_File1_F";
GRLIB_intel_laptop = "Land_Laptop_device_F";
GRLIB_ignore_colisions_when_building = [
	"Land_Flush_Light_red_F",
	"Land_Flush_Light_green_F",
	"Land_Flush_Light_yellow_F",
	"Land_runway_edgelight",
	"Land_runway_edgelight_blue_F",
	"Land_HelipadSquare_F",
	"Sign_Sphere100cm_F",
	"TMR_Autorest_Georef",
	"Land_ClutterCutter_large_F"
];
GRLIB_sar_wreck = "Land_Wreck_Heli_Attack_01_F";
GRLIB_sar_fire = "test_EmptyObjectForFireBig";
