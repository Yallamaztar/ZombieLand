//Decompiled with SeriousHD-'s GSC Decompiler

/*
 * Zombieland made by Cooljay Decompiled (v2.1)
 * https://cabconmodding.com/threads/zombieland-by-cooljay-black-ops-ii-gamemode-update-8.6947/
 */

#include maps/mp/gametypes/_globallogic_score;
#include maps/mp/gametypes/_globallogic_utils;
#include maps/mp/gametypes/_gamelogic;
#include maps/mp/gametypes/_globallogic;
#include maps/mp/_scoreevents;
#include maps/mp/teams/_teams;
#include maps/mp/_ambientpackage;
#include maps/mp/_utility;
#include common_scripts/utility;
#include maps/mp/gametypes/_rank;
#include maps/mp/gametypes/_hud;
#include maps/mp/gametypes/_hud_util;
#include maps/mp/gametypes/_hud_message;
#include maps/mp/gametypes/_spawnlogic;
#include maps/mp/gametypes/_spawning;
#include maps/mp/killstreaks/_turret_killstreak;
#include maps/mp/killstreaks/_ai_tank;
#include maps/mp/killstreaks/_remotemissile;
#include maps/mp/killstreaks/_killstreaks;
#include maps/mp/killstreaks/_supplydrop;
#include maps/mp/gametypes/_weapons;
init()
{
	precacheitem( "minigun_wager_mp" );
	precacheitem( "m32_wager_mp" );
	precachemodel( "t6_wpn_supply_drop_ally" );
	precachemodel( "t6_wpn_supply_drop_axis" );
	precachemodel( "t6_wpn_supply_drop_trap" );
	precachemodel( "mp_flag_green" );
	precachemodel( "mp_flag_red" );
	precachemodel( "mp_flag_neutral" );
	precachemodel( "defaultactor" );
	precachemodel( "german_shepherd" );
	precachemodel( "p6_bullet_train_car" );
	precachemodel( "veh_t6_nuketown_2020_car02_whole" );
	precachemodel( "veh_t6_nuketown_2020_car01_whole" );
	precachemodel( "veh_t6_police_car_destructible" );
	precachemodel( "veh_iw_civ_firetruck" );
	precachemodel( "veh_iw_civ_ambulance_whole" );
	precachemodel( "veh_iw_civ_suv_whole_red" );
	precachemodel( "veh_iw_civ_suv_whole_black" );
	precachemodel( "veh_iw_civ_suv_whole_beige" );
	precachemodel( "veh_t6_police_car_destructible" );
	precachemodel( "p6_dockside_container_lrg_orange" );
	precachemodel( "p6_door_automatic_mp_drone" );
	precachemodel( "berlin_me_dumpster_close_green" );
	precachemodel( "t5_foliage_treewall_large" );
	precachemodel( "t5_foliage_tree_aquilaria01v2" );
	precachemodel( "t5_foliage_plants_tropic09" );
	precachemodel( "t5_foliage_bush06" );
	precachemodel( "p6_strangler_fig_tree_no_vines_sway" );
	precachemodel( "p6_tree_angel_oak_moss_no_vines_sway" );
	precachemodel( "veh_t6_civ_van_sprinter_whole" );
	precachemodel( "veh_t6_civ_truck_radiant_white_mp" );
	precachemodel( "veh_t6_civ_van_sprinter_whole" );
	precachemodel( "veh_t6_civ_car_compact" );
	precachemodel( "veh_t6_civ_car_compact_red" );
	precachemodel( "veh_iw_tank_t72_static_body" );
	precachemodel( "veh_t6_civ_sportscar_whole_silver" );
	precachemodel( "veh_t6_civ_sportscar_whole_yellow" );
	precachemodel( "collision_clip_wall_128x128x10" );
	precachemodel( "collision_clip_wall_512x512x10" );
	precachemodel( "collision_clip_wall_256x256x10" );
	precachemodel( "collision_clip_512x512x10" );
	precachemodel( "com_pallet_2" );
	precachemodel( "veh_t6_civ_car_compact" );
	precachemodel( "t5_vehicle_tiara_whole_brown" );
	precachemodel( "fxanim_gp_cloth_sheet_med03_mod" );
	precachemodel( "p6_street_vendor_goods_table02" );
	precachemodel( "p_glo_corrugated_metal1" );
	precachemodel( "t5_veh_rcbomb_gib_med" );
	precacheshader( "mp_hud_cluster_status" );
	precacheshader( "emblem_bg_bo2_nuclear_killer" );
	precacheshader( "hud_remote_missile_target" );
	precacheshader( "headicon_dead" );
	precacheshader( "line_horizontal" );
	level.firefxeffect = loadfx( "weapon/talon/fx_muz_talon_rocket_flash_1p" );
	if( getdvar( "mapname" ) == "mp_nightclub" )
	{
		precachemodel( "mlv/p_test_karma_wings_lit" );
		precachemodel( "mlv/p_test_karma_right_interior" );
		precachemodel( "veh_t6_civ_sportscar_whole_orange" );
		precachemodel( "p6_nightclub_fountain_stairs" );
		precachemodel( "collision_clip_256x256x10" );
		precachemodel( "collision_clip_128x128x10" );
		precachemodel( "collision_clip_wall_512x512x10" );
		precachemodel( "foliage_grass_flowerplants_squareclump" );
		precachemodel( "iw_rooftop_ac_unit" );
		precachemodel( "p6_door_metal_maintenance_right" );
		precachemodel( "p6_mall_arch_module" );
		precachemodel( "p_cub_coral_rock_sml_02_caustic" );
		precachemodel( "mlv/mp_nightclub_bush_vista_01" );
		precachemodel( "p6_karma_shrub_clump_02" );
		precachemodel( "p6_nightclub_planter" );
		precachemodel( "props_foliage_horsetail" );
		precachemodel( "p6_metal_sculpture_base_03" );
		precachemodel( "p6_mall_module_03_lit" );
		precachemodel( "p6_mall_module_02_lit" );
		precachemodel( "mlv/p6_triangle_geo_floor" );
		precachemodel( "collision_clip_512x512x10" );
		precachemodel( "collision_clip_256x256x10" );
		precachemodel( "p6_mp_nightclub_jewelry_case_long" );
		precachemodel( "mlv/p6_nightclub_aquarium" );
		precachemodel( "p6_mannequin_female" );
		precachemodel( "collision_clip_wall_64x64x10" );
		precachemodel( "p_pent_double_doors" );
		precachemodel( "mlv/p6_mp_nightclub_bar_counter" );
		precachemodel( "p6_test_karma_holo_screen1_05" );
		precachemodel( "p6_collosus_resort" );
		precachemodel( "p6_rug_modern02" );
		precachemodel( "p6_abstract_art_03" );
		precachemodel( "p6_nightclub_pillar" );
		precachemodel( "p6_mall_kiosk" );
		precachemodel( "collision_clip_128x128x10" );
		precachemodel( "dub_rock_background_01" );
		precachemodel( "p_test_karma_club_couch_circle" );
		precachemodel( "p6_mp_la_lobby_glass_fixture_small" );
		precachemodel( "mlv/p6_tree_palm_date_med_sway" );
		precachemodel( "p6_dance_floor_blue" );
	}
	level.activeziplines = 0;
	level.activedoors = 0;
	level.activemysteryboxes = 0;
	level.activeobjectiveindex = 0;
	level.zombiecount = 0;
	level.humancount = 0;
	level.currentgametime = 0;
	level.ingraceperiod = 0;
	level.scoreroundbased = 0;
	level.allow_teamchange = 0;
	level.turretsspawned = 0;
	level.botshavebeenspawned = 0;
	level.timerspawned = 0;
	level.zombieselectioninprogress = 1;
	level.zombieficationtime = 20;
	level.gametime = 1320;
	level.survivorcashbonus = 135;
	level.moneyperkill = 250;
	level.moneyperassist = 195;
	level.moneyperkillzombie = 625;
	level.moneyperzombiedeath = 125;
	level.teamscoreperkill = 0;
	level.teamscoreperdeath = 0;
	level.teamscoreperheadshot = 0;
	level.turretlimit = 4;
	level.amountofbotstospawn = 11;
	level.spawnbots = 0;
	level.usecustommaps = 1;
	level.hostcantbecomezombie = 1;
	level.enableinformationbar = 1;

	// CHANGE ME
	// some fucked up text here fuck that (line: 755)
	level.informationbartext = "Welcome To ZombieLand ^12.1 ^7| [{+speed_throw}] + [{+melee}] = Open The Menu | [{+gostand}] = Select | [{+usereload}] = Back | Original By ^5Shark^7 | ^11.1 ^7- ^12.1 ^7By ^6Skonafid^7 | ";
	
	level.supplydropmodel = "t6_wpn_supply_drop_ally";
	level.supplydropmodelaxis = "t6_wpn_supply_drop_axis";
	level.supplydropmodeltrap = "t6_wpn_supply_drop_trap";
	level.teleportflagstartmodel = "mp_flag_green";
	level.teleportflagendmodel = "mp_flag_red";
	level.teleportflagbothmodel = "mp_flag_neutral";
	level.deads = "headicon_dead";
	level.esps = "hud_remote_missile_target";
	wait 11;
	level.nuke = [];
	level.activenukes = 0;
	level thread overflowfix();
	level thread monitorgame();
	level thread monitortime();
	level thread onplayerconnect();
	level thread zombiecountdown();
	level thread informationbar();
	level thread threadmonitor();

}

onplayerconnect()
{
	level endon( "game_ended" );
	for(;;)
	{
	level waittill( "connected", player );
	level.ingraceperiod = 0;
	player.status = "human";
	player.humandied = 0;
	player.threadsready = 0;
	player.startingzombie = 0;
	player.menuinit = 0;
	player.givecash = 1;
	player.money = 50;
	player.health = 100;
	player.moneymultiplier = 1;
	itempricesetup();
	player givemenu();
	player thread onplayerspawned();
	player thread onplayerdied();
	player thread onplayerleave();
	wait 0.05;
	}

}

onplayerspawned()
{
	self endon( "disconnect" );
	level endon( "game_ended" );
	level.ingraceperiod = 0;
	self.healthmonitor = 0;
	self.threadsready = 1;
	self thread weaponmonitior();
	self thread hudmonitor();
	self thread teammonitor();
	self thread teammonitorcustom();
	self thread damagemonitor();
	self thread zombiesuicide();
	self setupteamdvars();
	self changeteam( "allies" );
	self notify( "menuresponse", "changeclass", "class_smg" );
	for(;;)
	{
	self waittill( "spawned_player" );
	if( isfirstspawn )
	{
		if( self ishost() )
		{
			isfirstspawn = 0;
			self freezecontrols( 0 );
			setmatchtalkflag( "EveryoneHearsEveryone", 1 );
			wait 0.5;
			thread antiendgametoggle();
			level.hear = 1;
		}
	}
	if( level.usecustommaps && !(IsDefined( level.custommapready )) )
	{
		level thread setupcustommap();
		level.custommapready = 1;
		self.xsped = 0;
		self.fatty = 0;
		self.metallo = 0;
		self.terrorista = 0;
		self.doge = 0;
		self show();
		self notify( "stop_LinkTo_Model" );
		self.linkto_model_object delete();
	}
	if( IsDefined( self.infraredon ) )
	{
		self giveinfraredvisionraw();
	}
	if( self.status == "zombie" )
	{
		self setmodel( "c_usa_mp_seal6_sniper_fb" );
	}
	else
	{
		self setmodel( "c_usa_mp_seal6_lmg_fb" );
	}
	self givespawnweapons( self.status );
	wait 0.1;
	self givespawnweapons( self.status );
	wait 0.05;
	}

}

onplayerdied()
{
	self endon( "disconnect" );
	level endon( "game_ended" );
	for(;;)
	{
	self waittill( "death" );
	if( level.zombieficationtime == 0 && self.status != "zombie" )
	{
		self notify( "infected" );
		level.infectedplayers[getplayername( self )] = "infected";
		self changeteam( "axis" );
		self resetdvars();
		self.status = "zombie";
		self.maxhealth = 100;
		self.currentdeaths = 0;
		self.pers["deaths"] = 0;
		level thread humandied();
		self.money = 0;
		self thread createmenu();
		wait 0.1;
		self thread closemenus();
	}
	if( self.suicide == 1 )
	{
		if( self.money >= level.moneyperzombiedeath )
		{
			self.money = self.money - level.moneyperzombiedeath * self.moneymultiplier;
			self.suicide = 0;
			if( self.status == "zombie" )
			{
				self.xsped = 0;
			}
			self.fatty = 0;
			self.metallo = 0;
			self.terrorista = 0;
			self.doge = 0;
			self show();
			self notify( "stop_LinkTo_Model" );
			self.linkto_model_object delete();
			self iprintlnbold( "Suiciding wont give you any money" );
		}
	}
	wait 0.05;
	}

}

onplayerleave()
{
	level endon( "game_ended" );
	self endon( "playerLeave" );
	for(;;)
	{
	self waittill( "disconnect" );
	self destroyplayerhuds();
	self notify( "playerLeave" );
	wait 0.05;
	}

}

humandied()
{
	foreach( player in level.players )
	{
		player.humandied = 1;
		wait 0.01;
	}

}

threadmonitor()
{
	level endon( "game_ended" );
	level endon( "winnerDeclared" );
	wait 1;
	for(;;)
	{
	if( level.rankedmatch && !(level.inprematchperiod) )
	{
		level.gameforfeited = 0;
		level notify( "abort forfeit" );
	}
	foreach( player in level.players )
	{
		if( !(player.threadsready) )
		{
			player.status = "human";
			player.threadsready = 1;
			player.givecash = 1;
			player.money = 50;
			player.health = 100;
			player.moneymultiplier = 1;
			player.humandied = 0;
			player.startingzombie = 0;
			level.ingraceperiod = 0;
			itempricesetup();
			player.menuinit = 0;
			player givemenu();
			player thread onplayerspawned();
			player thread onplayerdied();
			player thread onplayerleave();
			player suicide();
			wait 0.05;
		}
		if( IsDefined( level.infectedplayers[ getplayername( player )] ) )
		{
			if( player.status == "human" && player.pers[ "team"] == "allies" && isalive( player ) && level.infectedplayers[ getplayername( player )] == "infected" )
			{
				player suicide();
				wait 0.05;
			}
		}
	}
	wait 0.05;
	}

}

teammonitor()
{
	self endon( "disconnect" );
	for(;;)
	{
	if( self issplitscreen() )
	{
	}
	if( isalive( self ) && self.pers[ "team"] != "axis" && self.startingzombie )
	{
		self changeteam( "axis" );
		self.status = "zombie";
		wait 0.1;
		self notify( "menuresponse", "changeclass", "class_smg" );
		self.startingzombie = 0;
	}
	if( self.status == "human" && self.pers[ "team"] == "axis" )
	{
		self changeteam( "allies" );
		self.status = "human";
		wait 0.1;
		self notify( "menuresponse", "changeclass", "class_smg" );
	}
	if( self.status == "zombie" && self.pers[ "team"] == "allies" )
	{
		self changeteam( "axis" );
		self.status = "zombie";
		wait 0.1;
		self notify( "menuresponse", "changeclass", "class_smg" );
	}
	if( self.status == "human" && self.pers[ "team"] == "axis" )
	{
		if( level.zombieficationtime > 0 && !(level.inprematchperiod) )
		{
			self changeteam( "allies" );
			self.status = "human";
			wait 1;
			if( self.status != "zombie" && level.zombieficationtime > 0 && self.pers[ "team"] == "axis" )
			{
				self changeteam( "allies" );
				self.status = "human";
				wait 0.5;
				self notify( "menuresponse", "changeclass", "class_smg" );
				if( self.pers[ "team"] == "axis" )
				{
					self changeteam( "axis" );
					self.status = "zombie";
					wait 0.1;
					self notify( "menuresponse", "changeclass", "class_smg" );
				}
			}
		}
	}
	wait 0.01;
	}

}

teammonitorcustom()
{
	self endon( "disconnect" );
	for(;;)
	{
	self waittill( "joined_team" );
	wait 0.1;
	if( self.pers[ "team"] == "axis" && self.status == "human" )
	{
		self changeteam( "allies" );
		self.status = "human";
		wait 0.1;
		self notify( "menuresponse", "changeclass", "class_smg" );
	}
	if( self.pers[ "team"] == "allies" && self.status == "zombie" )
	{
		self changeteam( "axis" );
		self.status = "zombie";
		wait 0.1;
		self notify( "menuresponse", "changeclass", "class_smg" );
		self thread closemenus();
	}
	wait 0.05;
	}

}

damagemonitor()
{
	self endon( "disconnect" );
	for(;;)
	{
	if( self.status == "zombie" )
	{
		self waittill( "damage", damage, attacker, direction, point, type, tagname, modelname, partname, weaponname );
		if( type == "MOD_FALLING" )
		{
			self.givecash = 0;
			self waittill( "spawned_player" );
			self.givecash = 1;
		}
	}
	wait 0.01;
	}

}

monitorgame()
{
	level endon( "game_ended" );
	level endon( "winnerDeclared" );
	level.timetopausegame = 10;
	wait 1;
	for(;;)
	{
	if( !(level.inprematchperiod) )
	{
		if( level.currentgametime == level.timetopausegame )
		{
			pausetimer();
		}
		level.zombiecount = 0;
		level.humancount = 0;
		wait 0.05;
		foreach( player in level.players )
		{
			if( player.status == "zombie" )
			{
				level.zombiecount = level.zombiecount + 1;
			}
			if( player.status == "human" )
			{
				level.humancount = level.humancount + 1;
			}
			if( level.zombieselectioninprogress )
			{
				level.zombiecount = 1337;
			}
			wait 0.05;
		}
		if( !(level.zombieselectioninprogress)level.zombieselectioninprogress && level.zombieficationtime == 0 )
		{
			level thread selectrandomplayers();
		}
		if( level.humancount == 0 && level.zombiecount == level.players.size )
		{
			level thread finishgame();
			level thread endgame( "axis", "Zombies Win" );
			level notify( "winnerDeclared" );
			level notify( "game_ended" );
		}
		if( level.currentgametime == level.gametime )
		{
			level thread finishgame();
			level thread endgame( "allies", "Humans Win" );
			level notify( "winnerDeclared" );
			level notify( "game_ended" );
		}
		wait 0.05;
	}
	wait 0.05;
	}

}

finishgame()
{
	level.timehud fadeovertime( 0.5 );
	level.timehud.alpha = 0;
	level.clockhud fadeovertime( 0.5 );
	level.clockhud.alpha = 0;
	level thread destroyhuds();

}

monitortime()
{
	level endon( "game_ended" );
	level endon( "winnerDeclared" );
	wait 1;
	if( level.timerspawned && !(level.inprematchperiod) )
	{
		if( level.currentgametime != level.gametime )
		{
			level.currentgametime = level.currentgametime + 1;
		}
		else
		{
			level notify( "timelimit_reached" );
		}
	}
	wait 1;
	?;//Jump here. This may be a loop, else, continue, or break. Please fix this code section to re-compile.

}

weaponmonitior()
{
	self endon( "disconnect" );
	level endon( "game_ended" );
	level endon( "winnerDeclared" );
	for(;;)
	{
	if( level.zombieficationtime != 0 && level.inprematchperiod && isalive( self ) && self.status == "human" )
	{
		self.currentweapon = self getcurrentweapon();
		if( self.currentweapon != level.playerspawnweapon )
		{
			self.status = "human";
			self givespawnweapons( self.status );
			wait 2;
		}
	}
	wait 0.05;
	}

}

zombiesuicide()
{
	if( self.suicide == 1 )
	{
		if( self.money >= level.moneyperzombiedeath )
		{
			self.money = self.money - level.moneyperzombiedeath * self.moneymultiplier;
			self.suicide = 0;
			if( self.status == "zombie" )
			{
				self iprintlnbold( "^5Why'd You Kill Yourself?" );
			}
		}
	}

}

zombiecountdown()
{
	level endon( "game_ended" );
	level endon( "winnerDeclared" );
	level endon( "zombieficationDone" );
	wait 1;
	for(;;)
	{
	if( !(level.timerspawned)level.timerspawned )
	{
		level.timehud = self drawtext( "Time Remaining: ", "objective", 2, 0, -30, ( 1, 1, 1 ), 0, ( 0, 0, 1 ), 0.5, 3, 1 );
		level.timehud.alignx = "center";
		level.timehud.aligny = "top";
		level.timehud.horzalign = "center";
		level.timehud.vertalign = "top";
		level.timehud fadeovertime( 0.5 );
		level.timehud.alpha = 1;
		level.clockhud = self drawtext( "", "objective", 2, 75, -30, ( 1, 1, 1 ), 0, ( 0, 0, 1 ), 0.5, 3, 1 );
		level.clockhud.alignx = "center";
		level.clockhud.aligny = "top";
		level.clockhud.horzalign = "center";
		level.clockhud.vertalign = "top";
		level.clockhud settimer( level.gametime );
		level.clockhud fadeovertime( 0.5 );
		level.clockhud.alpha = 1;
		level.timerspawned = 1;
	}
	if( !(level.inprematchperiod)level.inprematchperiod )
	{
		iprintlnbold( "^1Zombiefication In " + ( level.zombieficationtime + " Seconds" ) );
		wait 5;
		level.zombieficationtime = level.zombieficationtime - 5;
	}
	if( level.zombieficationtime == 0 )
	{
		level thread selectrandomplayers();
		iprintlnbold( "^1Zombies Have Been Released..." );
		level notify( "zombieficationDone" );
	}
	wait 0.05;
	}

}

hudmonitor()
{
	self endon( "disconnect" );
	level endon( "game_ended" );
	level endon( "winnerDeclared" );
	self storehuds();
	self.currentkills = self.pers[ "kills"];
	self.currentdeaths = self.pers[ "deaths"];
	self.currentassists = self.pers[ "assists"];
	for(;;)
	{
	if( self.givecash )
	{
		if( self.humandied == 1 )
		{
			if( self.status == "human" )
			{
				self.money = self.money + level.survivorcashbonus;
				self iprintln( "You Have Been Given ^2$" + ( level.survivorcashbonus + " ^7Survivor Cash Bonus" ) );
			}
			self.humandied = 0;
			wait 0.01;
		}
		if( self.pers[ "kills"] != self.currentkills )
		{
			if( self.status == "human" )
			{
				self.money = self.money + level.moneyperkill * self.moneymultiplier;
				self.currentkills = self.pers[ "kills"];
			}
			if( self.status == "zombie" )
			{
				self.money = self.money + level.moneyperkillzombie * self.moneymultiplier;
				self.currentkills = self.pers[ "kills"];
			}
		}
		if( self.pers[ "assists"] != self.currentassists )
		{
			if( self.status == "human" )
			{
				self.money = self.money + level.moneyperassist * self.moneymultiplier;
				self.currentassists = self.pers[ "assists"];
			}
			if( self.status == "zombie" )
			{
				self.money = self.money + level.moneyperassist * self.moneymultiplier;
				self.currentassists = self.pers[ "assists"];
			}
		}
		else
		{
			if( self.status == "zombie" && self.pers[ "deaths"] != self.currentdeaths )
			{
				self.money = self.money + level.moneyperzombiedeath * self.moneymultiplier;
				self.currentdeaths = self.pers[ "deaths"];
				self.xsped = 0;
				self.fatty = 0;
				self.metallo = 0;
				self.terrorista = 0;
				self.doge = 0;
				self show();
				self notify( "stop_LinkTo_Model" );
				self.linkto_model_object delete();
			}
		}
	}
	else
	{
		self.currentkills = self.pers[ "kills"];
		self.currentdeaths = self.pers[ "deaths"];
		self.currentassists = self.pers[ "assists"];
		wait 0.001;
	}
	self.healthvalue setvalue( self.health );
	self.moneyvalue setvalue( self.money );
	wait 0.05;
	}

}

informationbar()
{
	while( level.enableinformationbar )
	{
		level endon( "game_ended" );
		level.infobarbackground = level drawshader( "white", -50, 30, 1000, 35, ( 0, 0, 0 ), 0.5, 7, 1 );
		level.infobarbackground.alignx = "center";
		level.infobarbackground.aligny = "bottom";
		level.infobarbackground.horzalign = "center";
		level.infobarbackground.vertalign = "bottom";
		level.infobartext = level drawtext( level.informationbartext, "objective", 2, 1000, 26, ( 1, 1, 1 ), 1, ( 0, 0, 0 ), 0, 10, 1 );
		level.infobartext.alignx = "center";
		level.infobartext.aligny = "bottom";
		level.infobartext.horzalign = "center";
		level.infobartext.vertalign = "bottom";
		if( level.infobartext.x == -1000 )
		{
			level.infobartext.x = 1000;
		}
		else
		{
			level.infobartext moveovertime( 28 );
			level.infobartext.x = -1000;
			wait 25;
		}
		wait 0.05;
	}

}

welcomemessage()
{
	self endon( "disconnect" );
	self endon( "death" );
	notifydata = spawnstruct();
	notifydata.titletext += self.name;
	notifydata.notifytext = "^7To ZombieLand 2.1";
	notifydata.icon = "";
	notifydata.duration = 18;
	notifydata.glowcolor = ( 0.412, 0.984, 1 );
	notifydata.font = "default";
	self thread notifymessage( notifydata );

}

spawnentity( class, model, origin, angle )
{
	entity = spawn( class, origin );
	entity.angles = angle;
	entity setmodel( model );
	return entity;

}

spawnobjective( origin, icon, onentity )
{
	objective_add( level.activeobjectiveindex, "active", origin );
	objective_icon( level.activeobjectiveindex, icon );
	if( IsDefined( onentity ) )
	{
		objective_onentity( level.activeobjectiveindex, onentity );
	}
	level.activeobjectiveindex++;

}

roundup( floatval )
{
	if( int( floatval ) != floatval )
	{
		return int( floatval + 1 );
	}
	else
	{
		return int( floatval );
	}

}

removeskybarrier()
{
	entarray = getentarray();
	index = 0;
	while( index < entarray.size )
	{
		if( entarray[ index].origin[ 2] > 180 && issubstr( entarray[ index].classname, "trigger_hurt" ) )
		{
			entarray[ index].origin = ( 0, 0, 9999999 );
		}
		index++;
	}

}

deathbarrier()
{
	ents = getentarray();
	index = 0;
	while( index < ents.size )
	{
		if( issubstr( ents[ index].classname, "trigger_hurt" ) )
		{
			ents[ index].origin = ( 0, 0, 9999999 );
		}
		index++;
	}

}

createblock( pos, angle )
{
	block = spawn( "script_model", pos );
	block setmodel( "t6_wpn_supply_drop_ally" );
	block.angles = angle;

}

createblockcar( pos, angle )
{
	blockcar = spawn( "script_model", pos );
	blockcar setmodel( "veh_t6_nuketown_2020_car02_whole" );
	blockcar.angles = angle;

}

createcarelevator( start, end, angle, time, waittime )
{
	angles = angle;
	center = spawn( "script_model", start );
	elevator = spawnentity( "script_model", "veh_t6_nuketown_2020_car01_whole", start, angles );
	elevator enablelinkto();
	elevator linkto( center );
	level thread elevator_think( center, start, end, time, waittime );

}

spawnentity( class, model, origin, angle )
{
	entity = spawn( class, origin );
	entity.angles = angle;
	entity setmodel( model );
	return entity;

}

elevator_think( elevator, start, end, time, waittime )
{
	level endon( "game_ended" );
	wait waittime;
	for(;;)
	{
	if( elevator.origin == start )
	{
		elevator moveto( end, time );
		wait time;
		wait waittime;
	}
	if( elevator.origin == end )
	{
		elevator moveto( start, time );
		wait time;
		wait waittime;
	}
	wait 0.01;
	}

}

whitecontainer( pos, angle )
{
	whitecon = spawn( "script_model", pos );
	whitecon setmodel( "p6_dockside_container_lrg_white" );
	whitecon.angles = angle;

}

bluecontainer( pos, angle )
{
	bluecon = spawn( "script_model", pos );
	bluecon setmodel( "p6_dockside_container_lrg_blue" );
	bluecon.angles = angle;

}

redcontainer( pos, angle )
{
	redcon = spawn( "script_model", pos );
	redcon setmodel( "p6_dockside_container_lrg_red" );
	redcon.angles = angle;

}

orangecontainer( pos, angle )
{
	orangecon = spawn( "script_model", pos );
	orangecon setmodel( "p6_dockside_container_lrg_orange" );
	orangecon.angles = angle;

}

createorangeelevator( start, end, angle, time, waittime )
{
	angles = angle;
	center = spawn( "script_model", start );
	elevator = spawnentity( "script_model", "p6_dockside_container_lrg_orange", start, angles );
	elevator enablelinkto();
	elevator linkto( center );
	level thread elevator_think( center, start, end, time, waittime );

}

createfiretruckelevator( start, end, angle, time, waittime )
{
	angles = angle;
	center = spawn( "script_model", start );
	elevator = spawnentity( "script_model", "veh_iw_civ_firetruck", start, angles );
	elevator enablelinkto();
	elevator linkto( center );
	level thread elevator_think( center, start, end, time, waittime );

}

createobject( model, origin, angle )
{
	return spawnentity( "script_model", model, origin, angle );

}

increaseentityspace()
{
	if( !(IsDefined( level.incentspace )) )
	{
		level.incentspace = 1;
		array = [];
		arrayents = strtok( "script_model,script_brushmodel,script_origin,scrip  t_noteworthy", "," );
		ext = 0;
		while( ext < arrayents.size )
		{
			array[ext] = getentarray( arrayents[ ext], "classname" );
			ext++;
		}
		iprintln( "Entity Space Increased By: ^2" + ( array[ 0].size + ( " ^7|^2 " + ( array[ 1].size + ( " ^7|^2 " + ( array[ 2].size + ( " ^7|^2 " + array[ 3].size ) ) ) ) ) ) );
		ext = 0;
		while( ext < arrayents.size )
		{
			array_delete( array[ ext] );
			ext++;
		}
	}

}

createplazacarelevator( start, end, angle, time, waittime )
{
	angles = angle;
	center = spawn( "script_model", start );
	elevator = spawnentity( "script_model", "veh_t6_civ_sportscar_whole_orange", start, angles );
	elevator enablelinkto();
	elevator linkto( center );
	level thread elevator_think( center, start, end, time, waittime );

}

createcustomdoor( model, open, close, time, angle, width, height, hp, triggerradius )
{
	offset = ( width / 2 - 0.5 ) * -1;
	center = spawn( "script_model", open );
	j = 0;
	while( j < width )
	{
		door = spawnentity( "script_model", model, open + ( 0, 30, 0 ) * offset, ( 0, 0, 0 ) );
		door enablelinkto();
		door linkto( center );
		h = 1;
		while( h < height )
		{
			door = spawnentity( "script_model", model, ( open + ( 0, 30, 0 ) ) * ( offset - ( ( 70, 0, 0 ) * h ) ), ( 0, 0, 0 ) );
			door enablelinkto();
			door linkto( center );
			h++;
		}
		offset = offset + 1;
		j++;
	}
	center.angles = angle;
	center.state = "open";
	center.hp = hp;
	center.triggerradius = triggerradius;
	center thread door_player_think( level.activedoors );
	center thread door_think( open, close, time );
	wait 0.01;

}

createwall( end, start, invisible )
{
	blockb = [];
	blockc = [];
	dh = ( start[ 0], start[ 1], 0 );
	hd = ( end[ 0], end[ 1], 0 );
	zaa = ( 0, 0, start[ 2] );
	azz = ( 0, 0, end[ 2] );
	d = distance( dh, hd );
	h = distance( zaa, azz );
	blocks = roundup( d / 71 );
	height = roundup( h / 36 );
	cx -= end[ 0];
	cy -= end[ 1];
	cz -= end[ 2];
	xa /= blocks;
	ya /= blocks;
	za /= height;
	temp = vectortoangles( end - start );
	ba = ( 0, temp[ 1] + 90, 0 );
	h = 0;
	while( h < height )
	{
		i = 0;
		while( i < blocks )
		{
			spawnpos = ( end + ( xa, ya, 0 ) ) * ( i + ( ( 0, 0, 10 ) + ( ( 0, 0, za ) * h ) ) );
			block = spawnentity( "script_model", level.supplydropmodel, spawnpos, ba );
			if( invisible && IsDefined( invisible ) )
			{
				block hide();
			}
			i++;
		}
		h++;
	}

}

createramp( top, bottom, invisible )
{
	d = distance( top, bottom );
	blocks = roundup( d / 40 );
	cx -= bottom[ 0];
	cy -= bottom[ 1];
	cz -= bottom[ 2];
	xa /= blocks;
	ya /= blocks;
	za /= blocks;
	temp = vectortoangles( top - bottom );
	ba = ( temp[ 0], temp[ 1], temp[ 2] );
	b = 0;
	while( b < blocks )
	{
		block = spawnentity( "script_model", level.supplydropmodel, bottom + ( xa, ya, za ) * b, ba );
		if( invisible && IsDefined( invisible ) )
		{
			block hide();
		}
		b++;
	}
	block = spawnentity( "script_model", level.supplydropmodel, ( bottom + ( xa, ya, za ) ) * ( blocks - ( 0, 0, 5 ) ), ( ba[ 0], ba[ 1], 0 ) );
	if( invisible && IsDefined( invisible ) )
	{
		block hide();
	}

}

creategrid( corner1, corner2, angle, invisible )
{
	blockfloor = [];
	w = distance( ( corner1[ 0], 0, 0 ), ( corner2[ 0], 0, 0 ) );
	l = distance( ( 0, corner1[ 1], 0 ), ( 0, corner2[ 1], 0 ) );
	h = distance( ( 0, 0, corner1[ 2] ), ( 0, 0, corner1[ 2] ) );
	cx -= corner1[ 0];
	cy -= corner1[ 1];
	cz -= corner1[ 2];
	rows = roundup( w / 47 );
	columns = roundup( l / 77 );
	height = roundup( h / 47 );
	xa /= rows;
	ya /= columns;
	za /= height;
	center = spawn( "script_model", corner1 );
	r = 0;
	while( r <= rows )
	{
		c = 0;
		while( c <= columns )
		{
			h = 0;
			while( h <= height )
			{
				floor += ( xa * r, ya * c, za * h );
				block = spawnentity( "script_model", level.supplydropmodel, floor, ( 0, 0, 0 ) );
				if( invisible && IsDefined( invisible ) )
				{
					block hide();
				}
				block linkto( center );
				h++;
			}
			c++;
		}
		r++;
	}
	center.angles = angle;

}

createflag( enter, exit, hiddenflags, bothways )
{
	if( bothways )
	{
		if( !(hiddenflags) )
		{
			entryflag1 = spawnentity( "script_model", level.teleportflagbothmodel, enter, ( 0, 0, 0 ) );
			entryflag2 = spawnentity( "script_model", level.teleportflagbothmodel, exit, ( 0, 0, 0 ) );
			spawnobjective( enter, "waypoint_recon_artillery_strike" );
			spawnobjective( exit, "waypoint_recon_artillery_strike" );
			entryflag1.flagishidden = 0;
		}
		else
		{
			entryflag1 = spawn( "script_model", enter );
			entryflag2 = spawn( "script_model", exit );
			entryflag1.flagishidden = 1;
		}
		level thread teleport_flag_think( entryflag1, entryflag2, 1 );
	}
	else
	{
		if( !(hiddenflags) )
		{
			entryflag = spawnentity( "script_model", level.teleportflagstartmodel, enter, ( 0, 0, 0 ) );
			exitflag = spawnentity( "script_model", level.teleportflagendmodel, exit, ( 0, 0, 0 ) );
			spawnobjective( enter, "waypoint_recon_artillery_strike" );
			entryflag.flagishidden = 0;
		}
		else
		{
			entryflag = spawn( "script_model", enter );
			exitflag = spawn( "script_model", exit );
			entryflag.flagishidden = 1;
		}
		level thread teleport_flag_think( entryflag, exitflag, 0 );
	}

}

teleport_flag_think( flag1, flag2, bothways )
{
	level endon( "game_ended" );
	foreach( player in level.players )
	{
		if( bothways )
		{
			if( distance( player.origin, flag1.origin ) < 25 )
			{
				player setorigin( flag2.origin + vector_scale( anglestoforward( ( 0, player.angles[ 1], 0 ) ), 30 ) );
				if( flag1.flagishidden )
				{
					player iprintln( "^1You Found A Hidden Teleport Flag!" );
				}
			}
			if( distance( player.origin, flag2.origin ) < 25 )
			{
				player setorigin( flag1.origin + vector_scale( anglestoforward( ( 0, player.angles[ 1], 0 ) ), 30 ) );
				if( flag1.flagishidden )
				{
					player iprintln( "^1You Found A Hidden Teleport Flag!" );
				}
			}
		}
		else
		{
			if( distance( player.origin, flag1.origin ) < 25 )
			{
				player setorigin( flag2.origin + vector_scale( anglestoforward( ( 0, player.angles[ 1], 0 ) ), 30 ) );
				if( flag1.flagishidden )
				{
					player iprintln( "^1You Found A Hidden Teleport Flag!" );
				}
			}
		}
	}
	wait 0.001;
	?;//Jump here. This may be a loop, else, continue, or break. Please fix this code section to re-compile.

}

createelevator( start, end, time, waittime )
{
	tempangles = vectortoangles( end - start );
	angles = ( 0, tempangles[ 1], 0 );
	center = spawn( "script_model", start );
	elevator = spawnentity( "script_model", level.supplydropmodel, start, angles );
	elevator enablelinkto();
	elevator linkto( center );
	spawnobjective( start, "compass_supply_drop_black", elevator );
	level thread elevator_think( center, start, end, time, waittime );

}

elevator_think( elevator, start, end, time, waittime )
{
	level endon( "game_ended" );
	wait waittime;
	for(;;)
	{
	if( elevator.origin == start )
	{
		elevator moveto( end, time );
		wait time;
		wait waittime;
	}
	if( elevator.origin == end )
	{
		elevator moveto( start, time );
		wait time;
		wait waittime;
	}
	wait 0.01;
	}

}

createzipline( start, end, time, bothways )
{
	tempangles = vectortoangles( end - start );
	angles = ( 0, tempangles[ 1], 0 );
	if( bothways )
	{
		ziplinestart = spawnentity( "script_model", level.supplydropmodel, start, angles );
		ziplineend = spawnentity( "script_model", level.supplydropmodelaxis, end, angles );
		spawnobjective( start, "compass_supply_drop_green" );
		spawnobjective( end, "compass_supply_drop_green" );
	}
	else
	{
		ziplinestart = spawnentity( "script_model", level.supplydropmodel, start, angles );
		ziplineend = spawnentity( "script_model", "", end, angles );
		spawnobjective( start, "compass_supply_drop_red" );
	}
	level thread zipline_think( ziplinestart, ziplineend, time, bothways );

}

zipline_hint_think( localziplinenumber )
{
	level endon( "game_ended" );
	self endon( "disconnect" );
	self.ziplinehintthinkactive[localziplinenumber] = 1;
	for(;;)
	{
	if( !(IsDefined( self.ziplinestringcreated[ localziplinenumber] )) )
	{
		self.ziplinehintstring[localziplinenumber] = self drawtext( "Press [{+usereload}] To Use Zipline", "objective", 1.5, 0, -50, ( 1, 1, 1 ), 1, ( 0, 0, 0 ), 0, 8, 0 );
		self.ziplinehintstring[ localziplinenumber].alignx = "center";
		self.ziplinehintstring[ localziplinenumber].aligny = "bottom";
		self.ziplinehintstring[ localziplinenumber].horzalign = "center";
		self.ziplinehintstring[ localziplinenumber].vertalign = "bottom";
		self.usingzipline = 0;
		self.ziplinestringcreated[localziplinenumber] = 1;
		self.ziplinehintstring[ localziplinenumber].alpha = 0;
	}
	if( isalive( self ) && !(self.usingzipline)self.usingzipline )
	{
		self.ziplinehintstring[ localziplinenumber].alpha = 1;
	}
	if( isalive( self ) && !(self.nearzipline[ localziplinenumber]) )
	{
		self.ziplinehintstring[ localziplinenumber].alpha = 0;
	}
	wait 0.01;
	}

}

zipline_think( ziplinestart, ziplineend, time, bothways )
{
	level endon( "game_ended" );
	localziplinenumber = level.activeziplines;
	level.activeziplines++;
	foreach( player in level.players )
	{
		if( !(IsDefined( player.ziplinehintthinkactive[ localziplinenumber] )) )
		{
			player thread zipline_hint_think( localziplinenumber );
		}
		if( isalive( player ) && !(player.usingzipline) )
		{
			if( bothways )
			{
				if( distance( player.origin, ziplinestart.origin ) < 60 )
				{
					player.nearzipline[localziplinenumber] = 1;
					if( player usebuttonpressed() )
					{
						player thread zipline_player_think( player, localziplinenumber, ziplinestart.origin, ziplineend.origin, time );
					}
				}
				else
				{
					if( distance( player.origin, ziplineend.origin ) < 60 )
					{
						player.nearzipline[localziplinenumber] = 1;
						if( player usebuttonpressed() )
						{
							player thread zipline_player_think( player, localziplinenumber, ziplineend.origin, ziplinestart.origin, time );
						}
					}
					else
					{
						player.nearzipline[localziplinenumber] = 0;
					}
				}
			}
			if( !(bothways) )
			{
				if( distance( player.origin, ziplinestart.origin ) < 60 )
				{
					player.nearzipline[localziplinenumber] = 1;
					if( player usebuttonpressed() )
					{
						player thread zipline_player_think( player, localziplinenumber, ziplinestart.origin, ziplineend.origin, time );
					}
				}
				else
				{
					player.nearzipline[localziplinenumber] = 0;
				}
			}
		}
	}
	wait 0.01;
	?;//Jump here. This may be a loop, else, continue, or break. Please fix this code section to re-compile.

}

zipline_player_think( player, ziplinenumber, start, end, time )
{
	level endon( "game_ended" );
	self endon( "disconnect" );
	player.usingzipline = 1;
	ziplinemover = spawn( "script_model", start );
	player playerlinkto( ziplinemover );
	player.ziplinehintstring[ ziplinenumber].alpha = 0;
	ziplinemover moveto( end, time, 0.5, 0.5 );
	wait time;
	player detachall();
	ziplinemover delete();
	player.usingzipline = 0;

}

createdoorsolid( open, close, time, angle, width, height, hp, triggerradius )
{
	offset = ( width / 2 - 1.7 ) * -1;
	center = spawn( "script_model", open );
	j = 0;
	while( j < width )
	{
		door = spawnentity( "script_model", level.supplydropmodelaxis, open + ( 0, 30, 0 ) * offset, ( 0, 0, 0 ) );
		door enablelinkto();
		door linkto( center );
		h = 1;
		while( h < height )
		{
			door = spawnentity( "script_model", level.supplydropmodelaxis, ( open + ( 0, 30, 0 ) ) * ( offset - ( ( 40, 0, 0 ) * h ) ), ( 0, 0, 0 ) );
			door enablelinkto();
			door linkto( center );
			h++;
		}
		offset = offset + 1;
		j++;
	}
	center.angles = angle;
	center.state = "open";
	center.hp = hp;
	center.triggerradius = triggerradius;
	center thread door_player_think( level.activedoors );
	center thread door_think( open, close, time );
	wait 0.01;

}

createdoor( open, close, time, angle, width, height, hp, triggerradius )
{
	offset = ( width / 2 - 0.5 ) * -1;
	center = spawn( "script_model", open );
	j = 0;
	while( j < width )
	{
		door = spawnentity( "script_model", level.supplydropmodelaxis, open + ( 0, 45, 0 ) * offset, ( 0, 0, 0 ) );
		door enablelinkto();
		door linkto( center );
		h = 1;
		while( h < height )
		{
			door = spawnentity( "script_model", level.supplydropmodelaxis, ( open + ( 0, 45, 0 ) ) * ( offset - ( ( 70, 0, 0 ) * h ) ), ( 0, 0, 0 ) );
			door enablelinkto();
			door linkto( center );
			h++;
		}
		offset = offset + 1;
		j++;
	}
	center.angles = angle;
	center.state = "open";
	center.hp = hp;
	center.triggerradius = triggerradius;
	center thread door_player_think( level.activedoors );
	center thread door_think( open, close, time );
	wait 0.01;

}

door_think( open, close, time )
{
	level endon( "game_ended" );
	localdoornumber = level.activedoors;
	level.doorinuse[localdoornumber] = 0;
	level.activedoors++;
	if( self.hp > 0 )
	{
		self waittill( "triggeruse", player );
		if( player.team == "allies" )
		{
			if( self.state == "open" )
			{
				self playsound( "mpl_drone_door_open" );
				self moveto( close, time );
				level.doorinuse[localdoornumber] = 1;
				wait time;
				level.doorinuse[localdoornumber] = 0;
				self.state = "close";
				continue;
			}
			if( self.state == "close" )
			{
				self playsound( "mpl_drone_door_close" );
				self moveto( open, time );
				level.doorinuse[localdoornumber] = 1;
				wait time;
				level.doorinuse[localdoornumber] = 0;
				self.state = "open";
				continue;
			}
		}
		if( player.team == "axis" )
		{
			if( self.state == "close" )
			{
				self.hp++;
				player iprintlnbold( "Door Damaged! +^2$50" );
				player.money = player.money + 50;
				continue;
			}
		}
		break;
	}
	if( self.state == "close" )
	{
		self moveto( open, time );
	}
	self.state = "broken";
	wait 0.5;
	wait 0.01;
	?;//Jump here. This may be a loop, else, continue, or break. Please fix this code section to re-compile.

}

door_refreshtimer()
{
	level endon( "game_ended" );
	self endon( "disconnect" );
	self.doorrefreshtimeractive = 1;
	for(;;)
	{
	if( self.alreadydamageddoor )
	{
		wait 1;
		self.alreadydamageddoor = 0;
	}
	wait 0.01;
	}

}

door_player_think( localdoornumber )
{
	level endon( "game_ended" );
	self endon( "disconnect" );
	foreach( player in level.players )
	{
		if( !(IsDefined( player.doorrefreshtimeractive )) )
		{
			player thread door_refreshtimer();
			player.alreadydamageddoor = 0;
		}
		if( !(IsDefined( player.doorstringcreated[ localdoornumber] )) )
		{
			player.doorhintstring[localdoornumber] = player drawtext( player.currentdoorhint, "objective", 1.5, 0, -50, ( 1, 1, 1 ), 0, ( 0, 0, 0 ), 0, 8, 0 );
			player.doorhintstring[ localdoornumber].alpha = 0;
			player.doorhintstring[ localdoornumber].alignx = "center";
			player.doorhintstring[ localdoornumber].aligny = "bottom";
			player.doorhintstring[ localdoornumber].horzalign = "center";
			player.doorhintstring[ localdoornumber].vertalign = "bottom";
			player.doorstringcreated[localdoornumber] = 1;
			player.neardoor[localdoornumber] = 0;
		}
		if( !(level.doorinuse[ localdoornumber])level.doorinuse[ localdoornumber] )
		{
			player.doorhintstring[ localdoornumber] settext( player.currentdoorhint );
			player.doorhintstring[ localdoornumber].alpha = 1;
		}
		else
		{
			player.doorhintstring[ localdoornumber].alpha = 0;
		}
		if( distance( self.origin, player.origin ) <= self.triggerradius )
		{
			if( player.team == "allies" )
			{
				if( self.state == "open" )
				{
					player.currentdoorhint = "[{+melee}] To ^1Close ^7the door / [{+usereload}] Shows Current HP.";
				}
				if( self.state == "close" )
				{
					player.currentdoorhint = "[{+melee}] To ^2Open ^7the door / [{+usereload}] Shows Current HP.";
				}
				if( self.state == "broken" )
				{
					player.currentdoorhint = "^1Door is Broken";
				}
			}
			if( player.team == "axis" )
			{
				if( self.state == "open" )
				{
					player.currentdoorhint = "";
				}
				if( self.state == "close" )
				{
					player.currentdoorhint = "[{+melee}] | [{+attack}] ^1To Damage ^7the door / [{+usereload}] Shows Current HP.";
				}
				if( self.state == "broken" )
				{
					player.currentdoorhint = "^1Door is Broken";
				}
			}
			if( player.status == "human" && isalive( player ) && player meleebuttonpressed() )
			{
				self notify( "triggeruse", player );
			}
			if( !(player.alreadydamageddoor)player.alreadydamageddoor && player.status == "zombie" && isalive( player ) && player attackbuttonpressed() )
			{
				self notify( "triggeruse", player );
				player.alreadydamageddoor = 1;
			}
			if( player usebuttonpressed() )
			{
				if( player.team == "allies" )
				{
					player iprintlnbold( "Door HP: ^1" + self.hp );
				}
				if( player.team == "axis" )
				{
					player iprintlnbold( "Door HP: ^1" + self.hp );
				}
				wait 0.5;
			}
			player.neardoor[localdoornumber] = 1;
		}
		else
		{
			player.neardoor[localdoornumber] = 0;
		}
	}
	wait 0.01;
	?;//Jump here. This may be a loop, else, continue, or break. Please fix this code section to re-compile.

}

resetdoor( localdoornumber, open, hp, time )
{
	self.hp = hp;
	self moveto( open, time );
	self.state = "open";

}

watchforworldturretdeath()
{
	self endon( "turretRemoved" );
	level endon( "game_ended" );
	for(;;)
	{
	self waittill( "destroy_turret" );
	self setturretminimapvisible( 0 );
	playfxontag( level.auto_turret_settings[ self.turrettype].damagefx, self, level.auto_turret_settings[ self.turrettype].stunfxtag );
	wait 1;
	level thread givedestroyedturretmoney( "zombie", 100 );
	self delete();
	self notify( "turretRemoved" );
	wait 0.01;
	}

}

turretplayerwatcher()
{
	level endon( "game_ended" );
	self endon( "turretRemoved" );
	for(;;)
	{
	foreach( player in level.players )
	{
		if( player.status == "zombie" && player usebuttonpressed() && isalive( player ) && distance( self.origin, player.origin ) <= 60 )
		{
			player suicide();
			player iprintln( "^1Zombies Cannot Use Turrets!" );
		}
	}
	wait 0.01;
	}

}

createturret( origin, angles, turrettype )
{
	turret = spawnturret( "auto_turret", origin, turrettype );
	turret.angles = angles;
	turret setmodel( "t6_wpn_turret_sentry_gun" );
	turret setturretteam( "allies" );
	turret.team = "allies";
	setupturrethealth( turret );
	turret thread watchdamage();
	turret.weaponinfoname = turrettype;
	turret.turrettype = "sentry";
	turret setturrettype( turret.turrettype );
	turret laseron();
	turret setturretminimapvisible( 1 );
	turret thread watchforworldturretdeath();
	turret thread turretplayerwatcher();
	turret setentityheadicon( turret.team, turret, level.turrets_headicon_offset[ "default"] );
	return turret;

}

vector_scal( vec, scale )
{
	vec = ( vec[ 0] * scale, vec[ 1] * scale, vec[ 2] * scale );
	return vec;

}

createmysterybox( origin, angle, price )
{
	mysterybox = spawnentity( "script_model", level.supplydropmodelaxis, origin, angle );
	spawnobjective( origin, "perk_hardline" );
	mysterybox thread mysterybox_think();
	mysterybox thread mysterybox_player_think( price );

}

mysterybox_think()
{
	level endon( "game_ended" );
	for(;;)
	{
	self waittill( "triggerMysteryBox", player, localmysteryboxnumber );
	currentweapon = spawn( "script_model", self.origin );
	currentweapon.angles += ( 0, 90, 0 );
	self thread mysterybox_weaponmover_think( currentweapon );
	self waittill( "mysteryBoxWeaponMoverFinished" );
	self thread mysterybox_timeout_think();
	player.mysteryboxweaponready[localmysteryboxnumber] = 1;
	self waittill_any( "tookMysteryBoxWeapon", "mysteryBoxWeaponTimedOut" );
	wait 0.5;
	if( !(self.timedout) )
	{
		player replaceweaponworld( self.currentweaponreturn, "All" );
	}
	currentweapon delete();
	player.isusingmysterybox = 0;
	player.mysteryboxweaponready[localmysteryboxnumber] = 0;
	self.mysteryboxinuse = 0;
	self.timedout = 0;
	wait 0.01;
	}

}

mysterybox_timeout_think()
{
	level endon( "game_ended" );
	self endon( "tookMysteryBoxWeapon" );
	wait 12;
	self.timedout = 1;
	self notify( "mysteryBoxWeaponTimedOut" );

}

mysterybox_weaponmover_think( currentweapon )
{
	level endon( "game_ended" );
	self.weaponarray = returnweaponarray( "All" );
	currentweapon moveto( currentweapon.origin + ( 0, 0, 60 ), 10, 2, 2 );
	i = 0;
	while( i < 30 )
	{
		temprandomweapon = self.weaponarray[ randomint( self.weaponarray.size )];
		currentweapon setmodel( getweaponmodel( temprandomweapon ) );
		self.currentweaponreturn = temprandomweapon;
		wait 0.3;
		i++;
	}
	self notify( "mysteryBoxWeaponMoverFinished" );
	wait 3;
	currentweapon moveto( self.origin, 10, 2, 2 );

}

mysterybox_player_think( price )
{
	level endon( "game_ended" );
	localmysteryboxnumber = level.activemysteryboxes;
	level.activemysteryboxes++;
	foreach( player in level.players )
	{
		if( !(IsDefined( player.mysteryboxstringcreated[ localmysteryboxnumber] )) )
		{
			player.currentmysteryboxhint += price;
			player.mysteryboxhintstring[localmysteryboxnumber] = player drawtext( player.currentmysteryboxhint, "objective", 1.5, 0, -50, ( 1, 1, 1 ), 0, ( 0, 0, 0 ), 0, 8, 0 );
			player.mysteryboxhintstring[ localmysteryboxnumber].alpha = 0;
			player.mysteryboxhintstring[ localmysteryboxnumber].alignx = "center";
			player.mysteryboxhintstring[ localmysteryboxnumber].aligny = "bottom";
			player.mysteryboxhintstring[ localmysteryboxnumber].horzalign = "center";
			player.mysteryboxhintstring[ localmysteryboxnumber].vertalign = "bottom";
			player.mysteryboxstringcreated[localmysteryboxnumber] = 1;
			player.nearmysterybox[localmysteryboxnumber] = 0;
			player.mysteryboxweaponready[localmysteryboxnumber] = 0;
			self.mysteryboxinuse = 0;
		}
		if( player.status != "zombie" && player.team != "axis" )
		{
			if( !(self.mysteryboxinuse)self.mysteryboxinuse )
			{
				player.currentmysteryboxhint += price;
				player.mysteryboxhintstring[ localmysteryboxnumber] settext( player.currentmysteryboxhint );
				player.mysteryboxhintstring[ localmysteryboxnumber].alpha = 1;
			}
			else
			{
				if( player.nearmysterybox[ localmysteryboxnumber] && player.mysteryboxweaponready[ localmysteryboxnumber] && player.isusingmysterybox )
				{
					player.mysteryboxhintstring[ localmysteryboxnumber] settext( player.currentmysteryboxhint );
					player.mysteryboxhintstring[ localmysteryboxnumber].alpha = 1;
				}
				else
				{
					player.mysteryboxhintstring[ localmysteryboxnumber].alpha = 0;
				}
			}
			if( !(player.isusingmysterybox)player.isusingmysterybox && !(self.mysteryboxinuse) )
			{
				player.nearmysterybox[localmysteryboxnumber] = 1;
				if( player usebuttonpressed() )
				{
					wait 1;
					if( player usebuttonpressed() )
					{
						if( player.money >= price )
						{
							wait 0.1;
							player.currentmysteryboxhint = "";
							player.isusingmysterybox = 1;
							player.money = player.money - price;
							self.mysteryboxinuse = 1;
							self notify( "triggerMysteryBox", player, localmysteryboxnumber );
						}
						else
						{
							player senderror( "MoreMoney" );
							wait 0.2;
						}
					}
				}
			}
			else
			{
				if( player.mysteryboxweaponready[ localmysteryboxnumber] && player.isusingmysterybox && distance( self.origin, player.origin ) <= 60 )
				{
					player.nearmysterybox[localmysteryboxnumber] = 1;
					player.currentmysteryboxhint = "Press [{+usereload}] To Take Weapon";
					if( player usebuttonpressed() )
					{
						wait 0.1;
						self notify( "tookMysteryBoxWeapon" );
					}
				}
				else
				{
					player.nearmysterybox[localmysteryboxnumber] = 0;
				}
			}
		}
		else
		{
			player.mysteryboxhintstring[ localmysteryboxnumber].alpha = 0;
		}
	}
	wait 0.01;
	?;//Jump here. This may be a loop, else, continue, or break. Please fix this code section to re-compile.

}

spawnbots()
{
	if( !(level.botshavebeenspawned) )
	{
		i = 0;
		while( i <= level.amountofbotstospawn )
		{
			spawnbot();
			i++;
		}
		level.botshavebeenspawned = 1;
	}

}

spawnbot()
{
	spawn_bot( "autoassign" );

}

createtext( font, fontscale, text, point, relative, xoffset, yoffset, sort, hidewheninmenu, alpha, color, glowalpha, glowcolor )
{
	textelem = createfontstring( font, fontscale );
	textelem setelementtext( text );
	textelem setpoint( point, relative, xoffset, yoffset );
	textelem.sort = sort;
	textelem.hidewheninmenu = hidewheninmenu;
	textelem.alpha = alpha;
	textelem.color = color;
	textelem.glowalpha = glowalpha;
	textelem.glowcolor = glowcolor;
	return textelem;

}

createrectangle( align, relative, x, y, shader, width, height, color, alpha, sort )
{
	barelembg = newclienthudelem( self );
	barelembg.elemtype = "bar";
	if( !(level.splitscreen) )
	{
		barelembg.x = -2;
		barelembg.y = -2;
	}
	barelembg.width = width;
	barelembg.height = height;
	barelembg.align = align;
	barelembg.relative = relative;
	barelembg.xoffset = 0;
	barelembg.yoffset = 0;
	barelembg.children = [];
	barelembg.sort = sort;
	barelembg.color = color;
	barelembg.alpha = alpha;
	barelembg setparent( level.uiparent );
	barelembg setshader( shader, width, height );
	barelembg.hidden = 0;
	barelembg setpoint( align, relative, x, y );
	return barelembg;

}

drawvalue( value, font, fontscale, x, y, color, alpha, glowcolor, glowalpha, sort, allclients )
{
	if( !(IsDefined( allclients )) )
	{
		allclients = 0;
	}
	if( !(allclients) )
	{
		hud = self createfontstring( font, fontscale );
	}
	else
	{
		hud = level createserverfontstring( font, fontscale );
	}
	hud setvalue( value );
	hud.x = x;
	hud.y = y;
	hud.color = color;
	hud.alpha = alpha;
	hud.glowcolor = glowcolor;
	hud.glowalpha = glowalpha;
	hud.sort = sort;
	hud.alpha = alpha;
	return hud;

}

drawtext( text, font, fontscale, x, y, color, alpha, glowcolor, glowalpha, sort, allclients )
{
	if( !(IsDefined( allclients )) )
	{
		allclients = 0;
	}
	if( !(allclients) )
	{
		hud = self createfontstring( font, fontscale );
	}
	else
	{
		hud = level createserverfontstring( font, fontscale );
	}
	hud setelementtext( text );
	hud.x = x;
	hud.y = y;
	hud.color = color;
	hud.alpha = alpha;
	hud.glowcolor = glowcolor;
	hud.glowalpha = glowalpha;
	hud.sort = sort;
	hud.alpha = alpha;
	return hud;

}

drawshader( shader, x, y, width, height, color, alpha, sort, allclients )
{
	if( !(IsDefined( allclients )) )
	{
		allclients = 0;
	}
	if( !(allclients) )
	{
		hud = newclienthudelem( self );
	}
	else
	{
		hud = newhudelem();
	}
	hud.elemtype = "icon";
	hud.color = color;
	hud.alpha = alpha;
	hud.sort = sort;
	hud.children = [];
	hud setparent( level.uiparent );
	hud setshader( shader, width, height );
	hud.x = x;
	hud.y = y;
	return hud;

}

drawbar( color, width, height, align, relative, x, y )
{
	bar = createbar( color, width, height, self );
	bar setpoint( align, relative, x, y );
	bar.hidewheninmenu = 1;
	return bar;

}

senderror( errortype )
{
	if( errortype == "MoreMoney" )
	{
		self iprintln( "^1Error: ^7You Do Not Have Enough Money For This Item" );
	}
	if( errortype == "InvalidWeaponAttachment" )
	{
		self iprintln( "^1Error: ^7You Cannot Put This Attachment On This Weapon" );
	}
	if( errortype == "InvalidWeapon" )
	{
		self iprintln( "^1Error: ^7You Are Holding An Invalid Weapon" );
	}
	if( errortype == "AlreadyHasWeapon" )
	{
		self iprintln( "^1Error: ^7You Already Own This Weapon" );
	}
	if( errortype == "AlreadyHasAttachment" )
	{
		self iprintln( "^1Error: ^7You Already Have This Attachment" );
	}
	if( errortype == "MaxAmmo" )
	{
		self iprintln( "^1Error: ^7You Already Maximum Ammo For This Weapon" );
	}
	if( errortype == "AlreadyHasUAV" )
	{
		self iprintln( "^1Error: ^7You Already Have A UAV" );
	}
	if( errortype == "MaxTurrets" )
	{
		self iprintln( "^1Error: ^7Max Number of Turrets Reached!" );
	}
	if( errortype == "AlreadyHaveEquipment" )
	{
		self iprintln( "^1Error: ^7You Already Have This Equipment" );
	}
	if( errortype == "HasPerk" )
	{
		self iprintln( "^1Error: ^7You Already Have This Perk" );
	}
	if( errortype == "AlreadyInvisible" )
	{
		self iprintln( "^1Error: ^7You Are Already Invisible" );
	}
	if( errortype == "AlreadySlowedHumans" )
	{
		self iprintln( "^1Error: ^7Humans Have Already Been Slowed" );
	}
	if( errortype == "AlreadyHasInfrared" )
	{
		self iprintln( "^1Error: ^7You Already Have Infrared Vision" );
	}
	if( errortype == "AlreadyHasInfiniteAmmo" )
	{
		self iprintln( "^1Error: ^7You Already Have Infinite Ammo" );
	}

}

giveplayerweapon( weapon )
{
	self giveweapon( weapon );
	ammo = weaponclipsize( weapon );
	self givestartammo( weapon );
	self setweaponammoclip( weapon, ammo );
	self switchtoweapon( weapon );

}

locationselector()
{
	self endon( "disconnect" );
	self endon( "death" );
	self beginlocationselection( "map_mortar_selector" );
	self disableoffhandweapons();
	self giveweapon( "killstreak_remote_turret_mp" );
	self switchtoweapon( "killstreak_remote_turret_mp" );
	self.selectinglocation = 1;
	self waittill( "confirm_location", location );
	newlocation = bullettrace( location + ( 0, 0, 100000 ), location, 0, self )[ "position"];
	self endlocationselection();
	self enableoffhandweapons();
	self switchtoweapon( self getlastweapon() );
	self.selectinglocation = undefined;
	return newlocation;

}

itempricesetup()
{
	level.itemprice["Human"]["General"]["UAV"] = 350;
	level.itemprice["Human"]["General"]["Health"] = 150;
	level.itemprice["Human"]["General"]["Turret"] = 700;
	level.itemprice["Human"]["General"]["Infrared"] = 100;
	level.itemprice["Human"]["General"]["RandomCamo"] = 525;
	level.itemprice["Human"]["Hax"]["Jericho"] = 650;
	level.itemprice["Human"]["Hax"]["Clone"] = 100;
	level.itemprice["Human"]["Hax"]["JetPack"] = 2900;
	level.itemprice["Human"]["Hax"]["cherry"] = 2100;
	level.itemprice["Human"]["Hax"]["SSJ2"] = 5250;
	level.itemprice["Human"]["Hax"]["Slots"] = 1000;
	level.itemprice["Human"]["Hax"]["Sentry"] = 1950;
	level.itemprice["Human"]["Hax"]["ESP"] = 2500;
	level.itemprice["Human"]["Hax"]["MW2Nuke"] = 14999;
	level.itemprice["Human"]["General"]["Nova"] = 500;
	level.itemprice["Zombie"]["General"]["UAV"] = 200;
	level.itemprice["Zombie"]["General"]["Health"] = 100;
	level.itemprice["Zombie"]["General"]["Invisible"] = 3000;
	level.itemprice["Zombie"]["General"]["SlowHumans"] = 3000;
	level.itemprice["Zombie"]["General"]["Infrared"] = 100;
	level.itemprice["Zombie"]["General"]["2XSPD"] = 900;
	level.itemprice["Zombie"]["General"]["RiotMan"] = 260;
	level.itemprice["Zombie"]["General"]["Devil"] = 1500;
	level.itemprice["Zombie"]["General"]["HellH"] = 650;
	level.itemprice["Zombie"]["General"]["Bomber"] = 340;
	level.itemprice["Zombie"]["General"]["ZKing"] = 3050;
	level.itemprice["Zombie"]["General"]["Fat"] = 1200;
	level.itemprice["Human"]["Equipment"]["claymore_mp"] = 25;
	level.itemprice["Human"]["Equipment"]["sticky_grenade_mp"] = 30;
	level.itemprice["Human"]["Equipment"]["frag_grenade_mp"] = 20;
	level.itemprice["Human"]["Equipment"]["satchel_charge_mp"] = 30;
	level.itemprice["Human"]["Equipment"]["proximity_grenade_mp"] = 30;
	level.itemprice["Human"]["Equipment"]["concussion_grenade_mp"] = 30;
	level.itemprice["Human"]["Equipment"]["flash_grenade_mp"] = 30;
	level.itemprice["Human"]["Equipment"]["trophy_system_mp"] = 50;
	level.itemprice["Human"]["Equipment"]["bouncingbetty_mp"] = 30;
	level.itemprice["Zombie"]["Equipment"]["hatchet_mp"] = 75;
	level.itemprice["Zombie"]["Equipment"]["emp_grenade_mp"] = 800;
	level.itemprice["Zombie"]["Equipment"]["willy_pete_mp"] = 250;
	level.itemprice["Human"]["Perks"]["specialty_fallheight"] = 350;
	level.itemprice["Human"]["Perks"]["specialty_fastads"] = 30;
	level.itemprice["Human"]["Perks"]["specialty_unlimitedsprint"] = 100;
	level.itemprice["Human"]["Perks"]["specialty_fastweaponswitch"] = 30;
	level.itemprice["Human"]["Perks"]["specialty_loudenemies"] = 30;
	level.itemprice["Human"]["Perks"]["specialty_fastmantle"] = 25;
	level.itemprice["Human"]["Perks"]["specialty_movefaster"] = 50;
	level.itemprice["Human"]["Perks"]["specialty_fastreload"] = 350;
	level.itemprice["Human"]["Perks"]["specialty_scavenger"] = 1650;
	level.itemprice["Human"]["Weapons"]["Ammo"] = 500;
	level.itemprice["Human"]["Weapons"]["UnlimitedAmmo"] = 4999;
	level.itemprice["Human"]["Weapons"]["infiniteReload"] = 2999;
	level.itemprice["Human"]["Weapons"]["Submachine"] = 1000;
	level.itemprice["Human"]["Weapons"]["Assault"] = 1200;
	level.itemprice["Human"]["Weapons"]["Shotguns"] = 1000;
	level.itemprice["Human"]["Weapons"]["Lightmachine"] = 2450;
	level.itemprice["Human"]["Weapons"]["Snipers"] = 700;
	level.itemprice["Human"]["Weapons"]["Pistols"] = 500;
	level.itemprice["Human"]["Weapons"]["Launchers"] = 300;
	level.itemprice["Human"]["Weapons"]["Specials"] = 400;
	level.itemprice["Human"]["Weapons"]["SuperSpecials"] = 4500;
	level.itemprice["Human"]["Weapons"]["RayGun"] = 5000;
	level.itemprice["Human"]["Weapons"]["PortGan"] = 7550;
	level.itemprice["Human"]["Weapons"]["RayGunM2"] = 5500;
	level.itemprice["Human"]["Weapons"]["portGun"] = 7000;
	level.itemprice["Human"]["Weapons"]["Thunder"] = 8200;
	level.itemprice["Human"]["Weapons"]["1337"] = 9200;
	level.itemprice["Human"]["Weapons"]["SMAG"] = 10000;
	level.itemprice["Human"]["Weapons"]["ElectricG"] = 6700;
	level.itemprice["Human"]["Weapons"]["rama"] = 7250;
	level.itemprice["Human"]["Weapons"]["Exterminator"] = 7450;
	level.itemprice["Human"]["Weapons"]["Sally"] = 9400;
	level.itemprice["Human"]["Weapons"]["Equipment"] = 30;
	level.itemprice["Human"]["Attachments"]["fmj"] = 50;
	level.itemprice["Human"]["Attachments"]["dw"] = 75;
	level.itemprice["Human"]["Attachments"]["silencer"] = 150;
	level.itemprice["Human"]["Attachments"]["dualclip"] = 100;
	level.itemprice["Human"]["Attachments"]["extclip"] = 100;
	level.itemprice["Human"]["Attachments"]["extbarrel"] = 50;
	level.itemprice["Human"]["Attachments"]["reflex"] = 50;
	level.itemprice["Human"]["Attachments"]["ir"] = 50;
	level.itemprice["Human"]["Attachments"]["rf"] = 100;
	level.itemprice["Human"]["Attachments"]["rangefinder"] = 250;
	level.itemprice["Human"]["Attachments"]["acog"] = 50;

}

invisible( time )
{
	if( self.money >= level.itemprice[ "Zombie"][ "General"][ "Invisible"] )
	{
		while( !(IsDefined( self.isinvisible )) )
		{
			self endon( "disconnect" );
			self endon( "endInvisible" );
			self.invisibletime = time;
			self.money = self.money - level.itemprice[ "Zombie"][ "General"][ "Invisible"];
			self iprintln( "You Are Now ^2Invisible ^7For " + ( time + " Seconds" ) );
			if( self.invisibletime != 0 )
			{
				self.isinvisible = 1;
				self hide();
				wait 1;
				self.invisibletime = self.invisibletime - 1;
			}
			else
			{
				self show();
				self iprintln( "You Are ^1No Longer ^7Invisible" );
				self.isinvisible = undefined;
				self notify( "endInvisible" );
			}
			wait 0.01;
		}
		self senderror( "AlreadyInvisible" );
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

getplayername( player )
{
	playername = getsubstr( player.name, 0, player.name.size );
	i = 0;
	while( i < playername.size )
	{
		if( playername[ i] == "]" )
		{
			break;
		}
		else
		{
			i++;
			?;//Jump here. This may be a loop, else, continue, or break. Please fix this code section to re-compile.
		}
	}
	if( playername.size != i )
	{
		playername = getsubstr( playername, i + 1, playername.size );
	}
	return playername;

}

returnattachmentarray( category )
{
	level.attachmentarray["Submachine"][0] = "reflex";
	level.attachmentarray["Submachine"][1] = "steadyaim";
	level.attachmentarray["Submachine"][2] = "silencer";
	level.attachmentarray["Submachine"][3] = "dualclip";
	level.attachmentarray["Submachine"][4] = "holo";
	level.attachmentarray["Submachine"][5] = "grip";
	level.attachmentarray["Submachine"][6] = "fastads";
	level.attachmentarray["Submachine"][7] = "fmj";
	level.attachmentarray["Submachine"][8] = "extbarrel";
	level.attachmentarray["Submachine"][9] = "rangefinder";
	level.attachmentarray["Submachine"][10] = "stalker";
	level.attachmentarray["Submachine"][11] = "extclip";
	level.attachmentarray["Submachine"][12] = "sf";
	level.attachmentarray["Submachine"][13] = "rf";
	level.attachmentarray["Submachine"][14] = "mms";
	level.attachmentarray["Assault"][0] = "reflex";
	level.attachmentarray["Assault"][1] = "fastads";
	level.attachmentarray["Assault"][2] = "dualclip";
	level.attachmentarray["Assault"][3] = "acog";
	level.attachmentarray["Assault"][4] = "grip";
	level.attachmentarray["Assault"][5] = "stalker";
	level.attachmentarray["Assault"][6] = "rangefinder";
	level.attachmentarray["Assault"][7] = "steadyaim";
	level.attachmentarray["Assault"][8] = "sf";
	level.attachmentarray["Assault"][9] = "holo";
	level.attachmentarray["Assault"][10] = "silencer";
	level.attachmentarray["Assault"][11] = "fmj";
	level.attachmentarray["Assault"][12] = "dualoptic";
	level.attachmentarray["Assault"][13] = "extclip";
	level.attachmentarray["Assault"][14] = "gl";
	level.attachmentarray["Assault"][15] = "mms";
	level.attachmentarray["Shotguns"][0] = "reflex";
	level.attachmentarray["Shotguns"][1] = "extbarrel";
	level.attachmentarray["Shotguns"][2] = "dualclip";
	level.attachmentarray["Shotguns"][3] = "steadyaim";
	level.attachmentarray["Shotguns"][4] = "stalker";
	level.attachmentarray["Shotguns"][5] = "silencer";
	level.attachmentarray["Shotguns"][6] = "extclip";
	level.attachmentarray["Shotguns"][7] = "fastads";
	level.attachmentarray["Shotguns"][8] = "mms";
	level.attachmentarray["Lightmachine"][0] = "holo";
	level.attachmentarray["Lightmachine"][1] = "grip";
	level.attachmentarray["Lightmachine"][2] = "fmj";
	level.attachmentarray["Lightmachine"][3] = "reflex";
	level.attachmentarray["Lightmachine"][4] = "fastads";
	level.attachmentarray["Lightmachine"][5] = "rangefinder";
	level.attachmentarray["Lightmachine"][6] = "stalker";
	level.attachmentarray["Lightmachine"][7] = "acog";
	level.attachmentarray["Lightmachine"][8] = "steadyaim";
	level.attachmentarray["Lightmachine"][9] = "silencer";
	level.attachmentarray["Lightmachine"][10] = "vzoom";
	level.attachmentarray["Lightmachine"][11] = "extclip";
	level.attachmentarray["Lightmachine"][12] = "dualoptic";
	level.attachmentarray["Lightmachine"][13] = "rf";
	level.attachmentarray["Lightmachine"][14] = "ir";
	level.attachmentarray["Snipers"][0] = "silencer";
	level.attachmentarray["Snipers"][1] = "swayreduc";
	level.attachmentarray["Snipers"][2] = "vzoom";
	level.attachmentarray["Snipers"][3] = "dualclip";
	level.attachmentarray["Snipers"][4] = "fmj";
	level.attachmentarray["Snipers"][5] = "acog";
	level.attachmentarray["Snipers"][6] = "extclip";
	level.attachmentarray["Snipers"][7] = "steadyaim";
	level.attachmentarray["Snipers"][8] = "ir";
	level.attachmentarray["Pistols"][0] = "reflex";
	level.attachmentarray["Pistols"][1] = "extclip";
	level.attachmentarray["Pistols"][2] = "steadyaim";
	level.attachmentarray["Pistols"][3] = "extbarrel";
	level.attachmentarray["Pistols"][4] = "fmj";
	level.attachmentarray["Pistols"][5] = "dualclip";
	level.attachmentarray["Pistols"][6] = "silencer";
	level.attachmentarray["Pistols"][7] = "tacknife";
	level.attachmentarray["Pistols"][8] = "dw";
	level.attachmentarray["Specials"][0] = "reflex";
	level.attachmentarray["Specials"][1] = "acog";
	level.attachmentarray["Specials"][2] = "ir";
	level.attachmentarray["Specials"][3] = "vzoom";
	level.attachmentarray["Specials"][4] = "stackfire";
	level.attachmentarray["All"][0] = "acog";
	level.attachmentarray["All"][1] = "defaultattachment";
	level.attachmentarray["All"][2] = "dualclip";
	level.attachmentarray["All"][3] = "dualoptic";
	level.attachmentarray["All"][4] = "dw";
	level.attachmentarray["All"][5] = "extbarrel";
	level.attachmentarray["All"][6] = "extclip";
	level.attachmentarray["All"][7] = "fastads";
	level.attachmentarray["All"][8] = "fmj";
	level.attachmentarray["All"][9] = "gl";
	level.attachmentarray["All"][10] = "grip";
	level.attachmentarray["All"][11] = "holo";
	level.attachmentarray["All"][12] = "ir";
	level.attachmentarray["All"][13] = "is";
	level.attachmentarray["All"][14] = "mms";
	level.attachmentarray["All"][15] = "rangefinder";
	level.attachmentarray["All"][16] = "reflex";
	level.attachmentarray["All"][17] = "rf";
	level.attachmentarray["All"][18] = "sf";
	level.attachmentarray["All"][19] = "silencer";
	level.attachmentarray["All"][20] = "stackfire";
	level.attachmentarray["All"][21] = "stalker";
	level.attachmentarray["All"][22] = "steadyaim";
	level.attachmentarray["All"][23] = "swayreduc";
	level.attachmentarray["All"][24] = "tacknife";
	level.attachmentarray["All"][25] = "vzoom";
	if( category == "Submachine" )
	{
		return level.attachmentarray[ "Submachine"];
	}
	if( category == "Assault" )
	{
		return level.attachmentarray[ "Assault"];
	}
	if( category == "Shotguns" )
	{
		return level.attachmentarray[ "Shotguns"];
	}
	if( category == "Lightmachine" )
	{
		return level.attachmentarray[ "Lightmachine"];
	}
	if( category == "Snipers" )
	{
		return level.attachmentarray[ "Snipers"];
	}
	if( category == "Pistols" )
	{
		return level.attachmentarray[ "Pistols"];
	}
	if( category == "Specials" )
	{
		return level.attachmentarray[ "Specials"];
	}
	if( category == "All" )
	{
		return level.attachmentarray[ "All"];
	}

}

returnweaponarray( category )
{
	level.weaponarray["Submachine"][0] = "mp7_mp";
	level.weaponarray["Submachine"][1] = "pdw57_mp";
	level.weaponarray["Submachine"][2] = "vector_mp";
	level.weaponarray["Submachine"][3] = "insas_mp";
	level.weaponarray["Submachine"][4] = "qcw05_mp";
	level.weaponarray["Submachine"][5] = "evoskorpion_mp";
	level.weaponarray["Submachine"][6] = "peacekeeper_mp";
	level.weaponarray["Assault"][0] = "tar21_mp";
	level.weaponarray["Assault"][1] = "type95_mp";
	level.weaponarray["Assault"][2] = "sig556_mp";
	level.weaponarray["Assault"][3] = "sa58_mp";
	level.weaponarray["Assault"][4] = "hk416_mp";
	level.weaponarray["Assault"][5] = "scar_mp";
	level.weaponarray["Assault"][6] = "saritch_mp";
	level.weaponarray["Assault"][7] = "xm8_mp";
	level.weaponarray["Assault"][8] = "an94_mp";
	level.weaponarray["Shotguns"][0] = "870mcs_mp";
	level.weaponarray["Shotguns"][1] = "saiga12_mp";
	level.weaponarray["Shotguns"][2] = "ksg_mp";
	level.weaponarray["Shotguns"][3] = "srm1216_mp";
	level.weaponarray["Lightmachine"][0] = "mk48_mp";
	level.weaponarray["Lightmachine"][1] = "qbb95_mp";
	level.weaponarray["Lightmachine"][2] = "lsat_mp";
	level.weaponarray["Lightmachine"][3] = "hamr_mp";
	level.weaponarray["Snipers"][0] = "svu_mp";
	level.weaponarray["Snipers"][1] = "dsr50_mp";
	level.weaponarray["Snipers"][2] = "ballista_mp";
	level.weaponarray["Snipers"][3] = "as50_mp";
	level.weaponarray["Pistols"][0] = "fiveseven_mp";
	level.weaponarray["Pistols"][1] = "fnp45_mp";
	level.weaponarray["Pistols"][2] = "beretta93r_mp";
	level.weaponarray["Pistols"][3] = "judge_mp";
	level.weaponarray["Pistols"][4] = "kard_mp";
	level.weaponarray["Launchers"][0] = "smaw_mp";
	level.weaponarray["Launchers"][1] = "usrpg_mp";
	level.weaponarray["Launchers"][2] = "fhj18_mp";
	level.weaponarray["SuperSpecials"][0] = "minigun_wager_mp";
	level.weaponarray["SuperSpecials"][1] = "m32_wager_mp";
	level.weaponarray["AlienGuns"][0] = "::initRaygun";
	level.weaponarray["AlienGuns"][1] = "::initPortGun";
	level.weaponarray["AlienGuns"][2] = "::initRaygunM2";
	level.weaponarray["AlienGuns"][3] = "::initPortGunM2";
	level.weaponarray["AlienGuns"][4] = "::ZVX1337";
	level.weaponarray["AlienGuns"][5] = "::lightGun";
	level.weaponarray["AlienGuns"][6] = "::SMagnum";
	level.weaponarray["AlienGuns"][7] = "::Rammer";
	level.weaponarray["AlienGuns"][8] = "::Exterminator";
	level.weaponarray["AlienGuns"][9] = "::mustangbro";
	level.weaponarray["AlienGuns"][10] = "::do_LightningThunder";
	level.weaponarray["Specials"][2] = "riotshield_mp";
	level.weaponarray["Specials"][3] = "crossbow_mp+stackfire";
	level.weaponarray["Specials"][4] = "minigun_mp";
	level.weaponarray["Specials"][5] = "knife_ballistic_mp";
	level.weaponarray["Lethals"][0] = "frag_grenade_mp";
	level.weaponarray["Lethals"][1] = "sticky_grenade_mp";
	level.weaponarray["Lethals"][2] = "hatchet_mp";
	level.weaponarray["Lethals"][3] = "bouncingbetty_mp";
	level.weaponarray["Lethals"][4] = "satchet_charge_mp";
	level.weaponarray["Lethals"][5] = "claymore_mp";
	level.weaponarray["Tacticals"][0] = "concussion_grenade_mp";
	level.weaponarray["Tacticals"][1] = "willy_pete_mp";
	level.weaponarray["Tacticals"][2] = "sensor_grenade_mp";
	level.weaponarray["Tacticals"][3] = "emp_grenade_mp";
	level.weaponarray["Tacticals"][4] = "proximity_grenade_mp";
	level.weaponarray["Tacticals"][5] = "pda_hack_mp";
	level.weaponarray["Tacticals"][6] = "flash_grenade_mp";
	level.weaponarray["Tacticals"][7] = "trophy_system_mp";
	level.weaponarray["Tacticals"][8] = "tactical_insertion_mp";
	level.weaponarray["All"][0] = "mp7_mp";
	level.weaponarray["All"][1] = "pdw57_mp";
	level.weaponarray["All"][2] = "vector_mp";
	level.weaponarray["All"][3] = "insas_mp";
	level.weaponarray["All"][4] = "qcw05_mp";
	level.weaponarray["All"][5] = "evoskorpion_mp";
	level.weaponarray["All"][6] = "peacekeeper_mp";
	level.weaponarray["All"][7] = "tar21_mp";
	level.weaponarray["All"][8] = "type95_mp";
	level.weaponarray["All"][9] = "sig556_mp";
	level.weaponarray["All"][10] = "sa58_mp";
	level.weaponarray["All"][11] = "hk416_mp";
	level.weaponarray["All"][12] = "scar_mp";
	level.weaponarray["All"][13] = "saritch_mp";
	level.weaponarray["All"][14] = "xm8_mp";
	level.weaponarray["All"][15] = "an94_mp";
	level.weaponarray["All"][16] = "870mcs_mp";
	level.weaponarray["All"][17] = "saiga12_mp";
	level.weaponarray["All"][18] = "ksg_mp";
	level.weaponarray["All"][19] = "srm1216_mp";
	level.weaponarray["All"][20] = "mk48_mp";
	level.weaponarray["All"][21] = "qbb95_mp";
	level.weaponarray["All"][22] = "lsat_mp";
	level.weaponarray["All"][23] = "hamr_mp";
	level.weaponarray["All"][24] = "svu_mp";
	level.weaponarray["All"][25] = "dsr50_mp";
	level.weaponarray["All"][26] = "ballista_mp";
	level.weaponarray["All"][27] = "as50_mp";
	level.weaponarray["All"][28] = "fiveseven_mp";
	level.weaponarray["All"][29] = "fnp45_mp";
	level.weaponarray["All"][30] = "beretta93r_mp";
	level.weaponarray["All"][31] = "judge_mp";
	level.weaponarray["All"][32] = "kard_mp";
	level.weaponarray["All"][33] = "smaw_mp";
	level.weaponarray["All"][34] = "usrpg_mp";
	level.weaponarray["All"][35] = "fhj18_mp";
	level.weaponarray["All"][36] = "minigun_wager_mp";
	level.weaponarray["All"][37] = "m32_wager_mp";
	level.weaponarray["All"][38] = "riotshield_mp";
	level.weaponarray["All"][39] = "crossbow_mp+stackfire";
	level.weaponarray["All"][40] = "knife_ballistic_mp";
	level.weaponarray["All"][41] = "knife_held_mp";
	if( category == "Submachine" )
	{
		return level.weaponarray[ "Submachine"];
	}
	if( category == "Assault" )
	{
		return level.weaponarray[ "Assault"];
	}
	if( category == "Shotguns" )
	{
		return level.weaponarray[ "Shotguns"];
	}
	if( category == "Lightmachine" )
	{
		return level.weaponarray[ "Lightmachine"];
	}
	if( category == "Snipers" )
	{
		return level.weaponarray[ "Snipers"];
	}
	if( category == "Pistols" )
	{
		return level.weaponarray[ "Pistols"];
	}
	if( category == "Launchers" )
	{
		return level.weaponarray[ "Launchers"];
	}
	if( category == "Specials" )
	{
		return level.weaponarray[ "Specials"];
	}
	if( category == "SuperSpecials" )
	{
		return level.weaponarray[ "SuperSpecials"];
	}
	if( category == "AlienGuns" )
	{
		return level.weaponarray[ "AlienGuns"];
	}
	if( category == "Lethals" )
	{
		return level.weaponarray[ "Lethals"];
	}
	if( category == "Tacticals" )
	{
		return level.weaponarray[ "Tacticals"];
	}
	if( category == "All" )
	{
		return level.weaponarray[ "All"];
	}

}

givespawnweapons( status )
{
	self clearperks();
	self takeallweapons();
	self setactionslot( 1, "" );
	self setactionslot( 2, "" );
	self setactionslot( 3, "" );
	self setactionslot( 4, "" );
	level.playerspawnweapon = "fiveseven_mp+steadyaim+extbarrel";
	if( status == "human" )
	{
		self.spawnweapons[0] = level.playerspawnweapon;
		self.spawnweapons[1] = "knife_held_mp";
		self.spawnweapons[2] = "";
		self.spawnweapons[3] = "sensor_grenade_mp";
		self.spawnweapons[4] = "knife_mp";
		self.primaryweapon = self.spawnweapons[ 0];
		self.secondaryweapon = self.spawnweapons[ 1];
	}
	if( status == "zombie" )
	{
		self.spawnweapons[0] = "knife_held_mp";
		self.spawnweapons[1] = "";
		self.spawnweapons[2] = "";
		self.spawnweapons[3] = "tactical_insertion_mp";
		self setperk( "specialty_fastmantle" );
		self setperk( "specialty_fastmeleerecovery" );
		self setperk( "specialty_fastladderclimb" );
		self setperk( "specialty_fallheight" );
		self setperk( "specialty_fastequipmentuse" );
		self setperk( "specialty_fasttoss" );
		self setperk( "specialty_movefaster" );
		self setperk( "specialty_unlimitedsprint" );
		self setperk( "specialty_quieter" );
	}
	i = 0;
	while( i < 5 )
	{
		if( IsDefined( self.spawnweapons[ i] ) )
		{
			self giveweapon( self.spawnweapons[ i] );
			self setweaponammoclip( self.spawnweapons[ i], weaponclipsize( self.spawnweapons[ i] ) );
			self givestartammo( self.spawnweapons[ i] );
			self switchtoweapon( self.spawnweapons[ 0] );
		}
		wait 0.05;
		i++;
	}

}

isvalidweapon( weaponref )
{
	if( strtok( weaponref, "_" )[ 1] != "dw" )
	{
		weaponref = strtok( weaponref, "+" )[ 0];
	}
	else
	{
		weaponref += "_mp";
	}
	self.validreturn = weaponref;
	self.tempweaponarray = returnweaponarray( "All" );
	i = 0;
	while( i < self.tempweaponarray.size )
	{
		if( self.tempweaponarray[ i] == weaponref )
		{
			return 1;
		}
		i++;
	}
	return 0;

}

isvalidattachment( weaponref, attachmentref )
{
	if( strtok( weaponref, "_" )[ 1] != "dw" )
	{
		weaponref = strtok( weaponref, "+" )[ 0];
	}
	else
	{
		weaponref += "_mp";
	}
	self.validreturn = weaponref;
	self.submachineguns = returnweaponarray( "Submachine" );
	self.assaultguns = returnweaponarray( "Assault" );
	self.shotguns = returnweaponarray( "Shotguns" );
	self.lightmachineguns = returnweaponarray( "Lightmachine" );
	self.snipers = returnweaponarray( "Snipers" );
	self.pistols = returnweaponarray( "Pistols" );
	self.weaponcategory = undefined;
	self.attachmentlist = undefined;
	a = 0;
	while( a < self.submachineguns.size )
	{
		if( self.submachineguns[ a] == weaponref )
		{
			self.weaponcategory = "Submachine";
		}
		a++;
	}
	b = 0;
	while( b < self.assaultguns.size )
	{
		if( self.assaultguns[ b] == weaponref )
		{
			self.weaponcategory = "Assault";
		}
		b++;
	}
	c = 0;
	while( c < self.shotguns.size )
	{
		if( self.shotguns[ c] == weaponref )
		{
			self.weaponcategory = "Shotguns";
		}
		c++;
	}
	d = 0;
	while( d < self.lightmachineguns.size )
	{
		if( self.lightmachineguns[ d] == weaponref )
		{
			self.weaponcategory = "Lightmachine";
		}
		d++;
	}
	e = 0;
	while( e < self.snipers.size )
	{
		if( self.snipers[ e] == weaponref )
		{
			self.weaponcategory = "Snipers";
		}
		e++;
	}
	f = 0;
	while( f < self.pistols.size )
	{
		if( self.pistols[ f] == weaponref )
		{
			self.weaponcategory = "Pistols";
		}
		f++;
	}
	g = 0;
	while( g < 2 )
	{
		if( weaponref == "crossbow_mp+stackfire" )
		{
			self.weaponcategory = "Specials";
		}
		g++;
	}
	if( !(IsDefined( self.weaponcategory )) )
	{
		return 0;
	}
	self.attachmentlist = returnattachmentarray( self.weaponcategory );
	h = 0;
	while( h < self.attachmentlist.size )
	{
		if( self.attachmentlist[ h] == attachmentref )
		{
			return 1;
		}
		h++;
	}
	return 0;

}

giveinfraredvision( status )
{
	if( self.money >= level.itemprice[ status][ "General"][ "Infrared"] )
	{
		if( !(IsDefined( self.infraredon )) )
		{
			self.infraredon = 1;
			self iprintln( "^2Infrared Vision ^7Purchased Successfully" );
			self.money = self.money - level.itemprice[ status][ "General"][ "Infrared"];
			self setinfraredvision( 1 );
			self useservervisionset( 1 );
			self setvisionsetforplayer( level.remore_mortar_infrared_vision, 1 );
		}
		else
		{
			self senderror( "AlreadyHasInfrared" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

giveinfraredvisionraw()
{
	self setinfraredvision( 1 );
	self useservervisionset( 1 );
	self setvisionsetforplayer( level.remore_mortar_infrared_vision, 1 );

}

refillammo()
{
	self.currentweapon = self getcurrentweapon();
	if( self.money >= level.itemprice[ "Human"][ "Weapons"][ "Ammo"] )
	{
		if( isvalidweapon( self.currentweapon ) )
		{
			self setweaponammoclip( self.currentweapon, weaponclipsize( self.currentweapon ) );
			self givemaxammo( self.currentweapon );
			self.money = self.money - level.itemprice[ "Human"][ "Weapons"][ "Ammo"];
			self iprintln( "^2Max Ammo ^7Purchased Successfully" );
		}
		else
		{
			self senderror( "InvalidWeapon" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

addhealth( amount, status )
{
	if( self.money >= level.itemprice[ status][ "General"][ "Health"] )
	{
		self.addinghealth = 1;
		wait 0.01;
		self.health = self.health + amount;
		self.maxhealth = self.health;
		self.addinghealth = 0;
		if( !(self.healthmonitor) )
		{
			self thread monitorhealth();
		}
		self.money = self.money - level.itemprice[ status][ "General"][ "Health"];
		self iprintln( "^1+100 Health ^7Purchased Successfully" );
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

monitorhealth()
{
	self endon( "disconnect" );
	self endon( "infected" );
	self endon( "normalHealth" );
	level endon( "game_ended" );
	self.healthmonitor = 1;
	for(;;)
	{
	if( !(self.addinghealth) )
	{
		if( self.health > 100 )
		{
			self.maxhealth = self.health;
		}
	}
	if( self.health < 100 )
	{
		self.maxhealth = 100;
		self.healthmonitor = 0;
		self notify( "normalHealth" );
	}
	wait 0.01;
	}

}

giveuav( status )
{
	if( self.money >= level.itemprice[ status][ "General"][ "UAV"] )
	{
		if( !(IsDefined( self.uav )) )
		{
			self.uav = 1;
			self setclientuivisibilityflag( "g_compassShowEnemies", 1 );
			self.money = self.money - level.itemprice[ status][ "General"][ "UAV"];
			self iprintln( "^2UAV ^7Purchased Successfully" );
		}
		else
		{
			self senderror( "AlreadyHasUAV" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

replaceweaponworld( weapon, category )
{
	self.currentweapon = self getcurrentweapon();
	if( isvalidweapon( self.currentweapon ) )
	{
		self.currentweaponnew = self.validreturn;
		if( weapon != self.secondaryweapon && weapon != self.primaryweapon )
		{
			if( self.currentweapon == self.primaryweapon )
			{
				self.primaryweapon = weapon;
			}
			if( self.currentweapon == self.secondaryweapon )
			{
				self.secondaryweapon = weapon;
			}
			if( self.currentweapon == "knife_held_mp" )
			{
				self takeweapon( "knife_held_mp" );
			}
			else
			{
				self takeweapon( self.currentweapon );
			}
			self giveweapon( weapon );
			self setweaponammoclip( weapon, weaponclipsize( weapon ) );
			self givestartammo( weapon );
			self switchtoweapon( weapon );
		}
		else
		{
			self senderror( "AlreadyHasWeapon" );
		}
	}
	else
	{
		self senderror( "InvalidWeapon" );
	}

}

replaceweapon( weapon, category )
{
	self.currentweapon = self getcurrentweapon();
	if( self.money >= level.itemprice[ "Human"][ "Weapons"][ category] )
	{
		if( isvalidweapon( self.currentweapon ) )
		{
			self.currentweaponnew = self.validreturn;
			if( weapon != self.secondaryweapon && weapon != self.primaryweapon )
			{
				if( self.currentweapon == self.primaryweapon )
				{
					self.primaryweapon = weapon;
				}
				if( self.currentweapon == self.secondaryweapon )
				{
					self.secondaryweapon = weapon;
				}
				if( self.currentweapon == "knife_held_mp" )
				{
					self takeweapon( "knife_held_mp" );
				}
				else
				{
					self takeweapon( self.currentweapon );
				}
				self giveweapon( weapon );
				self setweaponammoclip( weapon, weaponclipsize( weapon ) );
				self givestartammo( weapon );
				self switchtoweapon( weapon );
				self.money = self.money - level.itemprice[ "Human"][ "Weapons"][ category];
			}
			else
			{
				self senderror( "AlreadyHasWeapon" );
			}
		}
		else
		{
			self senderror( "InvalidWeapon" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

replaceweaponattachment( weapon, attachment )
{
	self.currentweapon = self getcurrentweapon();
	if( self.money >= level.itemprice[ "Human"][ "Attachments"][ attachment] )
	{
		if( self.currentweapon != "knife_held_mp" && self isvalidattachment( weapon, attachment ) && isvalidweapon( self.currentweapon ) )
		{
			if( self.currentweapon != weapon + ( "+" + attachment ) )
			{
				if( strtok( self.currentweapon, "_" )[ 1] == "dw" && attachment == "dw" )
				{
					self senderror( "AlreadyHasAttachment" );
				}
				else
				{
					self.currentweaponnew = self.validreturn;
					oldammo = self getweaponammostock( self.currentweapon );
					self takeweapon( self.currentweapon );
					self.newweaponstring += "+" + attachment;
					if( attachment == "dw" )
					{
						self giveweapon( strtok( self.currentweaponnew, "_" )[ 0] + "_dw_mp" );
					}
					else
					{
						self giveweapon( self.newweaponstring );
					}
					self setweaponammostock( self.newweaponstring, oldammo );
					self switchtoweapon( self.newweaponstring );
					self.money = self.money - level.itemprice[ "Human"][ "Attachments"][ attachment];
				}
			}
			else
			{
				self senderror( "AlreadyHasAttachment" );
			}
		}
		else
		{
			self senderror( "InvalidWeaponAttachment" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

replacecurrentweaponattachment( attachment )
{
	self.currentweapon = self getcurrentweapon();
	if( strtok( self.currentweapon, "_" )[ 1] != "dw" )
	{
		self.currentweapon = strtok( self.currentweapon, "+" )[ 0];
	}
	else
	{
		self.currentweapon += "_mp";
	}
	self.validreturn = self.currentweapon;
	self thread replaceweaponattachment( self.currentweapon, attachment );

}

storehuds()
{
	self.moneyhud destroyelem();
	self.moneyhud destroyelement();
	self.moneyhud = self drawtext( "Money $", "objective", 2, 0, 130, ( 1, 1, 1 ), 0, ( 0, 1, 0 ), 0.5, 1, 0 );
	self.moneyhud.alignx = "left";
	self.moneyhud.horzalign = "left";
	self.moneyhud.vertalign = "center";
	self.moneyhud fadeovertime( 0.5 );
	self.moneyhud.alpha = 1;
	self.healthhud destroyelem();
	self.healthhud destroyelement();
	self.healthhud = self drawtext( "Health + ", "objective", 2, 0, 155, ( 1, 1, 1 ), 0, ( 1, 0, 0 ), 0.5, 2, 0 );
	self.healthhud.alignx = "left";
	self.healthhud.horzalign = "left";
	self.healthhud.vertalign = "center";
	self.healthhud fadeovertime( 0.5 );
	self.healthhud.alpha = 1;
	self.healthvalue = drawvalue( self.health, "objective", 2, 57, 155, ( 1, 1, 1 ), 0, ( 1, 0, 0 ), 0.5, 2, 0 );
	self.healthvalue.alignx = "left";
	self.healthvalue.horzalign = "left";
	self.healthvalue.vertalign = "center";
	self.healthvalue fadeovertime( 0.5 );
	self.healthvalue.alpha = 1;
	self.moneyvalue = drawvalue( self.money, "objective", 2, 57, 130, ( 1, 1, 1 ), 0, ( 0, 1, 0 ), 0.5, 2, 0 );
	self.moneyvalue.alignx = "left";
	self.moneyvalue.horzalign = "left";
	self.moneyvalue.vertalign = "center";
	self.moneyvalue fadeovertime( 0.5 );
	self.moneyvalue.alpha = 1;

}

destroyhuds()
{
	foreach( player in level.players )
	{
		player.moneyhud destroyelem();
		player.moneyhud destroyelement();
		player.healthhud destroyelem();
		player.healthhud destroyelement();
		player.healthvalue destroyelem();
		player.healthvalue destroyelement();
		player.moneyvalue destroyelem();
		player.moneyvalue destroyelement();
		wait 0.05;
	}
	level.infobartext destroyelem();
	level.infobartext destroyelement();

}

destroyplayerhuds()
{
	self.moneyhud destroyelem();
	self.moneyhud destroyelement();
	self.healthhud destroyelem();
	self.healthhud destroyelement();
	self.healthvalue destroyelem();
	self.healthvalue destroyelement();
	self.moneyvalue destroyelem();
	self.moneyvalue destroyelement();

}

returnrandomplayer()
{
	return randomint( level.players.size );

}

selectrandomplayers()
{
	level.startingzombiecount = 1;
	i = 0;
	while( i < level.startingzombiecount )
	{
		level.zombieselectioninprogress = 1;
		level.selectedplayer[i] = level thread returnrandomplayer();
		level.currentselectedplayer = level.selectedplayer[ i];
		if( level.hostcantbecomezombie && level.players[ level.currentselectedplayer] ishost() && level.players[ level.currentselectedplayer].name != "PlaceHolderName" )
		{
		}
		else
		{
			level.players[ level.currentselectedplayer] suicide();
			level.players[ level.currentselectedplayer].startingzombie = 1;
			level.zombiecount = level.zombiecount + 1;
		}
		wait 0.05;
		i++;
	}
	wait 1;
	level.zombieselectioninprogress = 0;
	return level.selectedplayers;

}

tracebullet( tracedistance, tracereturn, detectplayers )
{
	if( !(IsDefined( tracedistance )) )
	{
		tracedistance = 10000000;
	}
	if( !(IsDefined( tracereturn )) )
	{
		tracereturn = "position";
	}
	if( !(IsDefined( detectplayers )) )
	{
		detectplayers = 0;
	}
	return bullettrace( self geteye(), self geteye() + vector_scale( anglestoforward( self getplayerangles() ), tracedistance ), detectplayers, self )[ tracereturn];

}

slowhumans( time )
{
	if( self.money >= level.itemprice[ "Zombie"][ "General"][ "SlowHumans"] )
	{
		while( !(IsDefined( level.slowhumans )) )
		{
			self endon( "disconnect" );
			self endon( "endSlowHumans" );
			self.money = self.money - level.itemprice[ "Zombie"][ "General"][ "SlowHumans"];
			level.slowhumans = 1;
			level.slowhumanstime = time;
			iprintln( "^1All Humans Have Been Slowed For " + ( time + " Seconds" ) );
			if( level.slowhumanstime != 0 )
			{
				level thread setallplayerspeed( 0.7 );
				wait 1;
				level.slowhumanstime = level.slowhumanstime - 1;
			}
			else
			{
				level thread setallplayerspeed( 1 );
				level.slowhumans = undefined;
				iprintln( "^2Humans Speed Returned To Normal" );
				self notify( "endSlowHumans" );
			}
			wait 0.01;
		}
		self senderror( "AlreadySlowedHumans" );
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

setallplayerspeed( speed )
{
	foreach( player in level.players )
	{
		if( player.status != "zombie" )
		{
			player setmovespeedscale( speed );
		}
		wait 0.01;
	}

}

infiniteammo()
{
	if( self.money >= level.itemprice[ "Human"][ "Weapons"][ "UnlimitedAmmo"] )
	{
		if( self.banned == 0 )
		{
			while( !(IsDefined( self.infiniteammo )) )
			{
				self endon( "disconnect" );
				self endon( "infected" );
				self.infiniteammo = 1;
				self.money = self.money - level.itemprice[ "Human"][ "Weapons"][ "UnlimitedAmmo"];
				wait 0.1;
				weapon = self getcurrentweapon();
				self setweaponammoclip( weapon, weaponclipsize( weapon ) );
				self givemaxammo( weapon );
			}
			self senderror( "AlreadyHasInfiniteAmmo" );
		}
		else
		{
			self iprintln( "Combining This and an overpowered gun is ^1Banned^7 from ZombieLand" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

infinitereload()
{
	if( self.money >= level.itemprice[ "Human"][ "Weapons"][ "infiniteReload"] )
	{
		while( !(IsDefined( self.infinitereload )) )
		{
			self endon( "disconnect" );
			self endon( "infected" );
			self.infinitereload = 1;
			self.money = self.money - level.itemprice[ "Human"][ "Weapons"][ "infiniteReload"];
			wait 0.1;
			weapon = self getcurrentweapon();
			self givemaxammo( weapon );
		}
		self senderror( "AlreadyHasInfiniteAmmo" );
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

watchforturretdeath()
{
	self endon( "turretRemoved" );
	level endon( "game_ended" );
	for(;;)
	{
	self waittill( "destroy_turret" );
	self setturretminimapvisible( 0 );
	playfxontag( level.auto_turret_settings[ self.turrettype].damagefx, self, level.auto_turret_settings[ self.turrettype].stunfxtag );
	wait 1;
	level thread givedestroyedturretmoney( "zombie", 300 );
	self delete();
	level.turretsspawned = level.turretsspawned - 1;
	self notify( "turretRemoved" );
	wait 0.01;
	}

}

givedestroyedturretmoney( status, money )
{
	foreach( player in level.players )
	{
		if( player.status == status )
		{
			player.money = player.money + money;
			player iprintln( "A Human Turret Was ^1Destroyed^7, All Zombies Have Been Given ^2$300 Bonus Cash" );
		}
		wait 0.01;
	}

}

spawnturretplayer( turrettype )
{
	if( self.money >= level.itemprice[ "Human"][ "General"][ "Turret"] )
	{
		if( level.turretsspawned < level.turretlimit )
		{
			self iprintln( "^2Turret ^7Purchased and Spawned Successfully" );
			self.money = self.money - level.itemprice[ "Human"][ "General"][ "Turret"];
			tempspawnposition += vector_scale( anglestoforward( ( 0, self getplayerangles()[ 1], self getplayerangles()[ 2] ) ), 100 );
			tempspawnposition[2] += 20;
			spawnposition = bullettrace( tempspawnposition, tempspawnposition - ( 0, 0, 130 ), 0, self )[ "position"];
			turret = spawnturret( "auto_turret", spawnposition, turrettype );
			level.turretsspawned = level.turretsspawned + 1;
			turret.angles = ( 0, self getplayerangles()[ 1], self getplayerangles()[ 2] );
			turret setmodel( "t6_wpn_turret_sentry_gun" );
			turret setturretteam( "allies" );
			turret.status = "human";
			turret.team = "allies";
			setupturrethealth( turret );
			turret thread watchdamage();
			turret.weaponinfoname = turrettype;
			turret.turrettype = "sentry";
			turret setturrettype( turret.turrettype );
			turret laseron();
			turret setturretminimapvisible( 1 );
			turret thread watchforturretdeath();
			turret thread turretplayerwatcher();
			turret setentityheadicon( self.pers[ "team"], self, level.turrets_headicon_offset[ "default"] );
			return turret;
		}
		else
		{
			self senderror( "MaxTurrets" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

playeranglestoforward( player, distance )
{
	return player.origin + vector_scale( anglestoforward( player getplayerangles() ), distance );

}

vector_scal( vec, scale )
{
	vec = ( vec[ 0] * scale, vec[ 1] * scale, vec[ 2] * scale );
	return vec;

}

toggleufo()
{
	self endon( "disconnect" );
	self endon( "death" );
	self endon( "disableUFO" );
	self.ufo = booleanopposite( self.ufo );
	self iprintln( booleanreturnval( self.ufo, "UFO Mode: ^1Off", "UFO Mode: ^2On^7
Press [{+frag}] To Move!" ) );
	while( self.ufo )
	{
		self.parentobject = spawn( "script_origin", self.origin );
		self.parentobject.angles = self.angles;
		self playerlinkto( self.parentobject, undefined );
		self disableweapons();
		if( self fragbuttonpressed() )
		{
			self.parentobject moveto( playeranglestoforward( self, 25 ), 0.05 );
		}
		wait 0.01;
	}
	self unlink();
	self enableweapons();
	self.parentobject delete();
	self notify( "disableUFO" );

}

forcehost()
{
	if( self ishost() )
	{
		self.forcehost = booleanopposite( self.forcehost );
		self iprintln( booleanreturnval( self.forcehost, "Force Host: ^1Off", "Force Host: ^2On" ) );
		if( self.forcehost )
		{
			setdvar( "party_connectToOthers", "0" );
			setdvar( "partyMigrate_disabled", "1" );
			setdvar( "party_mergingEnabled", "0" );
			setdvar( "allowAllNAT", "1" );
		}
		else
		{
			setdvar( "party_connectToOthers", "1" );
			setdvar( "partyMigrate_disabled", "0" );
			setdvar( "party_mergingEnabled", "1" );
			setdvar( "allowAllNAT", "0" );
		}
	}

}

resetdvars()
{
	self.infraredon = undefined;
	self.infiniteammo = undefined;
	self.uav = undefined;
	self setclientuivisibilityflag( "g_compassShowEnemies", 0 );

}

setupteamdvars()
{
	if( level.spawnbots )
	{
		self thread spawnbots();
	}
	level.teamlimit = 18;
	level.teambalance = 0;
	level.disableweapondrop = 1;
	level.allow_teamchange = 0;
	setdvar( "scr_disable_weapondrop", 1 );
	setdvar( "scr_teambalance", 0 );
	setdvar( "party_autoteams", 0 );
	setdvar( "ui_allow_teamchange", "0" );
	setdvar( "g_TeamName_Allies", "Humans" );
	setdvar( "g_TeamName_Axis", "Zombies" );
	setdvar( "g_customTeamName_Allies", "Humans" );
	setdvar( "g_customTeamName_Axis", "Zombies" );

}

randomweapon()
{
	level endon( "game_ended" );
	level endon( "winnerDeclared" );
	while( 1 )
	{
		id = random( level.tbl_weaponids );
		weaponname = id[ "reference"];
		attachmentlist = id[ "attachment"];
		attachments = strtok( attachmentlist, " " );
		attachments[attachments.size] = "";
		attachment = random( attachments );
		if( weaponname != "weapon_null" && id[ "group"] != "weapon_cqb" && id[ "group"] != "weapon_pistol" && id[ "group"] != "weapon_smg" && id[ "group"] != "weapon_assault" && id[ "group"] != "weapon_lmg" && id[ "group"] != "weapon_sniper" && id[ "group"] != "weapon_launcher" )
		{
			correctweapon = 0;
		}
		else
		{
			correctweapon = 1;
		}
		if( weaponname == "m32" )
		{
			return weaponname + ( "wager_mp+" + attachment );
		}
		if( weaponname == "minigun" )
		{
			return weaponname + ( "wager_mp+" + attachment );
		}
		if( correctweapon )
		{
			return weaponname + ( "_mp+" + attachment );
		}
		wait 0.05;
	}

}

giveequipment( equipment, status )
{
	if( self.money >= level.itemprice[ status][ "Equipment"][ equipment] )
	{
		self takeweapon( self.previousequipment );
		self.previousequipment = equipment;
		self giveweapon( equipment );
		self.ngas = 0;
		self setweaponammoclip( equipment, 1 );
		self iprintln( "Equipment Purchased Successfully: ^2" + equipment );
		self.money = self.money - level.itemprice[ status][ "Equipment"][ equipment];
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

bg_giveplayerweapon( weapon )
{
	currentweapon = self getcurrentweapon();
	self takeweapon( currentweapon );
	self giveweapon( weapon );
	self switchtoweapon( weapon );
	self givemaxammo( weapon );

}

giveperk( perk, status )
{
	if( self.money >= level.itemprice[ status][ "Perks"][ perk] )
	{
		if( !(self hasperk( perk )) )
		{
			self setperk( perk );
			self iprintln( "Perk Purchased Successfully: ^2" + perk );
			self.money = self.money - level.itemprice[ status][ "Perks"][ perk];
		}
		else
		{
			self senderror( "HasPerk" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

initgiveweap( code, name, camo, enab )
{
	if( camo == 0 )
	{
		self giveweapon( code, 0, 0 );
	}
	else
	{
		self giveweapon( code, 0, camo, 0, 0, 0, 0 );
	}
	self switchtoweapon( code );
	self setweaponammoclip( code, weaponclipsize( self getcurrentweapon() ) );
	if( enab == 1 )
	{
		self iprintlnbold( "^6Give Weapon to ^2" + name );
	}

}

tracebullet()
{
	return bullettrace( self geteye(), self geteye() + vector_scale( anglestoforward( self getplayerangles() ), 1000000 ), 0, self )[ "position"];

}

initraygun()
{
	if( self.money >= level.itemprice[ "Human"][ "Weapons"][ "RayGun"] )
	{
		if( self.infiniteammo == 0 )
		{
			if( self.israygun == 0 )
			{
				self endon( "death" );
				weap = self getcurrentweapon();
				self takeweapon( weap );
				self.banned = 1;
				self initgiveweap( "judge_mp+reflex+silencer", "", 38, 0 );
				self thread doraygun();
				self.money = self.money - level.itemprice[ "Human"][ "Weapons"][ "RayGun"];
				self.israygun = 1;
			}
		}
		else
		{
			self iprintln( "Combining Unlimited Ammo and an overpowered weapon is ^1Banned^7 from ZombieLand" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

doraygun()
{
	self endon( "disconnect" );
	self endon( "stop_Raygun" );
	self thread waitraygunsuicide();
	for(;;)
	{
	self waittill( "weapon_fired" );
	if( self getcurrentweapon() == "judge_mp+reflex+silencer" || self getcurrentweapon() == "judge_mp+reflex+silencer" )
	{
		self thread mainraygun();
	}
	}

}

mainraygun()
{
	raygunexplode = loadfx( "weapon/emp/fx_emp_explosion_equip" );
	weaporigin = self gettagorigin( "tag_weapon_right" );
	target = self tracebullet();
	raygunmissile = spawn( "script_model", weaporigin );
	raygunmissile setmodel( "projectile_at4" );
	raygunmissile.killcament = raygunmissile;
	endlocation = bullettrace( raygunmissile.origin, target, 0, self )[ "position"];
	raygunmissile.angles = vectortoangles( endlocation - raygunmissile.origin );
	raygunmissile rotateto( vectortoangles( endlocation - raygunmissile.origin ), 0.001 );
	raygunmissile moveto( endlocation, 0.1 );
	self thread rayguneffect( raygunmissile, endlocation );
	wait 0.301;
	self notify( "stop_RaygunFX" );
	playfx( raygunexplode, raygunmissile.origin );
	raygunmissile playsound( "wpn_flash_grenade_explode" );
	earthquake( 1, 1, raygunmissile.origin, 20 );
	raygunmissile radiusdamage( raygunmissile.origin, 130, 220, 130, self );
	raygunmissile delete();

}

rayguneffect( object, target )
{
	self endon( "death" );
	self endon( "disconnect" );
	self endon( "stop_RaygunFX_Final" );
	self endon( "stop_Raygun" );
	raygunlaser = loadfx( "misc/fx_equip_tac_insert_light_grn" );
	for(;;)
	{
	raygungreen = spawnfx( raygunlaser, object.origin, vectortoangles( target - object.origin ) );
	triggerfx( raygungreen );
	wait 0.0005;
	raygungreen delete();
	}
	for(;;)
	{
	self waittill( "stop_RaygunFX" );
	UNDEFINED_LOCAL delete();
	self notify( "stop_RaygunFX_Final" );
	}

}

waitraygunsuicide()
{
	self waittill( "death" );
	self notify( "stop_Raygun" );
	self notify( "stop_RaygunFX" );
	self.israygun = 0;

}

initraygunm2()
{
	if( self.money >= level.itemprice[ "Human"][ "Weapons"][ "RayGunM2"] )
	{
		if( self.infiniteammo == 0 )
		{
			if( self.israygunm2 == 0 )
			{
				self endon( "death" );
				weap = self getcurrentweapon();
				self takeweapon( weap );
				self initgiveweap( "ksg_mp+silencer", "", 38, 0 );
				self thread doraygunm2();
				self.banned = 1;
				self iprintln( "^6Ray Gun Mark II ^7: [^2BOUGHT^7]" );
				self.money = self.money - level.itemprice[ "Human"][ "Weapons"][ "RayGunM2"];
				self.israygunm2 = 1;
			}
		}
		else
		{
			self iprintln( "Combining Unlimited Ammo and an overpowered weapon is ^1Banned^7 from ZombieLand" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

doraygunm2()
{
	self endon( "death" );
	self endon( "disconnect" );
	self endon( "stop_RaygunM2" );
	self thread waitraygunm2suicide();
	for(;;)
	{
	self waittill( "weapon_fired" );
	if( self getcurrentweapon() == "ksg_mp+silencer" )
	{
		self thread mainraygunm2();
	}
	}

}

mainraygunm2()
{
	raygunm2explode = loadfx( "weapon/emp/fx_emp_explosion_equip" );
	raygunm2explode2 = loadfx( "weapon/tracer/fx_tracer_flak_single_noExp" );
	weaporigin = self gettagorigin( "tag_weapon_right" );
	target = self tracebullet();
	raygunm2missile = spawn( "script_model", weaporigin );
	raygunm2missile setmodel( "projectile_at4" );
	raygunm2missile.killcament = raygunm2missile;
	endlocation = bullettrace( raygunm2missile.origin, target, 0, self )[ "position"];
	raygunm2missile.angles = vectortoangles( endlocation - raygunm2missile.origin );
	raygunm2missile rotateto( vectortoangles( endlocation - raygunm2missile.origin ), 0.001 );
	raygunm2missile moveto( endlocation, 0.2 );
	self thread raygunm2effect( raygunm2missile, endlocation );
	wait 0.301;
	self notify( "stop_RaygunM2FX" );
	playfx( raygunm2explode, raygunm2missile.origin );
	playfx( raygunm2explode2, raygunm2missile.origin );
	raygunm2missile playsound( "wpn_flash_grenade_explode" );
	raygunm2missile radiusdamage( raygunm2missile.origin, 125, 350, 125, self );
	raygunm2missile delete();

}

raygunm2effect( object, target )
{
	self endon( "death" );
	self endon( "disconnect" );
	self endon( "stop_RaygunM2FX_Final" );
	self endon( "stop_RaygunM2" );
	raygunm2laser = loadfx( "misc/fx_equip_tac_insert_light_grn" );
	for(;;)
	{
	raygunm2red = spawnfx( raygunm2laser, object.origin, vectortoangles( target - object.origin ) );
	triggerfx( raygunm2red );
	wait 0.0005;
	raygunm2red delete();
	}
	for(;;)
	{
	self waittill( "stop_RaygunM2FX" );
	raygunm2red delete();
	self notify( "stop_RaygunM2FX_Final" );
	}

}

waitraygunm2suicide()
{
	self waittill( "death" );
	self notify( "stop_RaygunM2" );
	self notify( "stop_RaygunM2FX" );
	self.israygunm2 = 0;

}

initportgunm2()
{
	if( self.money >= level.itemprice[ "Human"][ "Weapons"][ "portGun"] )
	{
		if( self.infiniteammo == 0 )
		{
			if( self.isportgunm2 == 0 )
			{
				self endon( "death" );
				weap = self getcurrentweapon();
				self takeweapon( weap );
				self.banned = 1;
				self initgiveweap( "srm1216_mp+silencer", "", 44, 0 );
				self thread doportgunm2();
				self iprintln( "^6PORTERS RAYGUN MARK II ^7: [^2BOUGHT^7]" );
				self.money = self.money - level.itemprice[ "Human"][ "Weapons"][ "portGun"];
				self.isportgunm2 = 1;
			}
		}
		else
		{
			self iprintln( "Combining Unlimited Ammo and an overpowered weapon is ^1Banned^7 from ZombieLand" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

doportgunm2()
{
	self endon( "death" );
	self endon( "disconnect" );
	self endon( "stop_PortGunM2" );
	self thread waitportgunm2suicide();
	for(;;)
	{
	self waittill( "weapon_fired" );
	if( self getcurrentweapon() == "srm1216_mp+silencer" )
	{
		self thread mainportgunm2();
	}
	}

}

mainportgunm2()
{
	portgunm2explode = loadfx( "weapon/emp/fx_emp_explosion_equip" );
	portgunm2explode2 = loadfx( "weapon/tracer/fx_tracer_flak_single_noExp" );
	weaporigin = self gettagorigin( "tag_weapon_right" );
	target = self tracebullet();
	portgunm2missile = spawn( "script_model", weaporigin );
	portgunm2missile setmodel( "projectile_at4" );
	portgunm2missile.killcament = portgunm2missile;
	endlocation = bullettrace( portgunm2missile.origin, target, 0, self )[ "position"];
	portgunm2missile.angles = vectortoangles( endlocation - portgunm2missile.origin );
	portgunm2missile rotateto( vectortoangles( endlocation - portgunm2missile.origin ), 0.001 );
	portgunm2missile moveto( endlocation, 0.2 );
	self thread portgunm2effect( portgunm2missile, endlocation );
	wait 0.301;
	self notify( "stop_PortGunM2FX" );
	playfx( portgunm2explode, portgunm2missile.origin );
	playfx( portgunm2explode2, portgunm2missile.origin );
	portgunm2missile playsound( "wpn_flash_grenade_explode" );
	portgunm2missile radiusdamage( portgunm2missile.origin, 135, 540, 135, self );
	portgunm2missile delete();

}

portgunm2effect( object, target )
{
	self endon( "death" );
	self endon( "disconnect" );
	self endon( "stop_PortGunM2FX_Final" );
	self endon( "stop_PortGunM2" );
	portgunm2laser = loadfx( "misc/fx_equip_tac_insert_light_red" );
	for(;;)
	{
	portgunm2red = spawnfx( portgunm2laser, object.origin, vectortoangles( target - object.origin ) );
	triggerfx( portgunm2red );
	wait 0.0005;
	portgunm2red delete();
	}
	for(;;)
	{
	self waittill( "stop_PortGunM2FX" );
	portgunm2red delete();
	self notify( "stop_PortGunM2FX_Final" );
	}

}

waitportgunm2suicide()
{
	self waittill( "death" );
	self notify( "stop_PortGunM2" );
	self notify( "stop_PortGunM2FX" );
	self.isportgunm2 = 0;

}

initportgun()
{
	if( self.money >= level.itemprice[ "Human"][ "Weapons"][ "PortGan"] )
	{
		if( self.infiniteammo == 0 )
		{
			if( self.isportgun == 0 )
			{
				self endon( "death" );
				weap = self getcurrentweapon();
				self takeweapon( weap );
				self initgiveweap( "fnp45_mp+reflex+silencer", "", 31, 0 );
				self thread doportgun();
				self.banned = 1;
				self iprintln( "^6PORTERS RAYGUN ^7 [^2BOUGHT^7]" );
				self.money = self.money - level.itemprice[ "Human"][ "Weapons"][ "PortGan"];
				self.isportgun = 1;
			}
		}
		else
		{
			self iprintln( "Combining Unlimited Ammo and an overpowered weapon is ^1Banned^7 from ZombieLand" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

doportgun()
{
	self endon( "death" );
	self endon( "disconnect" );
	self endon( "stop_PortGun" );
	self thread waitportgunsuicide();
	for(;;)
	{
	self waittill( "weapon_fired" );
	if( self getcurrentweapon() == "fnp45_mp+reflex+silencer" )
	{
		self thread mainportgun();
	}
	}

}

mainportgun()
{
	portgunexplode = loadfx( "weapon/emp/fx_emp_explosion_equip" );
	weaporigin = self gettagorigin( "tag_weapon_right" );
	target = self tracebullet();
	portgunmissile = spawn( "script_model", weaporigin );
	portgunmissile setmodel( "projectile_at4" );
	portgunmissile.killcament = portgunmissile;
	endlocation = bullettrace( portgunmissile.origin, target, 0, self )[ "position"];
	portgunmissile.angles = vectortoangles( endlocation - portgunmissile.origin );
	portgunmissile rotateto( vectortoangles( endlocation - portgunmissile.origin ), 0.001 );
	portgunmissile moveto( endlocation, 0.1 );
	self thread portguneffect( portgunmissile, endlocation );
	wait 0.301;
	self notify( "stop_PortGunFX" );
	playfx( portgunexplode, portgunmissile.origin );
	portgunmissile playsound( "wpn_flash_grenade_explode" );
	portgunmissile radiusdamage( portgunmissile.origin, 141, 460, 141, self );
	portgunmissile delete();

}

portguneffect( object, target )
{
	self endon( "death" );
	self endon( "disconnect" );
	self endon( "stop_PortGunFX_Final" );
	self endon( "stop_PortGun" );
	portgunlaser = loadfx( "misc/fx_equip_tac_insert_light_red" );
	for(;;)
	{
	portgunred = spawnfx( portgunlaser, object.origin, vectortoangles( target - object.origin ) );
	triggerfx( portgunred );
	wait 0.0005;
	portgunred delete();
	}
	for(;;)
	{
	self waittill( "stop_PortGunFX" );
	portgunred delete();
	self notify( "stop_PortGunFX_Final" );
	}

}

waitportgunsuicide()
{
	self waittill( "death" );
	self notify( "stop_PortGun" );
	self notify( "stop_PortGunFX" );
	self.isportgun = 0;

}

do_lightningthunder()
{
	if( self.money >= level.itemprice[ "Human"][ "Weapons"][ "Thunder"] )
	{
		while( self.infiniteammo == 0 )
		{
			self endon( "disconnect" );
			self endon( "death" );
			weap = self getcurrentweapon();
			self takeweapon( weap );
			self initgiveweap( "ksg_mp+reflex+silencer+steadyaim", "", 44, 0 );
			self iprintln( "^6Lighning Thunder ^7: [^2BOUGHT^7]" );
			self.money = self.money - level.itemprice[ "Human"][ "Weapons"][ "Thunder"];
			self.banned = 1;
			self waittill( "weapon_fired" );
			if( self getcurrentweapon() == "ksg_mp+reflex+silencer+steadyaim" )
			{
				self thread main_lightningthunder( 1 );
			}
		}
		self iprintln( "Combining Unlimited Ammo and an overpowered weapon is ^1Banned^7 from ZombieLand" );
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

main_lightningthunder( damagetype )
{
	lightningthunder_explode = loadfx( "weapon/emp/fx_emp_explosion_equip" );
	lightningthunder_explode2 = loadfx( "explosions/fx_exp_equipment_lg" );
	weaponorigin = self gettagorigin( "tag_weapon_right" );
	target = self tracebullet( 1000000 );
	lightningthunder_missile = spawn( "script_model", weaponorigin + vector_scale( anglestoforward( self getplayerangles() ), 70 ) );
	lightningthunder_missile setmodel( "projectile_at4" );
	lightningthunder_missile.killcament = lightningthunder_missile;
	endlocation = bullettrace( lightningthunder_missile.origin, target, 0, self )[ "position"];
	lightningthunder_missile.angles = vectortoangles( endlocation - lightningthunder_missile.origin );
	lightningthunder_missile rotateto( vectortoangles( endlocation - lightningthunder_missile.origin ), 0.001 );
	if( damagetype == 0 )
	{
		self thread effect_lightningthunder( lightningthunder_missile, 0 );
	}
	else
	{
		self thread effect_lightningthunder( lightningthunder_missile, 1 );
	}
	lightningthunder_missile moveto( endlocation, 0.2 );
	wait 0.201;
	self notify( "stop_LightningThunder_FX" );
	playfx( lightningthunder_explode, lightningthunder_missile.origin );
	playfx( lightningthunder_explode2, lightningthunder_missile.origin );
	earthquake( 1, 1, lightningthunder_missile.origin, 50 );
	lightningthunder_missile radiusdamage( lightningthunder_missile.origin, 177, 1470, 245, self );
	lightningthunder_missile delete();

}

effect_lightningthunder( object, damagetype )
{
	self endon( "disconnect" );
	self endon( "death" );
	self endon( "stop_LightningThunder_FX" );
	for(;;)
	{
	playfx( level._effect[ "prox_grenade_player_shock"], object.origin );
	playfx( level._effect[ "prox_grenade_player_shock"], object.origin + ( 2, 2, 2 ) );
	playfx( level._effect[ "prox_grenade_player_shock"], object.origin + ( -2, 2, -2 ) );
	object playsound( "wpn_taser_mine_zap" );
	if( damagetype == 1 )
	{
		earthquake( 1, 1, object.origin, 45 );
		object radiusdamage( object.origin, 56, 748, 56, self );
	}
	wait 0.01;
	}

}

camochanger()
{
	if( self.money >= level.itemprice[ "Human"][ "General"][ "RandomCamo"] )
	{
		rand = randomintrange( 1, 45 );
		weap = self getcurrentweapon();
		self takeweapon( weap );
		self giveweapon( weap, 0, rand, 0, 0, 0, 0 );
		self switchtoweapon( weap );
		self iprintlnbold( "^7Camo #^5" + rand );
		self.money = self.money - level.itemprice[ "Human"][ "General"][ "RandomCamo"];
		wait 0.5;
		self givemaxammo( self.currentweapon );
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

mustangbro()
{
	if( self.money >= level.itemprice[ "Human"][ "Weapons"][ "Sally"] )
	{
		while( self.infiniteammo == 0 )
		{
			self endon( "disconnect" );
			self endon( "death" );
			weap = self getcurrentweapon();
			self takeweapon( weap );
			self giveweapon( "fnp45_dw_mp", 0, 15, 0, 0, 0, 0 );
			self switchtoweapon( "fnp45_dw_mp" );
			self.banned = 1;
			self.money = self.money - level.itemprice[ "Human"][ "Weapons"][ "Sally"];
			self waittill( "weapon_fired" );
			if( self getcurrentweapon() == "fnp45_dw_mp" )
			{
				magicbullet( "m32_wager_mp", self geteye(), self tracebullet(), self );
			}
		}
		self iprintln( "Combining Unlimited Ammo and an overpowered weapon is ^1Banned^7 from ZombieLand" );
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

lightgun()
{
	if( self.money >= level.itemprice[ "Human"][ "Weapons"][ "ElectricG"] )
	{
		while( self.infiniteammo == 0 )
		{
			self endon( "death" );
			self endon( "disconnect" );
			weap = self getcurrentweapon();
			self takeweapon( weap );
			self giveweapon( "kard_mp+silencer+steadyaim", 0, 44, 0, 0, 0, 0 );
			self switchtoweapon( "kard_mp+silencer+steadyaim" );
			self.lightupgun = loadfx( "weapon/emp/fx_emp_explosion_equip" );
			self.banned = 1;
			self.money = self.money - level.itemprice[ "Human"][ "Weapons"][ "ElectricG"];
			self waittill( "weapon_fired" );
			if( self getcurrentweapon() == "kard_mp+silencer+steadyaim" )
			{
				vec2 = anglestoforward( self getplayerangles() );
				e1nd = ( vec2[ 0] * 200000, vec2[ 1] * 200000, vec2[ 2] * 200000 );
				splosionlocation1 = bullettrace( self gettagorigin( "tag_eye" ), self gettagorigin( "tag_eye" ) + e1nd, 0, self )[ "position"];
				playfx( self.lightupgun, splosionlocation1 );
				radiusdamage( splosionlocation1, 90, 154, 90, self );
				earthquake( 0.3, 1, splosionlocation1, 69 );
			}
			wait 0.001;
		}
		self iprintln( "Combining Unlimited Ammo and an overpowered weapon is ^1Banned^7 from ZombieLand" );
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

zvx1337()
{
	if( self.money >= level.itemprice[ "Human"][ "Weapons"][ "1337"] )
	{
		while( self.infiniteammo == 0 )
		{
			self endon( "disconnect" );
			self endon( "death" );
			weap = self getcurrentweapon();
			self takeweapon( weap );
			self giveweapon( "870mcs_mp+dualclip+steadyaim", 0, 43, 0, 0, 0, 0 );
			self switchtoweapon( "870mcs_mp+dualclip+steadyaim" );
			self iprintlnbold( "ZVX 1337 [^2BOUGHT^7]" );
			self.banned = 1;
			self.money = self.money - level.itemprice[ "Human"][ "Weapons"][ "1337"];
			self waittill( "weapon_fired" );
			if( self getcurrentweapon() == "870mcs_mp+dualclip+steadyaim" )
			{
				magicbullet( "straferun_gun_mp", self geteye(), self tracebullet(), self );
			}
		}
		self iprintln( "Combining Unlimited Ammo and an overpowered weapon is ^1Banned^7 from ZombieLand" );
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

rammer()
{
	if( self.rama == 0 )
	{
		if( self.infiniteammo == 0 )
		{
			while( self.money >= level.itemprice[ "Human"][ "Weapons"][ "rama"] )
			{
				self endon( "death" );
				self endon( "disconnect" );
				self.rama = 1;
				self.banned = 1;
				self.money = self.money - level.itemprice[ "Human"][ "Weapons"][ "rama"];
				weap = self getcurrentweapon();
				self takeweapon( weap );
				self giveweapon( "tar21_mp+steadyaim", 0, 39, 0, 0, 0, 0 );
				self switchtoweapon( "tar21_mp+steadyaim" );
				self waittill( "weapon_fired" );
				if( self getcurrentweapon() == "tar21_mp+steadyaim" )
				{
					magicbullet( "870mcs_mp", self geteye(), self tracebullet( 10000 ), self );
				}
			}
			self senderror( "MoreMoney" );
		}
		else
		{
			self iprintln( "Combining Unlimited Ammo and an overpowered weapon is ^1Banned^7 from ZombieLand" );
		}
	}
	else
	{
		self iprintln( "^1ERROR: ^7You already have this weapon" );
	}

}

exterminator()
{
	if( self.exterminator == 0 )
	{
		while( self.money >= level.itemprice[ "Human"][ "Weapons"][ "Exterminator"] )
		{
			self endon( "death" );
			self endon( "disconnect" );
			self.exterminator = 1;
			self.money = self.money - level.itemprice[ "Human"][ "Weapons"][ "Exterminator"];
			weap = self getcurrentweapon();
			self takeweapon( weap );
			self giveweapon( "peacekeeper_mp+mms+silencer+steadyaim", 0, 31, 0, 0, 0, 0 );
			self switchtoweapon( "peacekeeper_mp+mms+silencer+steadyaim" );
			self waittill( "weapon_fired" );
			if( self getcurrentweapon() == "peacekeeper_mp+mms+silencer+steadyaim" )
			{
				magicbullet( "dsr50_mp", self geteye(), self tracebullet( 10000 ), self );
			}
		}
		self senderror( "MoreMoney" );
	}
	else
	{
		self iprintln( "^1ERROR: ^7You already have this weapon" );
	}

}

smagnum()
{
	if( self.sm4g == 0 )
	{
		if( self.money >= level.itemprice[ "Human"][ "Weapons"][ "SMAG"] )
		{
			while( self.infiniteammo == 0 )
			{
				self endon( "death" );
				self endon( "disconnect" );
				self.sm4g = 1;
				self.money = self.money - level.itemprice[ "Human"][ "Weapons"][ "SMAG"];
				weap = self getcurrentweapon();
				self takeweapon( weap );
				self.banned = 1;
				self giveweapon( "hk416_mp+steadyaim", 0, 15, 0, 0, 0, 0 );
				self switchtoweapon( "hk416_mp+steadyaim" );
				self waittill( "weapon_fired" );
				if( self getcurrentweapon() == "hk416_mp+steadyaim" )
				{
					magicbullet( "ai_tank_drone_rocket_mp", self geteye(), self tracebullet(), self );
				}
			}
			self iprintln( "Combining Unlimited Ammo and an overpowered weapon is ^1Banned^7 from ZombieLand" );
		}
		else
		{
			self senderror( "MoreMoney" );
		}
	}
	else
	{
		self iprintln( "^1ERROR: ^7You already have this weapon" );
	}

}

initjericho()
{
	if( self.y2j == 0 )
	{
		if( self.money >= level.itemprice[ "Human"][ "Hax"][ "Jericho"] )
		{
			self endon( "disconnect" );
			self endon( "death" );
			self.y2j = 1;
			level.waypointgreen = loadfx( "misc/fx_equip_tac_insert_light_grn" );
			level.waypointred = loadfx( "misc/fx_equip_tac_insert_light_red" );
			missilesready = 0;
			numberofmissiles = 5;
			self iprintlnbold( "[{+attack}] ^15^7x To Set ^2Nodes ^7(Keep A Distance!!)" );
			self.money = self.money - level.itemprice[ "Human"][ "Hax"][ "Jericho"];
			while( missilesready != numberofmissiles )
			{
				self waittill( "weapon_fired" );
				target = tracebullet();
				mfx = spawnfx( level.waypointgreen, target, ( 0, 0, 1 ), ( 1, 0, 0 ) );
				triggerfx( mfx );
				self thread spawnjerichomissile( target, mfx );
				missilesready++;
			}
			self iprintlnbold( "^7All Missile Paths Initialized, Fire Your Weapon To Launch!" );
			self waittill( "weapon_fired" );
			self notify( "launchMissiles" );
		}
		else
		{
			self senderror( "MoreMoney" );
		}
	}
	else
	{
		self iprintln( "^1ERROR: ^7SAVE_US.Y2J" );
	}

}

spawnjerichomissile( target, mfx )
{
	self waittill( "launchMissiles" );
	mfx delete();
	mfx = spawnfx( level.waypointred, target, ( 0, 0, 1 ), ( 1, 0, 0 ) );
	triggerfx( mfx );
	location += ( 0, 3500, 5000 );
	missile = spawn( "script_model", location );
	missile setmodel( "projectile_sidewinder_missile" );
	missile.angles = missile.angles + ( 90, 90, 90 );
	missile.killcament = missile;
	missile rotateto( vectortoangles( target - missile.origin ), 0.01 );
	wait 0.01;
	time = 3;
	endlocation = bullettrace( missile.origin, target, 0, self )[ "position"];
	missile moveto( endlocation, time );
	wait time;
	self playsound( "wpn_rocket_explode" );
	playfx( level.remote_mortar_fx[ "missileExplode"], missile.origin + ( 0, 0, 1 ) );
	radiusdamage( missile.origin, 350, 760, 350, self, "MOD_PROJECTILE_SPLASH", "remote_missile_bomblet_mp" );
	self.y2j = 0;
	missile delete();
	mfx delete();

}

clone()
{
	if( self.money >= level.itemprice[ "Human"][ "Hax"][ "Clone"] )
	{
		self iprintln( "^2Spawned a Clone" );
		self cloneplayer( 1 );
		self.money = self.money - level.itemprice[ "Human"][ "Hax"][ "Clone"];
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

electriccherry()
{
	if( self.ec == 0 )
	{
		while( self.money >= level.itemprice[ "Human"][ "Hax"][ "cherry"] )
		{
			self endon( "death" );
			self endon( "disconnect" );
			self.ec = 1;
			self iprintln( "^5Electric ^1Cherry^7 does 150 ^1Damage^7 to the Zombies" );
			self.money = self.money - level.itemprice[ "Human"][ "Hax"][ "cherry"];
			wait 0.2;
			self waittill( "reload_start" );
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "j_head" );
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "J_Spine1" );
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "J_Spine4" );
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "pelvis" );
			self playsound( "wpn_taser_mine_zap" );
			self enableinvulnerability();
			radiusdamage( self.origin, 110, 150, 110, self );
			wait 0.5;
			self disableinvulnerability();
		}
		self senderror( "MoreMoney" );
	}
	else
	{
		self iprintln( "^1ERROR: ^7You Already Have the Electric Cherry" );
	}

}

supersayan2()
{
	if( self.ssj3 == 0 )
	{
		while( self.money >= level.itemprice[ "Human"][ "Hax"][ "SSJ2"] )
		{
			self endon( "death" );
			self endon( "disconnect" );
			thread allperkstoggle();
			self.ssj3 = 1;
			self.maxhealth = 5250;
			self.health = self.maxhealth;
			level._effect["torch"] = loadfx( "weapon/remote_mortar/fx_rmt_mortar_explosion" );
			iprintlnbold( "Somebody just went ^3super saiyan 2^7!!" );
			self iprintlnbold( "Transformed To SSj2 + ^2Super Speed^7 + ^1Super Health" );
			self.money = self.money - level.itemprice[ "Human"][ "Hax"][ "SSJ2"];
			self playsound( "chr_spl_generic_gib_american" );
			self setmovespeedscale( 1.35 );
			wait 0.2;
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "j_head" );
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "J_Spine1" );
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "J_Spine4" );
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "pelvis" );
			self playsound( "wpn_taser_mine_zap" );
			self enableinvulnerability();
			radiusdamage( self.origin, 160, 3000, 160, self );
			playfx( level._effect[ "torch"], self.origin + ( 0, 0, 0 ) );
			wait 0.1;
			radiusdamage( self.origin, 250, 500, 250, self );
			foreach( player in level.players )
			{
				self playsound( "wpn_rocket_explode_rock" );
				self playsound( "wpn_taser_mine_zap" );
				self playsound( "mpl_lightning_flyover_boom" );
			}
			wait 3;
			self disableinvulnerability();
			self playsound( "chr_sprint_gasp" );
			wait 2.5;
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "j_head" );
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "J_Spine1" );
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "J_Spine4" );
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "pelvis" );
			wait 2.5;
			self setmovespeedscale( 1.65 );
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "j_head" );
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "pelvis" );
			wait 1;
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "J_Spine1" );
			playfxontag( level._effect[ "prox_grenade_player_shock"], self, "J_Spine4" );
		}
		self senderror( "MoreMoney" );
	}
	else
	{
		self iprintln( "^1ERROR: ^7You Already are a SSj2" );
	}

}

novagas()
{
	if( self.ngas == 0 )
	{
		while( self.money >= level.itemprice[ "Human"][ "General"][ "Nova"] )
		{
			self endon( "disconnect" );
			self endon( "death" );
			self endon( "game_ended" );
			self takeweapon( self getcurrentoffhand() );
			self giveweapon( "willy_pete_mp" );
			self.ngas = 1;
			iprintlnbold( "Someone Bought THE ^2POISONOUS GAS!" );
			self iprintlnbold( "[{+frag}] To throw ^2Nova Gas^7" );
			self iprintln( "Nova Gas ^2Bought^7" );
			self.money = self.money - level.itemprice[ "Human"][ "General"][ "Nova"];
			self waittill( "grenade_fire", grenade );
			if( self getcurrentoffhand() == "willy_pete_mp" )
			{
				self.nova = spawn( "script_model", grenade.origin );
				self.nova setmodel( "t6_wpn_grenade_smoke_projectile" );
				self.ngas = 0;
				self.nova linkto( grenade );
				wait 1.5;
				i = 0;
				while( i <= 62 )
				{
					radiusdamage( self.nova.origin, 280, 21, 45, self );
					wait 0.21;
					i++;
				}
				self.nova delete();
			}
		}
		self senderror( "MoreMoney" );
	}
	else
	{
		self iprintln( "^1ERROR: ^7You Already Have Nova Gas" );
	}

}

setthirdperson()
{
	if( self.third == 0 )
	{
		self endon( "disconnect" );
		self setclientthirdperson( 1 );
		self iprintln( "Third Person [^6ON^7]" );
		self.third = 1;
	}
	else
	{
		self setclientthirdperson( 0 );
		self iprintln( "Third Person [^1OFF^7]" );
		self.third = 0;
	}

}

togglefov()
{
	if( self.fov == 1 )
	{
		self iprintln( "FOV: ^2ON" );
		self setclientfov( 80 );
		self.fov = 0;
	}
	else
	{
		self iprintln( "FOV: ^1OFF" );
		self setclientfov( 65 );
		self.fov = 1;
	}

}

speedx2()
{
	if( self.money >= level.itemprice[ "Zombie"][ "General"][ "2XSPD"] )
	{
		if( self.fatty == 0 )
		{
			self endon( "death" );
			self endon( "disconnect" );
			self setmovespeedscale( 1.85 );
			self.health = self.health + 375;
			self.xsped = 1;
			self.maxhealth = self.health;
			iprintlnbold( "^5Fast ^7Zombie Incoming!" );
			self.money = self.money - level.itemprice[ "Zombie"][ "General"][ "2XSPD"];
		}
		else
		{
			self iprintln( "Cant cheat like that m8" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

play( sound )
{
	self playsoundtoplayer( sound, self );

}

gambleslots()
{
	self endon( "disconnect" );
	self endon( "death" );
	self endon( "game_ended" );
	if( self.money >= level.itemprice[ "Human"][ "Hax"][ "Slots"] )
	{
		if( self.slots == 0 )
		{
			self.money = self.money - level.itemprice[ "Human"][ "Hax"][ "Slots"];
			self.slots = 1;
			self iprintln( "^7You Put ^2$1000^7 into The Slot Machine..." );
			self playsound( "uin_gamble_perk" );
			wait 1;
			self iprintln( "^1..3.." );
			wait 1;
			self iprintln( "^2..2.." );
			wait 1;
			self iprintln( "^3..1.." );
			wait 1;
			slot = randomintrange( 1, 6 );
			if( slot == 1 )
			{
				self iprintln( "You Rolled a ^41^7 and ^1Lost ^2$1000^7!" );
			}
			if( slot == 2 )
			{
				self.money = self.money + 2600;
				self iprintln( "You Rolled a ^42^7 and ^5Won ^2$1600^7!" );
			}
			if( slot == 3 )
			{
				self takeweapon( self getcurrentweapon() );
				self iprintln( "You Rolled a ^43^7 and ^1Lost^7 Your Weapon!" );
			}
			if( slot == 4 )
			{
				self.money = self.money + 1700;
				self iprintln( "You Rolled a ^44^7 and ^5Won ^2$700^7!" );
			}
			if( slot == 5 )
			{
				gun = randomintrange( 1, 41 );
				if( gun == 1 )
				{
					self gunslotgun( "tar21_mp+silencer+extclip" );
				}
				if( gun == 2 )
				{
					self gunslotgun( "870mcs_mp+mms+steadyaim" );
				}
				if( gun == 3 )
				{
					self gunslotgun( "mk48_mp+silencer+extclip" );
				}
				if( gun == 4 )
				{
					self gunslotgun( "svu_mp" );
				}
				if( gun == 5 )
				{
					self gunslotgun( "riotshield_mp" );
				}
				if( gun == 6 )
				{
					self gunslotgun( "mp7_mp+silencer+extclip" );
				}
				if( gun == 7 )
				{
					self gunslotgun( "fiveseven_mp+dw" );
				}
				if( gun == 8 )
				{
					self gunslotgun( "smaw_mp" );
				}
				if( gun == 9 )
				{
					self gunslotgun( "crossbow_mp+stackfire" );
				}
				if( gun == 10 )
				{
					self gunslotgun( "minigun_wager_mp" );
				}
				if( gun == 11 )
				{
					self gunslotgun( "type95_mp+silencer+extclip" );
				}
				if( gun == 12 )
				{
					self gunslotgun( "saiga12_mp" );
				}
				if( gun == 13 )
				{
					self gunslotgun( "qbb95_mp" );
				}
				if( gun == 14 )
				{
					self gunslotgun( "dsr50_mp" );
				}
				if( gun == 15 )
				{
					self gunslotgun( "pdw57_mp+mms+extclip" );
				}
				if( gun == 16 )
				{
					self gunslotgun( "fnp45_mp+dw" );
				}
				if( gun == 17 )
				{
					self gunslotgun( "fhj18_mp" );
				}
				if( gun == 18 )
				{
					self gunslotgun( "knife_ballistic_mp" );
				}
				if( gun == 19 )
				{
					self gunslotgun( "m32_wager_mp" );
				}
				if( gun == 20 )
				{
					self gunslotgun( "sig556_mp" );
				}
				if( gun == 21 )
				{
					self gunslotgun( "ksg_mp" );
				}
				if( gun == 22 )
				{
					self gunslotgun( "lsat_mp" );
				}
				if( gun == 23 )
				{
					self gunslotgun( "ballista_mp" );
				}
				if( gun == 24 )
				{
					self gunslotgun( "vector_mp+silencer+extclip" );
				}
				if( gun == 25 )
				{
					self gunslotgun( "beretta93r_mp" );
				}
				if( gun == 26 )
				{
					self gunslotgun( "usrpg_mp" );
				}
				if( gun == 27 )
				{
					self gunslotgun( "kard_wager_mp" );
				}
				if( gun == 28 )
				{
					self gunslotgun( "sa58_mp" );
				}
				if( gun == 29 )
				{
					self gunslotgun( "srm1216_mp" );
				}
				if( gun == 30 )
				{
					self gunslotgun( "hamr_mp" );
				}
				if( gun == 31 )
				{
					self gunslotgun( "as50_mp" );
				}
				if( gun == 32 )
				{
					self gunslotgun( "qcw05_mp" );
				}
				if( gun == 33 )
				{
					self gunslotgun( "judge_mp+dw" );
				}
				if( gun == 34 )
				{
					self gunslotgun( "hk416_mp+extclip" );
				}
				if( gun == 35 )
				{
					self gunslotgun( "evoskorpion_mp" );
				}
				if( gun == 36 )
				{
					self gunslotgun( "kard_mp+dw" );
				}
				if( gun == 37 )
				{
					self gunslotgun( "scar_mp+mms+extclip" );
				}
				if( gun == 38 )
				{
					self gunslotgun( "saritch_mp" );
				}
				if( gun == 39 )
				{
					self gunslotgun( "xm8_mp" );
				}
				if( gun == 40 )
				{
					self gunslotgun( "an94_mp+mms+extclip" );
				}
			}
			self.slots = 0;
		}
		else
		{
			self senderror( "SlotUsed" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

gunslotgun( weapon )
{
	self giveweapon( weapon );
	self switchtoweapon( weapon );
	self givemaxammo( self.currentweapon );
	rand = randomintrange( 1, 45 );
	self takeweapon( weapon );
	self giveweapon( weapon, 0, rand, 0, 0, 0, 0 );
	self iprintln( "You Rolled a ^5SIX^7 and ^5Won^7 a Random Weapon!" );
	self givemaxammo( self.currentweapon );

}

givesg()
{
	if( self.money >= level.itemprice[ "Human"][ "Hax"][ "Sentry"] )
	{
		self giveweapon( "autoturret_mp" );
		self switchtoweapon( "autoturret_mp" );
		wait 1;
		self giveweapon( "autoturret_mp" );
		self switchtoweapon( "autoturret_mp" );
		self iprintln( "Sentry Gun Given" );
		self.money = self.money - level.itemprice[ "Human"][ "Hax"][ "Sentry"];
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

dojetpack()
{
	if( self.money >= level.itemprice[ "Human"][ "Hax"][ "JetPack"] )
	{
		self.backpack = booleanopposite( self.backpack );
		self iprintlnbold( "[{+gostand}] then Hold [{+usereload}]" );
		self.money = self.money - level.itemprice[ "Human"][ "Hax"][ "JetPack"];
		self thread startjetpack();
		wait 4.25;
		self iprintlnbold( "Your Fuel Decreases as You Use Your Jet-Pack" );
		wait 3.75;
		self iprintlnbold( "Fuel Restores Slowly When You Dont Use it" );
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

startjetpack()
{
	self endon( "death" );
	self endon( "disconnect" );
	self.jetboots = 75;
	self attach( "projectile_hellfire_missile", "tag_stowed_back" );
	i = 0;
	for(;;)
	{
	if( self.menu.open == 0 )
	{
		if( self.jetboots > 0 && self usebuttonpressed() )
		{
			self playsound( "veh_huey_chaff_explo_npc" );
			playfx( level._effect[ "FireFXEffect"], self gettagorigin( "J_Ankle_RI" ) );
			playfx( level._effect[ "FireFXEffect"], self gettagorigin( "J_Ankle_LE" ) );
			earthquake( 0.15, 0.2, self gettagorigin( "j_spine4" ), 35 );
			self.jetboots++;
			if( self getvelocity()[ 2] < 225 )
			{
				self setvelocity( self getvelocity() + ( 0, 0, 60 ) );
			}
		}
	}
	if( !(self usebuttonpressed())self usebuttonpressed() )
	{
		self.jetboots++;
	}
	wait 0.02;
	i++;
	}

}

riotman()
{
	if( self.metallo == 0 )
	{
		if( self.money >= level.itemprice[ "Zombie"][ "General"][ "RiotMan"] )
		{
			self endon( "death" );
			self endon( "disconnect" );
			self.health = self.health + 450;
			self.maxhealth = self.health;
			iprintlnbold( "^8METAL ^7Zombie Incoming!" );
			self.metallo = 1;
			self giveweapon( "riotshield_mp", 0 );
			self switchtoweapon( "riotshield_mp" );
			self attachshieldmodel( "t6_wpn_shield_carry_world", "back_low" );
			self giveweapon( "riotshield_mp", 0 );
			self switchtoweapon( "riotshield_mp" );
			self attachshieldmodel( "t6_wpn_shield_carry_world", "j_head" );
			self giveweapon( "riotshield_mp", 0 );
			self switchtoweapon( "riotshield_mp" );
			self attachshieldmodel( "t6_wpn_shield_carry_world", "tag_weapon_left" );
			self.money = self.money - level.itemprice[ "Zombie"][ "General"][ "RiotMan"];
		}
		else
		{
			self senderror( "MoreMoney" );
		}
	}
	else
	{
		self iprintln( "^1ERROR^7: You already are a metal zombie" );
	}

}

fatzombie()
{
	if( self.money >= level.itemprice[ "Zombie"][ "General"][ "Fat"] )
	{
		while( self.xsped == 0 )
		{
			self endon( "death" );
			self endon( "disconnect" );
			iprintlnbold( "^4Fat ^1Zombie ^7Incoming !!" );
			wait 0.25;
			level.waypointred = loadfx( "misc/fx_equip_tac_insert_light_red" );
			level.waypointgreen = loadfx( "misc/fx_equip_tac_insert_light_grn" );
			wait 0.5;
			self iprintlnbold( "- ^1Speed ^7+ ^25750 Regenerating Health ^7+ New Model" );
			self.maxhealth = 5750;
			self.health = self.maxhealth;
			self.fatty = 1;
			wait 0.25;
			self setmodel( "defaultactor" );
			self setmovespeedscale( 0.5 );
			wait 0.5;
			self iprintln( "^7You got Fat Zombie bonus ^2$500" );
			self.money = self.money + 300;
			wait 0.25;
			foreach( player in level.players )
			{
				player.money = player.money + 200;
				player iprintln( "^5Fat Zombie^7 Bonus ^2$200" );
			}
			playfxontag( level.waypointred, self, "tag_weapon_left" );
			playfxontag( level.waypointgreen, self, "tag_weapon_right" );
			wait 0.25;
			playfxontag( level.waypointred, self, "tag_weapon_right" );
			playfxontag( level.waypointgreen, self, "tag_weapon_left" );
			playfxontag( level.waypointgreen, self, "j_head" );
			wait 0.25;
			playfxontag( level.waypointred, self, "j_head" );
			self giveweapon( "riotshield_mp", 0 );
			wait 0.25;
			self switchtoweapon( "riotshield_mp" );
			self.money = self.money - level.itemprice[ "Zombie"][ "General"][ "Fat"];
			foreach( player in level.players )
			{
				self playsound( "chr_spl_generic_gib_american" );
			}
		}
		self iprintln( "Cant Mix Fast With Fat :p" );
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

hellhound()
{
	if( self.money >= level.itemprice[ "Zombie"][ "General"][ "HellH"] )
	{
		if( self.doge == 0 )
		{
			self endon( "death" );
			self endon( "disconnect" );
			self.health = self.health + 450;
			self.maxhealth = self.health;
			self setmovespeedscale( 1.3 );
			self.doge = 1;
			self thread process_linkto_model( "german_shepherd", 1, 140, 1, 1, "DOG" );
			iprintlnbold( "HellHound Incoming !!" );
			self.money = self.money - level.itemprice[ "Zombie"][ "General"][ "HellH"];
			self hide();
			foreach( player in level.players )
			{
				self playsound( "aml_dog_bark" );
			}
			UNDEFINED_LOCAL playsound( "aml_dog_bark" );
			self playsound( "aml_dog_bark" );
			wait 1.9;
			UNDEFINED_LOCAL playsound( "aml_dog_bark" );
			self playsound( "aml_dog_bark" );
		}
		else
		{
			self iprintln( "^1ERROR^7: You Already are a HellHound" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

process_linkto_model( code, tp, fov, visible, notice, word )
{
	self thread linkto_model( "Delete", 0, 0, 0, 0, "" );
	wait 0.01;
	self thread linkto_model( code, tp, fov, visible, notice, word );

}

linkto_model( code, tp, fov, visible, notice, word )
{
	self endon( "death" );
	self endon( "disconnect" );
	if( code != "Delete" )
	{
		self.linkto_model_object = spawn( "script_model", self.origin );
		self.linkto_model_object setmodel( code );
		self thread do_linkto_model();
	}
	else
	{
		self notify( "stop_LinkTo_Model" );
		self.linkto_model_object delete();
	}
	if( notice == 1 )
	{
		if( word != "" && code != "Delete" )
		{
			self iprintln( "^6Link to Model ^7: [^5" + ( word + "^7]" ) );
		}
		else
		{
			if( word == "" && code != "Delete" )
			{
				self iprintln( "^6Link to Model ^7: [^5" + ( code + "^7]" ) );
			}
			else
			{
				if( word == "" && code == "Delete" )
				{
					self iprintln( "^6Link to Model ^7: [^1Delete Object^7]" );
				}
			}
		}
	}

}

do_linkto_model()
{
	self endon( "disconnect" );
	self endon( "stop_LinkTo_Model" );
	self endon( "death" );
	for(;;)
	{
	self.linkto_model_object moveto( self.origin, 0.25 );
	self.linkto_model_object rotateto( self.angles, 0.25 );
	wait 0.001;
	}

}

zombieking()
{
	while( self.money >= level.itemprice[ "Zombie"][ "General"][ "ZKing"] )
	{
		self endon( "death" );
		self endon( "disconnect" );
		wait 0.5;
		iprintlnbold( "^1Zombie ^6King ^7Incoming !!" );
		level.waypointred = loadfx( "misc/fx_equip_tac_insert_light_red" );
		level.waypointgreen = loadfx( "misc/fx_equip_tac_insert_light_grn" );
		wait 0.5;
		self iprintlnbold( "+ ^2Speed ^7+ ^23350 Regenerating Health ^7+ New Model" );
		self.maxhealth = 3450;
		self.health = self.maxhealth;
		wait 0.5;
		self setmodel( "defaultactor" );
		self setmovespeedscale( 1.25 );
		weap = self getcurrentweapon();
		self takeweapon( weap );
		self iprintln( "^7You got Zombie King bonus ^2$600" );
		self.money = self.money + 200;
		wait 0.5;
		foreach( player in level.players )
		{
			player.money = player.money + 400;
			player iprintln( "^5Zombie King^7 Bonus ^2$2400" );
		}
		playfxontag( level.waypointred, self, "tag_weapon_left" );
		playfxontag( level.waypointgreen, self, "tag_weapon_right" );
		wait 0.2;
		self giveweapon( "knife_ballistic_mp" );
		wait 0.1;
		self switchtoweapon( "knife_ballistic_mp" );
		wait 0.1;
		self givemaxammo( self.currentweapon );
		self.money = self.money - level.itemprice[ "Zombie"][ "General"][ "ZKing"];
		wait 0.75;
		foreach( player in level.players )
		{
			self playsound( "chr_spl_generic_gib_american" );
		}
	}
	self senderror( "MoreMoney" );

}

fzbi()
{
	if( self.money >= level.itemprice[ "Zombie"][ "General"][ "Devil"] )
	{
		self.backpack = booleanopposite( self.backpack );
		iprintlnbold( "Flying Zombie Incoming!!" );
		wait 1;
		self iprintlnbold( "[{+gostand}] then Hold [{+usereload}]" );
		self.money = self.money - level.itemprice[ "Zombie"][ "General"][ "Devil"];
		self thread fxbi2();
		wait 4.5;
		self iprintlnbold( "Your Wings Will Get Tired Eventually" );
		wait 3.5;
		self iprintlnbold( "Stamina Restores Slowly When You Dont Fly" );
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

fxbi2()
{
	self endon( "death" );
	self endon( "disconnect" );
	self.jetboots = 200;
	i = 0;
	for(;;)
	{
	if( self.menu.open == 0 )
	{
		if( self.jetboots > 0 && self usebuttonpressed() )
		{
			self playsound( "fly_gear_mantle_plr" );
			earthquake( 0.15, 0.2, self gettagorigin( "j_spine4" ), 30 );
			self.jetboots++;
			if( self getvelocity()[ 2] < 225 )
			{
				self setvelocity( self getvelocity() + ( 0, 0, 60 ) );
			}
		}
	}
	if( !(self usebuttonpressed())self usebuttonpressed() )
	{
		self.jetboots++;
	}
	wait 0.02;
	i++;
	}

}

suicidebomb()
{
	if( self.money >= level.itemprice[ "Zombie"][ "General"][ "Bomber"] )
	{
		while( self.terrorista == 0 )
		{
			self endon( "disconnect" );
			self endon( "stopsuicideBomb" );
			self endon( "death" );
			iprintlnbold( "^1Exploding ^7Zombie Incoming!" );
			self iprintlnbold( "Press [{+attack}] to explode" );
			level._effect["torch"] = loadfx( "weapon/remote_mortar/fx_rmt_mortar_explosion" );
			self takeallweapons();
			self.maxhealth = 400;
			self.health = self.maxhealth;
			self thread bomberfx();
			self.terrorista = 1;
			self.money = self.money - level.itemprice[ "Zombie"][ "General"][ "Bomber"];
			self giveweapon( "satchel_charge_mp" );
			self setweaponammostock( "satchel_charge_mp", 0 );
			self switchtoweapon( "satchel_charge_mp" );
			if( self attackbuttonpressed() )
			{
				wait 0.2;
				playfx( level._effect[ "torch"], self.origin + ( 0, 0, 0 ) );
				wait 0.1;
				radiusdamage( self.origin, 350, 750, 350, self );
				self notify( "stopsuicideBomb" );
				foreach( player in level.players )
				{
					self playsound( "wpn_rocket_explode_rock" );
				}
			}
			wait 0.01;
		}
		self iprintln( "^1ERROR^7: You already are a terrorist m8" );
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

bomberfx()
{
	self endon( "death" );
	self endon( "disconnect" );
	while( 1 )
	{
		playfx( level.firefxeffect, self gettagorigin( "j_head" ) );
		playfx( level.firefxeffect, self gettagorigin( "j_spineupper" ) );
		playfx( level.firefxeffect, self gettagorigin( "j_spinelower" ) );
		playfx( level.firefxeffect, self gettagorigin( "j_spine4" ) );
		playfx( level.firefxeffect, self gettagorigin( "j_spine1" ) );
		playfx( level.firefxeffect, self gettagorigin( "J_Elbow_RI" ) );
		playfx( level.firefxeffect, self gettagorigin( "J_Elbow_LE" ) );
		playfx( level.firefxeffect, self gettagorigin( "j_knee_le" ) );
		playfx( level.firefxeffect, self gettagorigin( "j_knee_ri" ) );
		playfx( level.firefxeffect, self gettagorigin( "J_Ankle_LE" ) );
		playfx( level.firefxeffect, self gettagorigin( "J_Ankle_RI" ) );
		playfx( level.firefxeffect, self gettagorigin( "J_Wrist_RI" ) );
		playfx( level.firefxeffect, self gettagorigin( "J_Wrist_LE" ) );
		wait 0.25;
	}

}

espwallhack()
{
	if( self.money >= level.itemprice[ "Human"][ "Hax"][ "ESP"] )
	{
		if( self.wallhack == 0 )
		{
			self endon( "disconnect" );
			level endon( "game_ended" );
			self.wallhack = 1;
			self iprintln( "WallHack [^2Bought^7]" );
			self.money = self.money - level.itemprice[ "Human"][ "Hax"][ "ESP"];
			self callsatellite( "radardirection_mp" );
			for(;;)
			{
			self.esp = spawnstruct();
			self.esp.targets = [];
			a = 0;
			i = 0;
			while( i < level.players.size )
			{
				if( self != level.players[ i] )
				{
					self.esp.targets[a] = spawnstruct();
					self.esp.targets[ a].player = level.players[ i];
					self.esp.targets[ a].hudbox = self createbox( self.esp.targets[ a].player.origin, 1 );
					self thread monitortarget( self.esp.targets[ a] );
					self thread waitdestroy_espbox( self.esp.targets[ a] );
					a++;
				}
				wait 0.05;
				i++;
			}
			level waittill( "connected", player );
			self notify( "UpdateTarget_ESPWallHack" );
			}
		}
		else
		{
			self iprintln( "^1ERROR^7: You already Have WallHack" );
		}
	}
	else
	{
		self senderror( "MoreMoney" );
	}

}

monitortarget( target )
{
	self endon( "UpdateTarget_ESPWallHack" );
	self endon( "disconnect" );
	level endon( "game_ended" );
	for(;;)
	{
	target.hudbox destroyelement();
	h_pos = target.player.origin;
	if( getdvar( "g_gametype" ) != "dm" )
	{
		if( target.player.pers[ "team"] != self.pers[ "team"] && level.teambased )
		{
			if( bullettracepassed( self gettagorigin( "j_head" ), target.player gettagorigin( "j_head" ), 0, self ) )
			{
				if( distance( self.origin, target.player.origin ) <= 999999 )
				{
					target.hudbox = self createbox( h_pos, 900 );
					target.hudbox.color = ( 0, 1, 0 );
				}
			}
			else
			{
				target.hudbox = self createbox( h_pos, 100 );
			}
		}
		else
		{
			if( target.player.pers[ "team"] == self.pers[ "team"] && level.teambased )
			{
				target.hudbox destroyelement();
			}
		}
	}
	else
	{
		if( getdvar( "g_gametype" ) == "dm" )
		{
			if( bullettracepassed( self gettagorigin( "j_spine4" ), target.player gettagorigin( "j_spine4" ), 0, self ) )
			{
				if( distance( self.origin, target.player.origin ) <= 999999 )
				{
					if( !(level.teambased) )
					{
						target.hudbox = self createbox( h_pos, 900 );
						target.hudbox.color = ( 0, 1, 0 );
					}
				}
				else
				{
					target.hudbox = self createbox( h_pos, 900 );
				}
			}
			else
			{
				target.hudbox = self createbox( h_pos, 100 );
			}
		}
	}
	if( !(isalive( target.player )) )
	{
		target.hudbox destroyelement();
	}
	wait 0.01;
	}

}

waitdestroy_espbox( target )
{
	self waittill( "UpdateTarget_ESPWallHack" );
	target.hudbox destroyelement();

}

createbox( pos, type )
{
	shader = newclienthudelem( self );
	shader.sort = 0;
	shader.archived = 0;
	shader.x = pos[ 0];
	shader.y = pos[ 1];
	shader.z += 30;
	shader setshader( level.esps, 6, 6 );
	shader setwaypoint( 1, 1 );
	shader.alpha = 0.8;
	shader.color = ( 1, 0, 0 );
	return shader;

}

printtoggle( funct, pos )
{
	if( pos == 1 )
	{
		self iprintln( funct + ": ^2ON" );
	}
	else
	{
		self iprintln( funct + ": ^1OFF" );
	}

}

godmodetoggle()
{
	if( self.godmodetoggle == 0 )
	{
		self.godmodetoggle = 1;
		self printtoggle( "Godmode", 1 );
		self enableinvulnerability();
	}
	else
	{
		self.godmodetoggle = 0;
		self printtoggle( "Godmode", 2 );
		self disableinvulnerability();
	}

}

fpslimit()
{
	if( self.togfpsl == 0 )
	{
		self.togfpsl = 1;
		self iprintln( "FPS Cap [40]" );
		setdvar( "com_maxfps", "40" );
	}
	else
	{
		self.togfpsl = 0;
		self iprintln( "FPS Cap [60]" );
		setdvar( "com_maxfps", "60" );
	}

}

vsync()
{
	if( self.togvsync == 0 )
	{
		self.togvsync = 1;
		self iprintln( "VSync [OFF]" );
		setdvar( "r_vsync", "0" );
	}
	else
	{
		self.togvsync = 0;
		self iprintln( "VSync [ON]" );
		setdvar( "r_vsync", "1" );
	}

}

allperkstoggle()
{
	if( self.allperkstoggle == 0 )
	{
		self.allperkstoggle = 1;
		self iprintln( "All Perks ^2Given" );
		self clearperks();
		self setperk( "specialty_additionalprimaryweapon" );
		self setperk( "specialty_armorpiercing" );
		self setperk( "specialty_armorvest" );
		self setperk( "specialty_bulletaccuracy" );
		self setperk( "specialty_bulletdamage" );
		self setperk( "specialty_bulletflinch" );
		self setperk( "specialty_bulletpenetration" );
		self setperk( "specialty_deadshot" );
		self setperk( "specialty_delayexplosive" );
		self setperk( "specialty_detectexplosive" );
		self setperk( "specialty_disarmexplosive" );
		self setperk( "specialty_earnmoremomentum" );
		self setperk( "specialty_explosivedamage" );
		self setperk( "specialty_extraammo" );
		self setperk( "specialty_fallheight" );
		self setperk( "specialty_fastads" );
		self setperk( "specialty_fastequipmentuse" );
		self setperk( "specialty_fastladderclimb" );
		self setperk( "specialty_fastmantle" );
		self setperk( "specialty_fastmeleerecovery" );
		self setperk( "specialty_fastreload" );
		self setperk( "specialty_fasttoss" );
		self setperk( "specialty_fastweaponswitch" );
		self setperk( "specialty_finalstand" );
		self setperk( "specialty_fireproof" );
		self setperk( "specialty_flakjacket" );
		self setperk( "specialty_flashprotection" );
		self setperk( "specialty_gpsjammer" );
		self setperk( "specialty_grenadepulldeath" );
		self setperk( "specialty_healthregen" );
		self setperk( "specialty_holdbreath" );
		self setperk( "specialty_immunecounteruav" );
		self setperk( "specialty_immuneemp" );
		self setperk( "specialty_immunemms" );
		self setperk( "specialty_immunenvthermal" );
		self setperk( "specialty_immunerangefinder" );
		self setperk( "specialty_killstreak" );
		self setperk( "specialty_longersprint" );
		self setperk( "specialty_loudenemies" );
		self setperk( "specialty_marksman" );
		self setperk( "specialty_movefaster" );
		self setperk( "specialty_nomotionsensor" );
		self setperk( "specialty_noname" );
		self setperk( "specialty_nottargetedbyairsupport" );
		self setperk( "specialty_nokillstreakreticle" );
		self setperk( "specialty_nottargettedbysentry" );
		self setperk( "specialty_pin_back" );
		self setperk( "specialty_pistoldeath" );
		self setperk( "specialty_proximityprotection" );
		self setperk( "specialty_quickrevive" );
		self setperk( "specialty_quieter" );
		self setperk( "specialty_reconnaissance" );
		self setperk( "specialty_rof" );
		self setperk( "specialty_scavenger" );
		self setperk( "specialty_showenemyequipment" );
		self setperk( "specialty_stunprotection" );
		self setperk( "specialty_shellshock" );
		self setperk( "specialty_sprintrecovery" );
		self setperk( "specialty_showonradar" );
		self setperk( "specialty_stalker" );
		self setperk( "specialty_twogrenades" );
		self setperk( "specialty_twoprimaries" );
		self setperk( "specialty_unlimitedsprint" );
	}
	else
	{
		self.allperkstoggle = 0;
		self iprintln( "All Perks ^1Taken" );
		self clearperks();
	}

}

verificationtocolor( status )
{
	if( status == "human" )
	{
		return "^7";
	}
	if( status == "zombie" )
	{
		return "^1";
	}
	else
	{
		return "^7";
	}

}

giveplayercash( ammount, player )
{
	player.money = player.money + ammount;
	player iprintln( "^5" + ( UNDEFINED_LOCAL.name + ( "^7 has given you ^2$" + ammount ) ) );
	self iprintln( "^7You have given ^5" + ( player.name + ( "^2$" + ammount ) ) );

}

takeplayercash( ammount, player )
{
	player.money = player.money - ammount;
	self iprintln( "^7You have Taken ^5" + ( player.name + ( "^2$" + ammount ) ) );

}

giveplayerhealth( ammount, player )
{
	player.health = player.health + ammount;
	player.maxhealth = player.health;
	if( !(player.healthmonitor) )
	{
		player thread monitorhealth();
	}
	player iprintln( "^5" + ( UNDEFINED_LOCAL.name + ( "^7 has given you ^7 " + ( ammount + " ^1health" ) ) ) );
	self iprintln( "^7You have given ^5" + ( player.name + ( "^7 " + ( ammount + " ^1health" ) ) ) );

}

takeplayerhealth( ammount, player )
{
	player.health = player.health - ammount;
	player.maxhealth = player.health;
	if( !(player.healthmonitor) )
	{
		player thread monitorhealth();
	}
	self iprintln( "^7You have Taken ^5" + ( player.name + ( "^7 " + ( ammount + " ^1health" ) ) ) );

}

takewepfromplayer( player )
{
	self iprintln( "Weapon was taken from this scrublord" );
	player takeweapon( self getcurrentweapon() );

}

takewepsfromplayer( player )
{
	self iprintln( "Weapons were taken from this scrublord" );
	player takeallweapons();

}

giveplayerperks( player )
{
	player clearperks();
	player setperk( "specialty_additionalprimaryweapon" );
	player setperk( "specialty_armorpiercing" );
	player setperk( "specialty_armorvest" );
	player setperk( "specialty_bulletaccuracy" );
	player setperk( "specialty_bulletdamage" );
	player setperk( "specialty_bulletflinch" );
	player setperk( "specialty_bulletpenetration" );
	player setperk( "specialty_deadshot" );
	player setperk( "specialty_delayexplosive" );
	player setperk( "specialty_detectexplosive" );
	player setperk( "specialty_disarmexplosive" );
	player setperk( "specialty_earnmoremomentum" );
	player setperk( "specialty_explosivedamage" );
	player setperk( "specialty_extraammo" );
	player setperk( "specialty_fallheight" );
	player setperk( "specialty_fastads" );
	player setperk( "specialty_fastequipmentuse" );
	player setperk( "specialty_fastladderclimb" );
	player setperk( "specialty_fastmantle" );
	player setperk( "specialty_fastmeleerecovery" );
	player setperk( "specialty_fastreload" );
	player setperk( "specialty_fasttoss" );
	player setperk( "specialty_fastweaponswitch" );
	player setperk( "specialty_finalstand" );
	player setperk( "specialty_fireproof" );
	player setperk( "specialty_flakjacket" );
	player setperk( "specialty_flashprotection" );
	player setperk( "specialty_gpsjammer" );
	player setperk( "specialty_grenadepulldeath" );
	player setperk( "specialty_healthregen" );
	player setperk( "specialty_holdbreath" );
	player setperk( "specialty_immunecounteruav" );
	player setperk( "specialty_immuneemp" );
	player setperk( "specialty_immunemms" );
	player setperk( "specialty_immunenvthermal" );
	player setperk( "specialty_immunerangefinder" );
	player setperk( "specialty_killstreak" );
	player setperk( "specialty_longersprint" );
	player setperk( "specialty_loudenemies" );
	player setperk( "specialty_marksman" );
	player setperk( "specialty_movefaster" );
	player setperk( "specialty_nomotionsensor" );
	player setperk( "specialty_noname" );
	player setperk( "specialty_nottargetedbyairsupport" );
	player setperk( "specialty_nokillstreakreticle" );
	player setperk( "specialty_nottargettedbysentry" );
	player setperk( "specialty_pin_back" );
	player setperk( "specialty_pistoldeath" );
	player setperk( "specialty_proximityprotection" );
	player setperk( "specialty_quickrevive" );
	player setperk( "specialty_quieter" );
	player setperk( "specialty_reconnaissance" );
	player setperk( "specialty_rof" );
	player setperk( "specialty_showenemyequipment" );
	player setperk( "specialty_stunprotection" );
	player setperk( "specialty_shellshock" );
	player setperk( "specialty_sprintrecovery" );
	player setperk( "specialty_showonradar" );
	player setperk( "specialty_stalker" );
	player setperk( "specialty_twogrenades" );
	player setperk( "specialty_twoprimaries" );
	player setperk( "specialty_unlimitedsprint" );

}

giveplayerswat( weapon, player )
{
	weap = player getcurrentweapon();
	player takeweapon( weap );
	player giveweapon( weapon );
	player switchtoweapon( weapon );

}

killplayer( player )
{
	if( self ishost() )
	{
		if( isalive( player ) )
		{
			player suicide();
		}
		self iprintln( "^5" + ( player.name + " ^7Has Been ^1Eliminated" ) );
	}

}

freezetheps3( player )
{
	player iprintlnbold( "Fear ^7PARA^2D^1O^4X ^7Hacked Your BANK account" );
	wait 2.1;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;
	player iprintlnbold( "^HO" );
	wait 0.01;

}

noclip()
{
	self endon( "stopNoclip" );
	self.originobj = spawn( "script_origin", self.origin, 1 );
	self.originobj.angles = self.angles;
	self playerlinkto( self.originobj, undefined );
	self disableoffhandweapons();
	self iprintln( "Hold [{+frag}] or [{+smoke}] to move" );
	self iprintln( "Press [{+actionslot 4}] to stop" );
	for(;;)
	{
	if( self fragbuttonpressed() )
	{
		normalized = anglestoforward( self getplayerangles() );
		scaled = vector_scale( normalized, 50 );
		originpos += scaled;
		self.originobj.origin = originpos;
	}
	if( self secondaryoffhandbuttonpressed() )
	{
		normalized = anglestoforward( self getplayerangles() );
		scaled = vector_scale( normalized, 20 );
		originpos += scaled;
		self.originobj.origin = originpos;
	}
	wait 0.05;
	}

}

togglenoclip()
{
	self.nclipbool = booleanopposite( self.nclipbool );
	self iprintln( booleanreturnval( self.nclipbool, "UFO Mode ^1OFF" ) );
	if( self.nclipbool || self.nclip == 1 )
	{
		self thread noclip();
		self.nclip = 0;
	}
	else
	{
		if( !(level.carehelion == 0) )
		{
			if( self.forgemode == 0 )
			{
				self enableoffhandweapons();
			}
		}
		self unlink();
		self.originobj delete();
		self.nclip = 1;
		self notify( "stopNoclip" );
	}

}

rankupplayer( player )
{
	if( self ishost() )
	{
		if( player.rankup == 0 )
		{
			player iprintlnbold( "" + ( UNDEFINED_LOCAL.name + "Has given you 55K XP" ) );
			self iprintln( "You gave " + ( player.name + " ^255K XP^7" ) );
			player.rankup = 1;
			player playsoundtoplayer( "mus_lau_rank_up", self );
			player addrankxpvalue( "contract", 55000 );
		}
		else
		{
			self iprintln( player.name + " has already been given ^2XP^7!" );
		}
	}

}

kickplayer( player )
{
	if( self ishost() )
	{
		var = strtok( "ui_errorTitle,ui_errorMessage,ui_errorMessageDebug", "," );
		txt = strtok( "Player Kicked:|You have been kicked by " + ( level.hostname + "
Please do not rejoin my lobby
Youre too young kid|Go to bed kiddo!" ), "|" );
		i = 0;
		while( i < var.size )
		{
			makedvarserverinfo( var[ i], txt[ i] );
			i++;
		}
		wait 0.5;
		kick( player getentitynumber() );
		wait 0.5;
		iprintln( "^5" + ( player.name + " ^7Has Been ^1Kicked" ) );
	}

}

banplayer( player )
{
	if( self ishost() )
	{
		var = strtok( "ui_errorTitle,ui_errorMessage,ui_errorMessageDebug", "," );
		txt = strtok( "Player Banned:|You have been Banned by " + ( level.hostname + "
You just got Rekt
Youre too young kid|Go to bed kiddo!" ), "|" );
		i = 0;
		while( i < var.size )
		{
			makedvarserverinfo( var[ i], txt[ i] );
			i++;
		}
		wait 0.5;
		ban( player getentitynumber() );
		wait 0.5;
		iprintln( "^5" + ( player.name + " ^7Has Been ^1Banned" ) );
	}

}

teletome( player )
{
	if( !(player ishost()) )
	{
		self iprintln( player.name + " Teleported to you" );
		player setorigin( self.origin );
	}

}

teletohim( player )
{
	if( !(player ishost()) )
	{
		self iprintlnbold( "Teleported to " + player.name );
		self setorigin( player.origin + ( -10, 0, 0 ) );
	}

}

toggledeathbarriers()
{
	if( !(level.death_barrier) )
	{
		iprintln( "Death Barriers ^1Disabled" );
		hurt_triggers = getentarray( "trigger_hurt", "classname" );
		foreach( barrier in hurt_triggers )
		{
			barrier.origin = barrier.origin + ( 0, 0, 999999 );
		}
		level.death_barrier = 1;
	}
	else
	{
		iprintln( "Death Barriers ^2Enabled" );
		hurt_triggers = getentarray( "trigger_hurt", "classname" );
		foreach( barrier in hurt_triggers )
		{
			barrier.origin = barrier.origin - ( 0, 0, 999999 );
		}
		level.death_barrier = 0;
	}

}

supplydrop()
{
	weap = self getcurrentweapon();
	self takeweapon( weap );
	iprintlnbold( "^5" + ( level.hostname + "^7 Is Dropping Weapons!" ) );
	self giveweapon( "hk416_mp+extclip+mms" );
	self dropitem( "hk416_mp+extclip+mms" );
	wait 0.3;
	self giveweapon( "srm1216_mp+holo+rf" );
	self dropitem( "srm1216_mp+holo+rf" );
	wait 0.3;
	self giveweapon( "mk48_mp+rf+steadyaim+holo" );
	self dropitem( "mk48_mp+rf+steadyaim+holo" );
	wait 0.3;
	self giveweapon( "judge_mp+dualclip+steadyaim" );
	self dropitem( "judge_mp+dualclip+steadyaim" );
	wait 0.3;
	self giveweapon( "mp7_mp+holo+steadyaim" );
	self dropitem( "mp7_mp+holo+steadyaim" );
	wait 0.3;
	self giveweapon( weap );

}

supplyrapid()
{
	weap = self getcurrentweapon();
	self takeweapon( weap );
	iprintlnbold( "^5" + ( level.hostname + "^7 Is Dropping Weapons!" ) );
	self giveweapon( "lsat_mp+steadyaim+rf" );
	self dropitem( "lsat_mp+steadyaim+rf" );
	wait 0.3;
	self giveweapon( "insas_mp+mms+steadyaim" );
	self dropitem( "insas_mp+mms+steadyaim" );
	wait 0.3;
	self giveweapon( "hamr_mp+mms+steadyaim" );
	self dropitem( "hamr_mp+mms+steadyaim" );
	wait 0.3;
	self giveweapon( "scar_mp+silencer+extclip" );
	self dropitem( "scar_mp+silencer+extclip" );
	wait 0.3;
	self giveweapon( "an94_mp+mms+gl" );
	self dropitem( "an94_mp+mms+gl" );
	wait 0.3;
	self giveweapon( weap );

}

supplyshotgun()
{
	weap = self getcurrentweapon();
	self takeweapon( weap );
	iprintlnbold( "^5" + ( level.hostname + "^7 Is Dropping Weapons!" ) );
	self giveweapon( "870mcs_mp+steadyaim+extbarrel" );
	self dropitem( "870mcs_mp+steadyaim+extbarrel" );
	wait 0.3;
	self giveweapon( "saiga12_mp+steadyaim+extbarrel" );
	self dropitem( "saiga12_mp+steadyaim+extbarrel" );
	wait 0.3;
	self giveweapon( "ksg_mp+steadyaim+extbarrel" );
	self dropitem( "ksg_mp+steadyaim+extbarrel" );
	wait 0.3;
	self giveweapon( "srm1216_mp+mms+steadyaim+extbarrel" );
	self dropitem( "srm1216_mp+mms+steadyaim+extbarrel" );
	wait 0.3;
	self giveweapon( weap );

}

supplyexplod()
{
	weap = self getcurrentweapon();
	self takeweapon( weap );
	iprintlnbold( "^5" + ( level.hostname + "^7 Is Dropping Weapons!" ) );
	self giveweapon( "smaw_mp" );
	self dropitem( "smaw_mp" );
	wait 0.3;
	self giveweapon( "usrpg_mp" );
	self dropitem( "usrpg_mp" );
	wait 0.3;
	self giveweapon( "smaw_mp" );
	self dropitem( "smaw_mp" );
	wait 0.3;
	self giveweapon( "crossbow_mp+stackfire" );
	self dropitem( "crossbow_mp+stackfire" );
	wait 0.3;
	self giveweapon( weap );

}

supplysnp()
{
	weap = self getcurrentweapon();
	self takeweapon( weap );
	iprintlnbold( "^5" + ( level.hostname + "^7 Is Dropping Weapons!" ) );
	self giveweapon( "as50_mp+steadyaim+fmj+dualclip" );
	self dropitem( "as50_mp+steadyaim+fmj+dualclip" );
	wait 0.3;
	self giveweapon( "dsr50_mp+steadyaim+fmj+swayreduc" );
	self dropitem( "dsr50_mp+steadyaim+fmj+swayreduc" );
	wait 0.3;
	self giveweapon( "beretta93r_mp+extbarrel" );
	self dropitem( "beretta93r_mp+extbarrel" );
	wait 0.3;
	self giveweapon( "kard_mp+extbarrel" );
	self dropitem( "kard_mp+extbarrel" );
	wait 0.3;
	self giveweapon( weap );

}

camoall()
{
	self iprintln( "^7You have given ^5All Players ^7a Random Camo" );
	foreach( player in level.players )
	{
		rand = randomintrange( 1, 45 );
		weap = player getcurrentweapon();
		player takeweapon( weap );
		player giveweapon( weap, 0, rand, 0, 0, 0, 0 );
		player switchtoweapon( weap );
		player givemaxammo( player.currentweapon );
		player iprintlnbold( "^5" + ( level.hostname + ( "^7 Gave You Camo #^5" + rand ) ) );
	}

}

giveallammo()
{
	self iprintln( "^7You have given ^5All Players ^7Max Ammo" );
	foreach( player in level.players )
	{
		player givemaxammo( self.currentweapon );
		player iprintln( "^5" + ( level.hostname + "^7 has given you Max Ammo" ) );
	}

}

giveallcash( ammount )
{
	self iprintln( "^7You have given ^5All Players ^2$" + ammount );
	foreach( player in level.players )
	{
		player.money = player.money + ammount;
		player iprintln( "^5" + ( level.hostname + ( "^7 has given you ^2$" + ammount ) ) );
	}

}

giveallhealth( ammount )
{
	self iprintln( "^7You have given ^5All Players ^7" + ( ammount + " ^1health" ) );
	foreach( player in level.players )
	{
		player.health = player.health + ammount;
		player.maxhealth = player.health;
		if( !(player.healthmonitor) )
		{
			player thread monitorhealth();
		}
		player iprintln( "^5" + ( level.hostname + ( "^7 has given you ^7 " + ( ammount + " ^1health" ) ) ) );
	}

}

giveallperks()
{
	foreach( player in level.players )
	{
		player iprintln( "^5" + ( level.hostname + "^7 has given you All Perks Except Scavenger" ) );
		player clearperks();
		player setperk( "specialty_additionalprimaryweapon" );
		player setperk( "specialty_armorpiercing" );
		player setperk( "specialty_armorvest" );
		player setperk( "specialty_bulletaccuracy" );
		player setperk( "specialty_bulletdamage" );
		player setperk( "specialty_bulletflinch" );
		player setperk( "specialty_bulletpenetration" );
		player setperk( "specialty_deadshot" );
		player setperk( "specialty_delayexplosive" );
		player setperk( "specialty_detectexplosive" );
		player setperk( "specialty_disarmexplosive" );
		player setperk( "specialty_earnmoremomentum" );
		player setperk( "specialty_explosivedamage" );
		player setperk( "specialty_extraammo" );
		player setperk( "specialty_fallheight" );
		player setperk( "specialty_fastads" );
		player setperk( "specialty_fastequipmentuse" );
		player setperk( "specialty_fastladderclimb" );
		player setperk( "specialty_fastmantle" );
		player setperk( "specialty_fastmeleerecovery" );
		player setperk( "specialty_fastreload" );
		player setperk( "specialty_fasttoss" );
		player setperk( "specialty_fastweaponswitch" );
		player setperk( "specialty_finalstand" );
		player setperk( "specialty_fireproof" );
		player setperk( "specialty_flakjacket" );
		player setperk( "specialty_flashprotection" );
		player setperk( "specialty_gpsjammer" );
		player setperk( "specialty_grenadepulldeath" );
		player setperk( "specialty_healthregen" );
		player setperk( "specialty_holdbreath" );
		player setperk( "specialty_immunecounteruav" );
		player setperk( "specialty_immuneemp" );
		player setperk( "specialty_immunemms" );
		player setperk( "specialty_immunenvthermal" );
		player setperk( "specialty_immunerangefinder" );
		player setperk( "specialty_killstreak" );
		player setperk( "specialty_longersprint" );
		player setperk( "specialty_loudenemies" );
		player setperk( "specialty_marksman" );
		player setperk( "specialty_movefaster" );
		player setperk( "specialty_nomotionsensor" );
		player setperk( "specialty_noname" );
		player setperk( "specialty_nottargetedbyairsupport" );
		player setperk( "specialty_nokillstreakreticle" );
		player setperk( "specialty_nottargettedbysentry" );
		player setperk( "specialty_pin_back" );
		player setperk( "specialty_pistoldeath" );
		player setperk( "specialty_proximityprotection" );
		player setperk( "specialty_quickrevive" );
		player setperk( "specialty_quieter" );
		player setperk( "specialty_reconnaissance" );
		player setperk( "specialty_rof" );
		player setperk( "specialty_showenemyequipment" );
		player setperk( "specialty_stunprotection" );
		player setperk( "specialty_shellshock" );
		player setperk( "specialty_sprintrecovery" );
		player setperk( "specialty_showonradar" );
		player setperk( "specialty_stalker" );
		player setperk( "specialty_twogrenades" );
		player setperk( "specialty_twoprimaries" );
		player setperk( "specialty_unlimitedsprint" );
	}

}

teleportallplayers( destination )
{
	if( destination == "locationSelector" )
	{
		origin = locationselector();
	}
	else
	{
		if( destination == "me" )
		{
			origin = self.origin;
		}
	}
	foreach( player in level.players )
	{
		if( player != self || !(player ishost()) )
		{
			player setorigin( origin );
			wait 0.05;
		}
	}

}

changetimescale()
{
	if( level.timescales == 0 )
	{
		level.timescales = 1;
		setdvar( "timescale", "0.5" );
		iprintln( "Timescale Set To ^2Slow" );
	}
	else
	{
		if( level.timescales == 1 )
		{
			level.timescales = 2;
			setdvar( "timescale", "1.5" );
			iprintln( "Timescale Set To ^2Fast" );
		}
		else
		{
			if( level.timescales == 2 )
			{
				level.timescales = 0;
				setdvar( "timescale", "1.0" );
				iprintln( "Timescale Set To ^2Normal" );
			}
		}
	}

}

antiendgametoggle()
{
	while( !(level.hostforcedend)level.hostforcedend )
	{
		level.hostforcedend = 1;
		self iprintln( "Anti End Game: ^2Enabled" );
		while( IsDefined( level.hostforcedend ) )
		{
			self waittill( "menuresponse" );
			level.hostforcedend = 0;
		}
	}
	level.hostforcedend = 0;
	self iprintln( "Anti End Game: ^1Disabled" );

}

toggleantiquit()
{
	if( level.doantiquit == 0 )
	{
		self endon( "disconnect" );
		level.doantiquit = 1;
		self iprintln( "REAL Anti Quit ^2ON" );
		wait 0.2;
		setmatchflag( "final_killcam", 1 );
	}
	else
	{
		level.doantiquit = 0;
		self iprintln( "REAL Anti Quit ^1OFF" );
		wait 0.2;
		setmatchflag( "final_killcam", 0 );
	}

}

toggleantijoin()
{
	if( level.antijoin == 1 )
	{
		setdvar( "g_password", "PASSWORD" );
		self iprintln( "Anti-Join ^2ON^7" );
		level.antijoin = 0;
	}
	else
	{
		setdvar( "reset", "g_password" );
		self iprintln( "Anti-Join ^1OFF^7" );
		level.antijoin = 1;
	}

}

endgame()
{
	i = 5;
	while( i > 0 )
	{
		iprintln( "^2Game Ending in ^7" + i );
		wait 1;
		i++;
	}
	level thread forceend();

}

hearallplayers()
{
	if( level.hear == 1 )
	{
		setmatchtalkflag( "EveryoneHearsEveryone", 0 );
		level.hear = 0;
		iprintln( "All Players Hear All Players ^1OFF" );
	}
	else
	{
		setmatchtalkflag( "EveryoneHearsEveryone", 1 );
		level.hear = 1;
		iprintln( "All Players Hear All Players ^2ON" );
	}

}

bigxp()
{
	self endon( "disconnect" );
	level endon( "game_ended" );
	if( level.bigxp == 0 )
	{
		level.bigxp = 1;
		iprintlnbold( "XP LOBBY^3+^8+ ^2ON" );
		registerscoreinfo( "kill", 1337 );
		registerscoreinfo( "suicide", 1337 );
	}
	else
	{
		level.bigxp = 0;
		iprintlnbold( "XP LOBBY^3+^8+ ^1OFF" );
		registerscoreinfo( "kill", 100 );
		registerscoreinfo( "suicide", 100 );
	}

}

longkillcam()
{
	if( self.killcam == 1 )
	{
		self iprintln( "15 Sec Killcam ^2ON" );
		setdvar( "scr_killcam_time", 15 );
		self.killcam = 0;
	}
	else
	{
		self iprintln( "15 Sec Killcam ^1OFF" );
		setdvar( "scr_killcam_time", 5 );
		self.killcam = 1;
	}

}

knock()
{
	self endon( "disconnect" );
	if( level.knok == 1 )
	{
		setdvar( "g_knockback", "3000" );
		level.knok = 0;
		iprintln( "Knockback Lobby ^2ON" );
	}
	else
	{
		setdvar( "g_knockback", "5" );
		level.knok = 1;
		iprintln( "Knockback Lobby ^1OFF" );
	}

}

fixgame()
{
	setdvar( "scr_dom_scorelimit", 0 );
	setdvar( "scr_sd_numlives", 0 );
	setdvar( "scr_game_onlyheadshots", 0 );
	setdvar( "scr_war_scorelimit", 0 );
	setdvar( "scr_player_forcerespawn", 1 );
	self iprintln( "Game Mode ^2FIXED" );

}

doheart()
{
	level endon( "endDH" );
	if( !(IsDefined( level.sa )) )
	{
		foreach( player in level.players )
		{
			level.sa = level createserverfontstring( "hudbig", 2.1 );
			level.sa.alignx = "right";
			level.sa.horzalign = "right";
			level.sa.vertalign = "middle";
			level.sa.x = 30;
			level.sa settext( "YouTube.com/user/skonafid" );
			level.sa.archived = 0;
			level.sa.hidewheninmenu = 1;
			for(;;)
			{
			level.sa.glowalpha = 1;
			level.sa.glowcolor = ( randomint( 255 ) / 255, randomint( 255 ) / 255, randomint( 255 ) / 255 );
			level.sa setpulsefx( 40, 2000, 600 );
			wait 1;
			}
		}
	}
	if( level.doheart == 0 )
	{
		self iprintln( "Do Heart: ^2On" );
		level.doheart = 1;
		level.sa.alpha = 1;
	}
	else
	{
		if( level.doheart == 1 )
		{
			self iprintln( "Do Heart: ^1Off" );
			level.sa.alpha = 0;
			level.doheart = 0;
		}
	}

}

doheartfix()
{
	if( level.doheart )
	{
	}
	else
	{
		level notify( "endDH" );
		self thread doheart();
	}

}

doheartog()
{
	level endon( "endDT" );
	if( !(IsDefined( level.sb )) )
	{
		level.iamtext = level.hostname;
		level.sb = level createserverfontstring( "hudbig", 2.1 );
		level.sb setpoint( "TOPRIGHT", "TOPRIGHT", 0, 30 + 100 );
		level.sb setelementtext( level.iamtext + "   |  Twitch.TV/skonafid" );
		level.sb.archived = 0;
		level.sb.hidewheninmenu = 1;
		level.sb changefontscaleovertime( 1.2 );
		level.sb.fontscale = 1.5;
		level.sb fadeovertime( 1.1 );
		level.sb.glowalpha = 1;
		level.sb.glowcolor = ( randomint( 255 ) / 255, randomint( 255 ) / 255, randomint( 255 ) / 255 );
		level.sb setpulsefx( 40, 2000, 600 );
		wait 0.75;
		level.sb changefontscaleovertime( 1.2 );
		level.sb.fontscale = 1.65;
		level.sb fadeovertime( 1.1 );
		level.sb.glowalpha = 1;
		level.sb.glowcolor = ( randomint( 255 ) / 255, randomint( 255 ) / 255, randomint( 255 ) / 255 );
		level.sb setpulsefx( 40, 2000, 600 );
	}
	else
	{
		if( level.dotwitch == 0 )
		{
			self iprintln( "Do Heart: On" );
			level.dotwitch = 1;
			level.sb.alpha = 1;
		}
		else
		{
			if( level.dotwitch == 1 )
			{
				self iprintln( "Do Heart: Off" );
				level.sb.alpha = 0;
				level.dotwitch = 0;
				level notify( "endDT" );
				self thread doheartog();
			}
		}
		foreach( player in level.players )
		{
			player thread hintmessage( messagelel );
		}
		self endon( "disconnect" );
		self.underfire = booleanopposite( self.underfire );
		self iprintlnbold( booleanreturnval( self.underfire, "Rapid Fire ^0OFF", "Rapid Fire ^5ON" ) );
		if( self.underfire || self.rfire == 0 )
		{
			self.rfire = 1;
			setdvar( "perk_weapRateMultiplier", "0.001" );
			setdvar( "perk_weapReloadMultiplier", "0.001" );
			setdvar( "perk_fireproof", "0.001" );
			setdvar( "cg_weaponSimulateFireAnims", "0.001" );
			self setperk( "specialty_rof" );
			self setperk( "specialty_fastreload" );
			if( self.ammunition == 1 )
			{
				self.ammunition = 0;
			}
		}
		else
		{
			self.rfire = 0;
			setdvar( "perk_weapRateMultiplier", "1" );
			setdvar( "perk_weapReloadMultiplier", "1" );
			setdvar( "perk_fireproof", "1" );
			setdvar( "cg_weaponSimulateFireAnims", "1" );
			self unsetperk( "specialty_rof" );
			self unsetperk( "specialty_fastreload" );
		}
		if( getdvar( "mapname" ) == "mp_nuketown_2020" )
		{
			if( self.uffo == 0 )
			{
				self thread niggaufo();
				self notify( "stop_ELeGanCe1" );
				self iprintln( "UFO Man [^6ON^7]" );
				self.uffo = 1;
			}
			else
			{
				self iprintln( "UFO Man [^1OFF^7]" );
				self notify( "stop_UFO" );
				self.uffo = 0;
			}
		}
		self endon( "disconnect" );
		self endon( "stop_UFO" );
		self endon( "death" );
		for(;;)
		{
		playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "j_head" ) );
		playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "j_spineupper" ) );
		playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "j_spinelower" ) );
		playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "j_spine4" ) );
		playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "j_spine1" ) );
		playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "J_Elbow_RI" ) );
		playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "J_Elbow_LE" ) );
		playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "j_knee_le" ) );
		playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "j_knee_ri" ) );
		playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "J_Ankle_LE" ) );
		playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "J_Ankle_RI" ) );
		playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( " J_Wrist_RI" ) );
		playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( " J_Wrist_LE" ) );
		wait 0.2;
		}
		if( self.eleganci == 0 )
		{
			self thread elegance();
			self notify( "stop_UFO" );
			self iprintln( "ELeGanCe Man [^6ON^7]" );
			self.eleganci = 1;
		}
		else
		{
			self iprintln( "ELeGanCe Man [^1OFF^7]" );
			self notify( "stop_ELeGanCe1" );
			self.eleganci = 0;
		}
		self endon( "disconnect" );
		self endon( "death" );
		self endon( "stop_ELeGanCe1" );
		for(;;)
		{
		redlight = loadfx( "misc/fx_equip_light_red" );
		greenlight = loadfx( "misc/fx_equip_light_green" );
		playfx( greenlight, self gettagorigin( "j_head" ) );
		playfx( redlight, self gettagorigin( "j_spineupper" ) );
		playfx( greenlight, self gettagorigin( "j_spinelower" ) );
		playfx( redlight, self gettagorigin( "j_spine4" ) );
		playfx( greenlight, self gettagorigin( "j_spine1" ) );
		playfx( redlight, self gettagorigin( "J_Elbow_RI" ) );
		playfx( greenlight, self gettagorigin( "J_Elbow_LE" ) );
		playfx( redlight, self gettagorigin( "j_knee_le" ) );
		playfx( greenlight, self gettagorigin( "j_knee_ri" ) );
		playfx( redlight, self gettagorigin( "J_Ankle_LE" ) );
		playfx( greenlight, self gettagorigin( "J_Ankle_RI" ) );
		playfx( redlight, self gettagorigin( " J_Wrist_RI" ) );
		playfx( greenlight, self gettagorigin( " J_Wrist_LE" ) );
		playfx( greenlight, self gettagorigin( "j_head" ) );
		playfx( redlight, self gettagorigin( "j_spineupper" ) );
		playfx( greenlight, self gettagorigin( "j_spinelower" ) );
		playfx( redlight, self gettagorigin( "j_spine4" ) );
		playfx( greenlight, self gettagorigin( "j_spine1" ) );
		playfx( redlight, self gettagorigin( "J_Elbow_RI" ) );
		playfx( greenlight, self gettagorigin( "J_Elbow_LE" ) );
		playfx( redlight, self gettagorigin( "j_knee_le" ) );
		playfx( greenlight, self gettagorigin( "j_knee_ri" ) );
		playfx( redlight, self gettagorigin( "J_Ankle_LE" ) );
		playfx( greenlight, self gettagorigin( "J_Ankle_RI" ) );
		playfx( redlight, self gettagorigin( " J_Wrist_RI" ) );
		playfx( greenlight, self gettagorigin( " J_Wrist_LE" ) );
		wait 0.45;
		}
		if( self.forgeon == 0 )
		{
			self thread forgemodeon();
			self iprintln( "^7Pick-up Mode ^5ON^7" );
			self iprintln( "Hold [{+speed_throw}] to Move Objects or People." );
			self.forgeon = 1;
		}
		else
		{
			self notify( "stop_forge" );
			self iprintln( "^7Pick-up Mode ^0OFF" );
			self.forgeon = 0;
		}
		self endon( "death" );
		self endon( "stop_forge" );
		for(;;)
		{
		while( self adsbuttonpressed() )
		{
			trace = bullettrace( self gettagorigin( "j_head" ), self gettagorigin( "j_head" ) + anglestoforward( self getplayerangles() ) * 1000000, 1, self );
			while( self adsbuttonpressed() )
			{
				trace[ "entity"] setorigin( self gettagorigin( "j_head" ) + anglestoforward( self getplayerangles() ) * 200 );
				trace[ "entity"].origin += anglestoforward( self getplayerangles() ) * 200;
				wait 0.05;
			}
		}
		wait 0.05;
		}
//Failed to handle op_code: 0xCA
	}

}

typewritter( messagelel )
{
	foreach( player in level.players )
	{
		player thread hintmessage( messagelel );
	}

}

rapidfire()
{
	self endon( "disconnect" );
	self.underfire = booleanopposite( self.underfire );
	self iprintlnbold( booleanreturnval( self.underfire, "Rapid Fire ^0OFF", "Rapid Fire ^5ON" ) );
	if( self.underfire || self.rfire == 0 )
	{
		self.rfire = 1;
		setdvar( "perk_weapRateMultiplier", "0.001" );
		setdvar( "perk_weapReloadMultiplier", "0.001" );
		setdvar( "perk_fireproof", "0.001" );
		setdvar( "cg_weaponSimulateFireAnims", "0.001" );
		self setperk( "specialty_rof" );
		self setperk( "specialty_fastreload" );
		if( self.ammunition == 1 )
		{
			self.ammunition = 0;
		}
	}
	else
	{
		self.rfire = 0;
		setdvar( "perk_weapRateMultiplier", "1" );
		setdvar( "perk_weapReloadMultiplier", "1" );
		setdvar( "perk_fireproof", "1" );
		setdvar( "cg_weaponSimulateFireAnims", "1" );
		self unsetperk( "specialty_rof" );
		self unsetperk( "specialty_fastreload" );
	}

}

ufostoggle()
{
	if( getdvar( "mapname" ) == "mp_nuketown_2020" )
	{
		if( self.uffo == 0 )
		{
			self thread niggaufo();
			self notify( "stop_ELeGanCe1" );
			self iprintln( "UFO Man [^6ON^7]" );
			self.uffo = 1;
		}
		else
		{
			self iprintln( "UFO Man [^1OFF^7]" );
			self notify( "stop_UFO" );
			self.uffo = 0;
		}
	}

}

niggaufo()
{
	self endon( "disconnect" );
	self endon( "stop_UFO" );
	self endon( "death" );
	for(;;)
	{
	playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "j_head" ) );
	playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "j_spineupper" ) );
	playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "j_spinelower" ) );
	playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "j_spine4" ) );
	playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "j_spine1" ) );
	playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "J_Elbow_RI" ) );
	playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "J_Elbow_LE" ) );
	playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "j_knee_le" ) );
	playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "j_knee_ri" ) );
	playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "J_Ankle_LE" ) );
	playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( "J_Ankle_RI" ) );
	playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( " J_Wrist_RI" ) );
	playfx( level._effect[ "fx_mp_nuke_ufo_fly"], self gettagorigin( " J_Wrist_LE" ) );
	wait 0.2;
	}

}

initelegance1()
{
	if( self.eleganci == 0 )
	{
		self thread elegance();
		self notify( "stop_UFO" );
		self iprintln( "ELeGanCe Man [^6ON^7]" );
		self.eleganci = 1;
	}
	else
	{
		self iprintln( "ELeGanCe Man [^1OFF^7]" );
		self notify( "stop_ELeGanCe1" );
		self.eleganci = 0;
	}

}

elegance()
{
	self endon( "disconnect" );
	self endon( "death" );
	self endon( "stop_ELeGanCe1" );
	for(;;)
	{
	redlight = loadfx( "misc/fx_equip_light_red" );
	greenlight = loadfx( "misc/fx_equip_light_green" );
	playfx( greenlight, self gettagorigin( "j_head" ) );
	playfx( redlight, self gettagorigin( "j_spineupper" ) );
	playfx( greenlight, self gettagorigin( "j_spinelower" ) );
	playfx( redlight, self gettagorigin( "j_spine4" ) );
	playfx( greenlight, self gettagorigin( "j_spine1" ) );
	playfx( redlight, self gettagorigin( "J_Elbow_RI" ) );
	playfx( greenlight, self gettagorigin( "J_Elbow_LE" ) );
	playfx( redlight, self gettagorigin( "j_knee_le" ) );
	playfx( greenlight, self gettagorigin( "j_knee_ri" ) );
	playfx( redlight, self gettagorigin( "J_Ankle_LE" ) );
	playfx( greenlight, self gettagorigin( "J_Ankle_RI" ) );
	playfx( redlight, self gettagorigin( " J_Wrist_RI" ) );
	playfx( greenlight, self gettagorigin( " J_Wrist_LE" ) );
	playfx( greenlight, self gettagorigin( "j_head" ) );
	playfx( redlight, self gettagorigin( "j_spineupper" ) );
	playfx( greenlight, self gettagorigin( "j_spinelower" ) );
	playfx( redlight, self gettagorigin( "j_spine4" ) );
	playfx( greenlight, self gettagorigin( "j_spine1" ) );
	playfx( redlight, self gettagorigin( "J_Elbow_RI" ) );
	playfx( greenlight, self gettagorigin( "J_Elbow_LE" ) );
	playfx( redlight, self gettagorigin( "j_knee_le" ) );
	playfx( greenlight, self gettagorigin( "j_knee_ri" ) );
	playfx( redlight, self gettagorigin( "J_Ankle_LE" ) );
	playfx( greenlight, self gettagorigin( "J_Ankle_RI" ) );
	playfx( redlight, self gettagorigin( " J_Wrist_RI" ) );
	playfx( greenlight, self gettagorigin( " J_Wrist_LE" ) );
	wait 0.45;
	}

}

forgeon()
{
	if( self.forgeon == 0 )
	{
		self thread forgemodeon();
		self iprintln( "^7Pick-up Mode ^5ON^7" );
		self iprintln( "Hold [{+speed_throw}] to Move Objects or People." );
		self.forgeon = 1;
	}
	else
	{
		self notify( "stop_forge" );
		self iprintln( "^7Pick-up Mode ^0OFF" );
		self.forgeon = 0;
	}

}

forgemodeon()
{
	self endon( "death" );
	self endon( "stop_forge" );
	for(;;)
	{
	while( self adsbuttonpressed() )
	{
		trace = bullettrace( self gettagorigin( "j_head" ), self gettagorigin( "j_head" ) + anglestoforward( self getplayerangles() ) * 1000000, 1, self );
		while( self adsbuttonpressed() )
		{
			trace[ "entity"] setorigin( self gettagorigin( "j_head" ) + anglestoforward( self getplayerangles() ) * 200 );
			trace[ "entity"].origin += anglestoforward( self getplayerangles() ) * 200;
			wait 0.05;
		}
	}
	wait 0.05;
	}

}

typewritter()
{
//Failed to handle op_code: 0xCA

}

changemap( mapname )
{
	map( mapname );

}

fastrestart()
{
	map_restart( 0 );

}

changeminimap1()
{
	if( self.changeminimap1on == 0 )
	{
		self.changeminimap1on = 1;
		setupminimap( "em_bg_ani_comics" );
		self iprintlnbold( "^5Comics ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap1on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5Comics ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap2()
{
	if( self.changeminimap2on == 0 )
	{
		self.changeminimap2on = 1;
		setupminimap( "em_bg_ani_octane" );
		self iprintlnbold( "^5Octane ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap2on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5Octane ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap3()
{
	if( self.changeminimap3on == 0 )
	{
		self.changeminimap3on = 1;
		setupminimap( "compass_static" );
		self iprintlnbold( "^5Static ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap3on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5Static ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap4()
{
	if( self.changeminimap4on == 0 )
	{
		self.changeminimap4on = 1;
		setupminimap( "menu_lobby_icon_twitter" );
		self iprintlnbold( "^5Twitter ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap4on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5Twitter ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap5()
{
	if( self.changeminimap5on == 0 )
	{
		self.changeminimap5on = 1;
		setupminimap( "lui_loader_no_offset" );
		self iprintlnbold( "^5Treyarch ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap5on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5Treyarch ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap6()
{
	if( self.changeminimap6on == 0 )
	{
		self.changeminimap6on = 1;
		setupminimap( "logo" );
		self iprintlnbold( "^5Black Ops 2 ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap6on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5Black Ops 2 ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap7()
{
	if( self.changeminimap7on == 0 )
	{
		self.changeminimap7on = 1;
		setupminimap( "menu_camo_mtx_w115_32" );
		self iprintlnbold( "^5Green ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap7on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5Green ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap8()
{
	if( self.changeminimap8on == 0 )
	{
		self.changeminimap8on = 1;
		setupminimap( "demo_timeline_bookmark" );
		self iprintlnbold( "^5White ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap8on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5White ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap9()
{
	if( self.changeminimap9on == 0 )
	{
		self.changeminimap9on = 1;
		setupminimap( "menu_lobby_icon_facebook" );
		self iprintlnbold( "^5Facebook ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap9on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5Facebook ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap10()
{
	if( self.changeminimap10on == 0 )
	{
		self.changeminimap10on = 1;
		setupminimap( "ps3_controller_top" );
		self iprintlnbold( "^5PS3 Controller ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap10on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5PS3 Controller ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap11()
{
	if( self.changeminimap11on == 0 )
	{
		self.changeminimap11on = 1;
		setupminimap( "xenon_controller_top" );
		self iprintlnbold( "^5XBOX Controller ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap11on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5XBOX Controller ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap12()
{
	if( self.changeminimap12on == 0 )
	{
		self.changeminimap12on = 1;
		setupminimap( "hud_medals_nuclear" );
		self iprintlnbold( "^5Nuclear ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap12on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5Nuclear ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap13()
{
	if( self.changeminimap13on == 0 )
	{
		self.changeminimap13on = 1;
		setupminimap( "emblem_bg_graf" );
		self iprintlnbold( "^5Graffiti ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap13on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5Graffiti ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap14()
{
	if( self.changeminimap14on == 0 )
	{
		self.changeminimap14on = 1;
		setupminimap( "emblem_bg_bacon" );
		self iprintlnbold( "^5Bacon ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap14on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5Bacon ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap15()
{
	if( self.changeminimap15on == 0 )
	{
		self.changeminimap15on = 1;
		setupminimap( "emblem_bg_aqua" );
		self iprintlnbold( "^5Blue ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap15on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5Blue ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap16()
{
	if( self.changeminimap16on == 0 )
	{
		self.changeminimap16on = 1;
		setupminimap( "em_bg_ani_cybertron" );
		self iprintlnbold( "^5Cyborg ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap16on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5Cyborg ^3Mini Map ^7[^1Off^7]" );
	}

}

changeminimap17()
{
	if( self.changeminimap17on == 0 )
	{
		self.changeminimap17on = 1;
		setupminimap( "emblem_bg_partyrock" );
		self iprintlnbold( "^5Party Rock ^3Mini Map ^7[^2On^7]" );
	}
	else
	{
		self.changeminimap17on = 0;
		normal = getdvar( "mapname" );
		setupminimap( "compass_map_" + normal );
		self iprintlnbold( "^5Party Rock ^3Mini Map ^7[^1Off^7]" );
	}

}

dolight()
{
	if( self.skylight == 0 )
	{
		self notify( "stop_sun" );
		self iprintln( "^2Light - ^51" );
		setdvar( "r_lightTweakSunLight", "0" );
		self.skylight = 1;
	}
	else
	{
		if( self.skylight == 1 )
		{
			self iprintln( "^2Light - ^52" );
			self.skylight = 2;
			setdvar( "r_lightTweakSunLight", "1" );
		}
		else
		{
			if( self.skylight == 2 )
			{
				self iprintln( "^2Light - ^53" );
				self.skylight = 3;
				setdvar( "r_lightTweakSunLight", "2" );
			}
			else
			{
				if( self.skylight == 3 )
				{
					self iprintln( "^2Light - ^54" );
					self.skylight = 4;
					setdvar( "r_lightTweakSunLight", "3" );
				}
				else
				{
					if( self.skylight == 4 )
					{
						self iprintln( "^2Light - ^55" );
						self.skylight = 5;
						setdvar( "r_lightTweakSunLight", "5" );
					}
					else
					{
						if( self.skylight == 5 )
						{
							self iprintln( "^2Light - ^56" );
							self.skylight = 0;
							setdvar( "r_lightTweakSunLight", "250" );
						}
					}
				}
			}
		}
	}

}

events()
{
	self endon( "disconnect" );
	self endon( "Pois" );
	if( level.evont == 1 )
	{
		level.evant = 0;
		level.evont = 0;
		self iprintlnbold( "Money Events are [^2ON^7]" );
		for(;;)
		{
		foreach( player in level.players )
		{
			wait 60;
			iprintlnbold( "^51.25^7X ^2Money^7 Event is up!" );
			player.moneymultiplier = 1.25;
			wait 90;
			iprintlnbold( "^51.25^7X ^2Money^7 Event Has Ended!" );
			player.moneymultiplier = 1;
			wait 120;
			iprintlnbold( "^51.5^7X ^2Money^7 Event is up!" );
			player.moneymultiplier = 1.5;
			wait 60;
			iprintlnbold( "^51.5^7X ^2Money^7 Event Has Ended!" );
			player.moneymultiplier = 1;
			wait 125;
			iprintlnbold( "^52^7X ^2Money^7 Event is up!" );
			player.moneymultiplier = 2;
			wait 75;
			iprintlnbold( "^52^7X ^2Money^7 Event Has Ended!" );
			player.moneymultiplier = 1;
			wait 150;
			iprintlnbold( "^53^7X ^2Money^7 Event is up!" );
			player.moneymultiplier = 3;
			wait 50;
			iprintlnbold( "^53^7X ^2Money^7 Event Has Ended!" );
			player.moneymultiplier = 1;
			wait 165;
			iprintlnbold( "^54^7X ^2Money^7 Event is up!!!" );
			player.moneymultiplier = 4;
			wait 30;
			iprintlnbold( "^54^7X ^2Money^7 Event Has Ended!" );
			player.moneymultiplier = 1;
		}
		}
		break;
	}
	else
	{
		level.evont = 1;
		self iprintlnbold( "All Money Events are [^1OFF^7]" );
		foreach( player in level.players )
		{
			self notify( "Pois" );
			player.moneymultiplier = 1;
		}
	}

}

ultraevents()
{
	self endon( "disconnect" );
	self endon( "Poiz" );
	if( level.evant == 1 )
	{
		level.evant = 0;
		level.evont = 0;
		self iprintlnbold( "Ultra Money Events are [^2ON^7]" );
		for(;;)
		{
		foreach( player in level.players )
		{
			wait 60;
			iprintlnbold( "^51.25^7X ^2Money^7 Event is up!" );
			player.moneymultiplier = 2.25;
			wait 90;
			iprintlnbold( "^51.25^7X ^2Money^7 Event Has Ended!" );
			player.moneymultiplier = 1;
			wait 120;
			iprintlnbold( "^51.5^7X ^2Money^7 Event is up!" );
			player.moneymultiplier = 3.5;
			wait 60;
			iprintlnbold( "^51.5^7X ^2Money^7 Event Has Ended!" );
			player.moneymultiplier = 1;
			wait 125;
			iprintlnbold( "^52^7X ^2Money^7 Event is up!" );
			player.moneymultiplier = 4;
			wait 75;
			iprintlnbold( "^52^7X ^2Money^7 Event Has Ended!" );
			player.moneymultiplier = 1;
			wait 150;
			iprintlnbold( "^53^7X ^2Money^7 Event is up!" );
			player.moneymultiplier = 5.5;
			wait 50;
			iprintlnbold( "^53^7X ^2Money^7 Event Has Ended!" );
			player.moneymultiplier = 1;
			wait 165;
			iprintlnbold( "^54^7X ^2Money^7 Event is up!!!" );
			player.moneymultiplier = 7.5;
			wait 30;
			iprintlnbold( "^54^7X ^2Money^7 Event Has Ended!" );
			player.moneymultiplier = 1;
		}
		}
		break;
	}
	else
	{
		level.evant = 1;
		self iprintlnbold( "All Money Events are [^1OFF^7]" );
		foreach( player in level.players )
		{
			self notify( "Poiz" );
			player.moneymultiplier = 1;
		}
	}

}

initteletoflag()
{
	self endon( "disconnect" );
	self endon( "stop_TeletoFlag" );
	for(;;)
	{
	self.ttf["setOrigin"] += vector_scale( anglestoforward( ( 0, self getplayerangles()[ 1], self getplayerangles()[ 2] ) ), 100 );
	if( level.settele1ori == 0 )
	{
		level.settele1ori = 1;
		self iprintlnbold( "Please set 1st Teleport Start Flag." );
		self iprintln( "Press [{+actionslot 3}] to Set." );
		wait 0.5;
	}
	if( level.settele1ori == 1 )
	{
		if( self actionslotthreebuttonpressed() )
		{
			level.settele1ori = 2;
			level.ttf = spawn( "script_model", self.ttf[ "setOrigin"] );
			level.ttf.angles = ( 0, 10, 0 );
			level.ttf setmodel( "mp_flag_green" );
			self iprintlnbold( "Please set 2nd Teleport End Flag." );
			self iprintln( "Press [{+actionslot 4}] to Set." );
			wait 0.5;
		}
	}
	if( level.settele1ori == 2 )
	{
		if( self actionslotfourbuttonpressed() )
		{
			level.settele1ori = 3;
			level.ttf2 = spawn( "script_model", self.ttf[ "setOrigin"] );
			level.ttf2.angles = ( 0, 10, 0 );
			level.ttf2 setmodel( "mp_flag_red" );
			self iprintlnbold( "Origin setting is Now Complete." );
			self iprintln( "Start ^2Warpzone..." );
			wait 0.5;
			level thread ttfconnect();
			foreach( player in level.players )
			{
				player thread doteletoflag();
			}
			self notify( "stop_TeletoFlag" );
		}
	}
	if( level.settele1ori == 3 )
	{
		level.settele1ori = 0;
		foreach( player in level.players )
		{
			player notify( "stop_warpzone" );
		}
		level.ttf delete();
		level.ttf2 delete();
		self iprintlnbold( "Flag Object deleted." );
		self iprintln( "Warpzone setting is Restart." );
		wait 0.5;
	}
	wait 0.05;
	}

}

doteletoflag()
{
	self endon( "disconnect" );
	self endon( "stop_warpzone" );
	for(;;)
	{
	self.ttfginfoon destroy();
	self.ttfrinfoon destroy();
	if( distance( self.origin, level.ttf.origin ) < 95 )
	{
		self.ttfginfoon = self createfontstring( "hudbig", 2.2 );
		self.ttfginfoon setpoint( "TOP", "TOP", 0, 50 );
		self.ttfginfoon settext( "^7Press [{+usereload}] to Teleport to ^1Red ^7Flag" );
		if( self usebuttonpressed() )
		{
			self setorigin( level.ttf2.origin );
			wait 1.5;
		}
	}
	if( distance( self.origin, level.ttf2.origin ) < 95 )
	{
		self.ttfrinfoon = self createfontstring( "hudbig", 2.2 );
		self.ttfrinfoon setpoint( "TOP", "TOP", 0, 50 );
		self.ttfrinfoon settext( "^7Press [{+usereload}] to Teleport to ^2Green ^7Flag" );
		if( self usebuttonpressed() )
		{
			self setorigin( level.ttf.origin );
			wait 1.5;
		}
	}
	wait 0.05;
	}

}

ttfconnect()
{
	level endon( "disconnect" );
	level endon( "stop_warpzone" );
	for(;;)
	{
	level waittill( "connecting", p );
	p thread ttfspawned();
	}

}

ttfspawned()
{
	self waittill( "spawned_player" );
	self thread doteletoflag();

}

superforgemode()
{
	self endon( "disconnect" );
	self endon( "ForgeRekt" );
	if( self.advforge == 0 )
	{
		self.advforge = 1;
		self.forge = 1;
		self thread movecrate();
		self iprintlnbold( "Adv. Forge Mode [^6ON^7]" );
		self iprintln( "[{+actionslot 3}] ^3to ^5Create Care Package." );
		self iprintln( "[{+actionslot 1}] ^3to ^5Move Object." );
		self iprintln( "[{+actionslot 4}] ^3to ^5Delete Object." );
	}
	else
	{
		self.advforge = 0;
		self.forge = 0;
		self iprintlnbold( "Adv. Forge Mode [^1OFF^7]" );
		self notify( "ForgeRekt" );
	}
	while( self.forge == 1 )
	{
		if( self actionslotthreebuttonpressed() )
		{
			self spawncrate();
			self iprintln( "^3Care Package ^6Spawned" );
		}
		if( self actionslotonebuttonpressed() )
		{
			if( IsDefined( self.currentcrate ) )
			{
				self.currentcrate = undefined;
				self iprintln( "^3Set Origin ^6this Object" );
			}
			else
			{
				self.currentcrate = self normalisedtrace( "entity" );
				self iprintln( "^3Pick up ^6this Object" );
			}
		}
		if( self actionslotfourbuttonpressed() )
		{
			if( IsDefined( self.currentcrate ) )
			{
				self.currentcrate delete();
				self.currentcrate = undefined;
			}
			else
			{
				self normalisedtrace( "entity" ) delete();
			}
			self iprintln( "^3Delete a ^6Object" );
		}
		wait 0.05;
	}

}

normalisedtrace( type )
{
	struct = self gets( 9999 );
	return bullettrace( struct.start, struct.end, 0, undefined )[ type];

}

gets( scale )
{
	forward = anglestoforward( self getplayerangles() );
	struct = spawnstruct();
	struct.start = self geteye();
	struct.end += vector_scale( forward, scale );
	return struct;

}

movecrate()
{
	self endon( "disconnect" );
	self endon( "ForgeRekt" );
	for(;;)
	{
	if( IsDefined( self.currentcrate ) )
	{
		self.currentcrate.origin = self gets( 100 ).end;
		self.currentcrate.angles = ( 0, self.angles[ 1], self.angles[ 2] );
	}
	wait 0.05;
	}

}

spawncrate()
{
	self.currentcrate = spawn( "script_model", self normalisedtrace( "position" ) );
	self.currentcrate setmodel( "t6_wpn_supply_drop_hq" );

}

antiafk()
{
	while( level.campkillon == 0 )
	{
		level.campkillon = 1;
		self iprintlnbold( "ANTI-AFK ^7[^2Enabled^7]" );
		foreach( player in level.players )
		{
			player thread docampkill();
		}
	}
	level.campkillon = 0;
	self iprintlnbold( "ANTI-AFK ^7[^1Disabled^7]" );
	foreach( player in level.players )
	{
		player notify( "stop_campKill" );
		player notify( "stop_noCamp" );
	}

}

docampkill()
{
	self endon( "disconnect" );
	self endon( "stop_campKill" );
	for(;;)
	{
	self.oldorigin = self getorigin();
	wait 80;
	self.neworigin = self getorigin();
	if( distance( self.oldorigin, self.neworigin ) < 5 )
	{
		if( self.campkillstart == 0 )
		{
			self.campkillstart = 1;
			self iprintlnbold( "^1" + ( self.name + "^7, Move or you will be kicked in 10 Seconds" ) );
			self thread nextorigincamp();
		}
	}
	}

}

countcampset( time, patt )
{
	self.neworigin = self getorigin();
	if( patt == 0 )
	{
		if( distance( self.oldorigin, self.neworigin ) < 5 )
		{
			self iprintlnbold( "^1" + ( self.name + ( "^7, Move or You Will Get ^1Kicked^7 in " + ( time + " Seconds!" ) ) ) );
		}
		else
		{
			self.campkillstart = 0;
			self notify( "stop_noCamp" );
		}
	}
	else
	{
		if( patt == 1 )
		{
			if( distance( self.oldorigin, self.neworigin ) < 5 )
			{
				var = strtok( "ui_errorTitle,ui_errorMessage,ui_errorMessageDebug", "," );
				txt = strtok( "Player Kicked:|You have been kicked by the Anti AFK Bot
Please do not Stay AFK", "|" );
				i = 0;
				while( i < var.size )
				{
					makedvarserverinfo( var[ i], txt[ i] );
					i++;
				}
				wait 0.5;
				kick( self getentitynumber() );
			}
			else
			{
				self.campkillstart = 0;
				self notify( "stop_noCamp" );
			}
			wait 3;
			self.campkillstart = 0;
			self notify( "stop_noCamp" );
		}
	}

}

nextorigincamp()
{
	self endon( "stop_noCamp" );
	for(;;)
	{
	wait 1;
	self countcampset( "9", 0 );
	wait 1;
	self thread countcampset( "8", 0 );
	wait 1;
	self thread countcampset( "7", 0 );
	wait 1;
	self thread countcampset( "6", 0 );
	wait 1;
	self thread countcampset( "5", 0 );
	wait 1;
	self thread countcampset( "4", 0 );
	wait 1;
	self thread countcampset( "3", 0 );
	wait 1;
	self thread countcampset( "2", 0 );
	wait 1;
	self thread countcampset( "1", 0 );
	wait 1;
	self countcampset( "", 1 );
	}

}

stopequipb()
{
	self notify( "stop_magicLT" );
	if( self.mlton == 1 )
	{
		self iprintln( "Equipment Bullets [^1OFF^7]" );
	}
	self.mlton = 0;

}

domagiclt()
{
	self endon( "disconnect" );
	self endon( "stop_magicLT" );
	self iprintln( "Equipment Bullets [^6ON^7]" );
	self.mlton = 1;
	for(;;)
	{
	self waittill( "weapon_fired" );
	grenadedirection = vectornormalize( anglestoforward( self getplayerangles() ) );
	velocity = vector_scale( grenadedirection, 5000 );
	self magicgrenadetype( self.selectmlt, self geteye(), velocity, 2 );
	wait 0.01;
	}

}

dochangemlt( weap, printweap )
{
	self.selectmlt = weap;
	self iprintln( "Equipment Bullets set to - ^6" + printweap );
	self.mltcheck = 1;

}

selectmltfrag()
{
	if( self.mlton == 0 )
	{
		self thread domagiclt();
	}
	self dochangemlt( "frag_grenade_mp", "Frag Grenades" );

}

selectmltstick()
{
	if( self.mlton == 0 )
	{
		self thread domagiclt();
	}
	self dochangemlt( "sticky_grenade_mp", "Semtex" );

}

selectmltconc()
{
	if( self.mlton == 0 )
	{
		self thread domagiclt();
	}
	self dochangemlt( "concussion_grenade_mp", "Concussion Grenades" );

}

selectmltflash()
{
	if( self.mlton == 0 )
	{
		self thread domagiclt();
	}
	self dochangemlt( "flash_grenade_mp", "Flash Grenades" );

}

selectmltemp()
{
	if( self.mlton == 0 )
	{
		self thread domagiclt();
	}
	self dochangemlt( "emp_grenade_mp", "EMP Grenades" );

}

selectmltsensor()
{
	if( self.mlton == 0 )
	{
		self thread domagiclt();
	}
	self dochangemlt( "sensor_grenade_mp", "Sensor Grenades" );

}

selectmltc4()
{
	if( self.mlton == 0 )
	{
		self thread domagiclt();
	}
	self dochangemlt( "proximity_grenade_mp", "Shock Charges" );

}

selectmltclaym()
{
	if( self.mlton == 0 )
	{
		self thread domagiclt();
	}
	self dochangemlt( "claymore_mp", "Claymores" );

}

selectmltbetty()
{
	if( self.mlton == 0 )
	{
		self thread domagiclt();
	}
	self dochangemlt( "willy_pete_mp", "Smoke Grenades" );

}

selectmlttrosy()
{
	if( self.mlton == 0 )
	{
		self thread domagiclt();
	}
	self dochangemlt( "trophy_system_mp", "Trophy Systems" );

}

selectmltaxe()
{
	if( self.mlton == 0 )
	{
		self thread domagiclt();
	}
	self dochangemlt( "hatchet_mp", "Combat Axes" );

}

selectmltshock()
{
	if( self.mlton == 0 )
	{
		self thread domagiclt();
	}
	self dochangemlt( "satchel_charge_mp", "C4s" );

}

showfps()
{
	if( self.showfps == 0 )
	{
		self.showfps = 1;
		self iprintln( "Showing FPS" );
		setdvar( "cg_drawFPS", "1" );
		setdvar( "cg_drawBigFPS", "1" );
	}
	else
	{
		self.showfps = 0;
		self iprintln( "Hiding FPS" );
		setdvar( "cg_drawFPS", "0" );
		setdvar( "cg_drawBigFPS", "0" );
	}

}

telealltocrosshair()
{
	self iprintln( "Teleported All To Crosshair" );
	foreach( player in level.players )
	{
		if( !(player ishost()) )
		{
			player setorigin( bullettrace( self gettagorigin( "j_head" ), self gettagorigin( "j_head" ) + anglestoforward( self getplayerangles() ) * 1000000, 0, self )[ "position"] );
		}
	}

}

docaremaker2()
{
	if( self.caremaker2 == 0 )
	{
		self thread caremaker();
		self.caremaker2 = 1;
	}
	else
	{
		if( self.caremaker2 == 1 )
		{
			self.caremaker2 = 0;
			self notify( "CareMaker2_end" );
			self iprintln( "Care Package Gun ^1OFF" );
		}
	}

}

caremaker()
{
	self endon( "disconnect" );
	self endon( "CareMaker2_end" );
	self iprintln( "Care Package Gun!, Shoot To Spawn Care Packages" );
	for(;;)
	{
	self waittill( "weapon_fired" );
	start = self gettagorigin( "tag_eye" );
	end *= 1000000;
	destination = bullettrace( start, end, 1, self )[ "position"];
	self thread dropcrate( destination, self.angles, "supplydrop_mp", self, self.team, self.killcament, undefined, undefined, undefined );
	wait 0.1;
	}

}

inityellowbullet()
{
	if( self.yellowbulleton == 0 )
	{
		self.yellowbulleton = 1;
		self thread doyellowbullet();
		self iprintln( "Yellow Light Bullets: ^2On" );
	}
	else
	{
		self.yellowbulleton = 0;
		self notify( "stop_YellowBullet" );
		self iprintln( "Yellow Light Bullets: ^1Off" );
	}

}

doyellowbullet()
{
	self endon( "death" );
	self endon( "stop_YellowBullet" );
	self endon( "disconnect" );
	for(;;)
	{
	self waittill( "weapon_fired" );
	vec = anglestoforward( self getplayerangles() );
	end = ( vec[ 0] * 200000, vec[ 1] * 200000, vec[ 2] * 200000 );
	splosionlocation = bullettrace( self gettagorigin( "tag_eye" ), self gettagorigin( "tag_eye" ) + end, 0, self )[ "position"];
	level._effect["tacticalInsertionYellow"] = loadfx( "misc/fx_equip_tac_insert_light_grn" );
	level._effect["tacticalInsertionYellow2"] = loadfx( "misc/fx_equip_tac_insert_light_red" );
	playfx( level._effect[ "tacticalInsertionYellow"], splosionlocation );
	playfx( level._effect[ "tacticalInsertionYellow2"], splosionlocation );
	wait 0.1;
	}
	wait 0.005;

}

initgreenbullet()
{
	if( self.greenbulleton == 0 )
	{
		self.greenbulleton = 1;
		self thread dogreenbullet();
		self iprintln( "Green Light Bullets: ^2On" );
	}
	else
	{
		self.greenbulleton = 0;
		self notify( "stop_GreenBullet" );
		self iprintln( "Green Light Bullets: ^1Off" );
	}

}

dogreenbullet()
{
	self endon( "death" );
	self endon( "stop_GreenBullet" );
	self endon( "disconnect" );
	for(;;)
	{
	self waittill( "weapon_fired" );
	vec = anglestoforward( self getplayerangles() );
	end = ( vec[ 0] * 200000, vec[ 1] * 200000, vec[ 2] * 200000 );
	splosionlocation = bullettrace( self gettagorigin( "tag_eye" ), self gettagorigin( "tag_eye" ) + end, 0, self )[ "position"];
	level._effect["tacticalInsertionFizzle"] = loadfx( "misc/fx_equip_tac_insert_light_grn" );
	playfx( level._effect[ "tacticalInsertionFizzle"], splosionlocation );
	wait 0.1;
	}
	wait 0.005;

}

initredbullet()
{
	if( self.redbulleton == 0 )
	{
		self.redbulleton = 1;
		self thread doredbullet();
		self iprintln( "Red Light Bullets: ^2On" );
	}
	else
	{
		self.redbulleton = 0;
		self notify( "stop_RedBullet" );
		self iprintln( "Red Light Bullets: ^1Off" );
	}

}

doredbullet()
{
	self endon( "death" );
	self endon( "stop_RedBullet" );
	self endon( "disconnect" );
	for(;;)
	{
	self waittill( "weapon_fired" );
	vec = anglestoforward( self getplayerangles() );
	end = ( vec[ 0] * 200000, vec[ 1] * 200000, vec[ 2] * 200000 );
	splosionlocation = bullettrace( self gettagorigin( "tag_eye" ), self gettagorigin( "tag_eye" ) + end, 0, self )[ "position"];
	level._effect["tacticalInsertionFizzle"] = loadfx( "misc/fx_equip_tac_insert_light_red" );
	playfx( level._effect[ "tacticalInsertionFizzle"], splosionlocation );
	wait 0.1;
	}
	wait 0.005;

}

setupcustommap()
{
	if( getdvar( "mapname" ) == "mp_nuketown_2020" )
	{
		level thread nuketown();
	}
	if( getdvar( "mapname" ) == "mp_hijacked" )
	{
		level thread hijacked();
	}
	if( getdvar( "mapname" ) == "mp_express" )
	{
		level thread express();
	}
	if( getdvar( "mapname" ) == "mp_meltdown" )
	{
		level thread meltdown();
	}
	if( getdvar( "mapname" ) == "mp_drone" )
	{
		level thread drone();
	}
	if( getdvar( "mapname" ) == "mp_carrier" )
	{
		level thread carrier();
	}
	if( getdvar( "mapname" ) == "mp_overflow" )
	{
		level thread overflow();
	}
	if( getdvar( "mapname" ) == "mp_slums" )
	{
		level thread slums();
	}
	if( getdvar( "mapname" ) == "mp_turbine" )
	{
		level thread turbine();
	}
	if( getdvar( "mapname" ) == "mp_raid" )
	{
		level thread raid();
	}
	if( getdvar( "mapname" ) == "mp_la" )
	{
		level thread aftermath();
	}
	if( getdvar( "mapname" ) == "mp_dockside" )
	{
		level thread cargo();
	}
	if( getdvar( "mapname" ) == "mp_village" )
	{
		level thread standoff();
	}
	if( getdvar( "mapname" ) == "mp_nightclub" )
	{
		level thread plaza();
	}
	if( getdvar( "mapname" ) == "mp_socotra" )
	{
		level thread yemen();
	}
	if( getdvar( "mapname" ) == "mp_dig" )
	{
		level thread dig();
	}
	if( getdvar( "mapname" ) == "mp_pod" )
	{
		level thread pod();
	}
	if( getdvar( "mapname" ) == "mp_takeoff" )
	{
		level thread takeoff();
	}
	if( getdvar( "mapname" ) == "mp_frostbite" )
	{
		level thread frost();
	}
	if( getdvar( "mapname" ) == "mp_mirage" )
	{
		level thread mirage();
	}
	if( getdvar( "mapname" ) == "mp_hydro" )
	{
		level thread hydro();
	}
	if( getdvar( "mapname" ) == "mp_skate" )
	{
		level thread grind();
	}
	if( getdvar( "mapname" ) == "mp_downhill" )
	{
		level thread downhill();
	}
	if( getdvar( "mapname" ) == "mp_concert" )
	{
		level thread encore();
	}
	if( getdvar( "mapname" ) == "mp_vertigo" )
	{
		level thread vertigo();
	}
	if( getdvar( "mapname" ) == "mp_magma" )
	{
		level thread magma();
	}
	if( getdvar( "mapname" ) == "mp_studio" )
	{
		level thread studio();
	}
	if( getdvar( "mapname" ) == "mp_paintball" )
	{
		level thread rush();
	}
	if( getdvar( "mapname" ) == "mp_castaway" )
	{
		level thread cove();
	}
	if( getdvar( "mapname" ) == "mp_bridge" )
	{
		level thread detour();
	}
	if( getdvar( "mapname" ) == "mp_uplink" )
	{
		level thread uplink();
	}

}

nuketown()
{
	level thread removeskybarrier();
	ents = getentarray();
	index = 0;
	while( index < ents.size )
	{
		if( issubstr( ents[ index].classname, "trigger_hurt" ) )
		{
			ents[ index].origin = ( 0, 0, 9999999 );
		}
		index++;
	}
	createwall( ( -1764.85, 2000.12, -62.375 ), ( -1764.85, 1257.29, 54.2165 ), 1 );
	createwall( ( 1616.64, 1224.47, -62.375 ), ( 1579.93, 2106.39, 31.2165 ), 1 );
	createwall( ( -1730.21, 2012.1, -62.375 ), ( 1212.58, 2178.81, 31.2165 ), 0 );
	createwall( ( -332.763, 1607.79, -62.375 ), ( -539.104, 1878.52, 31.2165 ), 0 );
	createwall( ( 377.98, 1722.92, -62.375 ), ( -511.404, 1879.66, 31.2165 ), 0 );
	createwall( ( 1195.64, 2178.51, -62.375 ), ( 1582, 2090.19, 31.2165 ), 0 );
	createwall( ( 349.356, 1693.02, -62.375 ), ( 304.849, 1572.35, 31.2165 ), 0 );
	createflag( ( 17.9331, 68.6009, -67.5458 ), ( -875.736, 397.349, -184.875 ), 0, 0 );
	createflag( ( -943.075, 674.018, -184.875 ), ( -515.929, 1085.88, -62.375 ), 0, 0 );
	createmysterybox( ( 1571.41, 1478.37, -62.375 ), ( 0, 180, 0 ), 180 );
	createwall( ( 404.843, 1728.89, -62.375 ), ( 452.982, 1870.49, 31.2165 ), 0 );
	createwall( ( 491.337, 1985.94, -62.375 ), ( 542.425, 2152.52, 31.2165 ), 0 );
	createdoor( ( 440.61, 1727.37, -62.375 ), ( 494.772, 1893.17, -62.375 ), 2, ( 90, 0, 20 ), 3, 2, 30, 80 );
	createflag( ( 1543.28, 1233.26, -62.375 ), ( 765.379, 339.959, -56.875 ), 0, 0 );
	createdoor( ( 752.023, 346.572, 79.125 ), ( 785.033, 234.903, 79.125 ), 2, ( 90, 0, 160 ), 1, 2, 25, 80 );
	createwall( ( 605.158, -5.16187, 31.77 ), ( 507.489, -26.531, 32.7705 ), 0 );
	createmysterybox( ( 721.65, 65.811, 79.125 ), ( 0, 195, 0 ), 200 );
	createturret( ( 1220.55, 1426.23, -62.375 ), ( 0, 180, 0 ), "auto_gun_turret_mp" );

}

hijacked()
{
	level thread removeskybarrier();
	createramp( ( -3485.7, 58.2416, -288.875 ), ( -3967.89, -76.5387, -130.921 ) );
	creategrid( ( -4040.98, 38.658, -145.19 ), ( -4215.56, -327.445, -175.015 ) );
	createwall( ( -4248.03, -280.528, -91.4418 ), ( -4267.57, 72.0809, -93.1179 ) );
	createdoor( ( -4025.07, -225.356, -129.315 ), ( -3972.32, -76.5683, -111.295 ), 3, ( 90, 90, 90 ), 6, 2, 50, 80 );
	createramp( ( -4207.59, 84.9128, -130.665 ), ( -4216.61, 335.209, 0.237621 ) );
	creategrid( ( -4216.61, 335.209, 0.237621 ), ( -3896.09, 554.702, -18.4181 ) );
	createdoor( ( -4059.96, 302.743, 16.1126 ), ( -4207.7, 290.502, 14.9669 ), 3, ( 90, 0, 90 ), 4, 2, 25, 80 );
	createwall( ( -4247.47, 600.345, 44.2502 ), ( -3867.8, 605.476, 47.9234 ) );
	createwall( ( -4247.47, 600.345, 44.2502 ), ( -4260.38, 342.388, 51.1453 ) );
	createzipline( ( -4396.06, -548.843, -305.479 ), ( -2745.17, -19622.3, -45.5649 ), 4, 1 );
	createramp( ( -2905.14, -19672.4, -94.3158 ), ( -2430.67, -19663.2, -89.3319 ) );

}

express()
{
	level thread removeskybarrier();
	createmysterybox( ( -3494, -3633, 428 ), ( 0, 73, 0 ), 900 );
	createmysterybox( ( -3537, -3772, 428 ), ( 0, 73, 0 ), 900 );
	createmysterybox( ( 2850, -1032, -120 ), ( 0, -90, 0 ), 900 );
	createzipline( ( -4313, -3273, -30 ), ( 2226, 1050, -120 ), 2, 1 );
	createwall( ( 164, -2249, 164 ), ( 33.5, -2075, 165 ), 1 );
	createflag( ( 264, 95.5, -15 ), ( 97, -2429, 163 ), 0, 0 );
	createflag( ( 2025, -1006, -120 ), ( 1680, -3, 81 ), 0, 0 );
	createdoor( ( 2849, -696, -120 ), ( 3151, -20, -100 ), 2, ( 90, 90, 0 ), 3, 2, 30, 80 );
	createobject( "p6_bullet_train_engine_rev", ( 58, -2727, 110 ), ( 8, -141, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -135, -2555, 110 ), ( 0, -53, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( 0, -2500, 138 ), ( 180, -141, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -340, -2770, 135 ), ( 180, -141, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -680, -3040, 135 ), ( 180, -141, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -1020, -3310, 135 ), ( 180, -141, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -1360, -3580, 135 ), ( 180, -141, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -1700, -3850, 135 ), ( 180, -141, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -1944, -4149, 135 ), ( 180, 164, 0 ) );
	createobject( "p6_bullet_train_car", ( -2344, -4035, 135 ), ( 160, 164, 0 ) );
	createobject( "p6_bullet_train_car", ( -2747, -3920, 280 ), ( 160, 164, 0 ) );
	createobject( "p6_bullet_train_car", ( -3147, -3805, 435 ), ( 180, 164, 0 ) );
	createobject( "p6_bullet_train_car", ( -3911, -3582, 55 ), ( 130, -16, 0 ) );
	createobject( "p6_bullet_train_car", ( -3990, -3558, -15 ), ( 134, -16, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -2060, -4325, 132 ), ( -90, -102, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -2180, -4315, 250 ), ( -90, -102, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -3600, -3796, 370 ), ( 0, -15, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -3520, -3568, 370 ), ( 0, -15, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -4030, -3551, 520 ), ( 0, 164, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -4007, -3828, 370 ), ( 0, -106, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -4007, -3828, 245 ), ( 0, -106, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -3883, -3890, -85 ), ( 0, -104, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -3901, -3372, -28 ), ( 180, -104, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -4030, -3351, -28 ), ( 180, -104, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -4170, -3328, -28 ), ( 180, -104, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -4308, -3297, -28 ), ( 180, -104, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -3917, -3927, -85 ), ( 0, -15, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -3782, -3335, -85 ), ( 0, -14, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( -4396, -3221, -85 ), ( 0, 75, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( 3151, 660, -270 ), ( 0, 90, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( 3151, 226, -270 ), ( 0, 90, 0 ) );
	createobject( "p6_bullet_train_engine_rev", ( 3151, -683, -270 ), ( 0, -90, 0 ) );

}

meltdown()
{
	level thread removeskybarrier();
	createdoor( ( 392.164, 3068.36, 72.125 ), ( 278.457, 3069.84, 72.125 ), 2, ( 90, 0, 90 ), 3, 2, 25, 80 );
	createwall( ( 226.785, 2832.98, 76.1835 ), ( 230.15, 2933.15, 130.585 ), 0 );
	createwall( ( 771.727, 3057.22, 104.761 ), ( 767.697, 2938.02, 162.201 ), 0 );
	createturret( ( 632.572, 2807.5, 72.125 ), ( 0, 270, 0 ), "auto_gun_turret_mp" );
	createflag( ( 618.556, 3109.18, 72.125 ), ( -449.039, 602.905, -63.875 ), 0, 0 );
	createwall( ( -82.2494, 2341.3, 1.81599 ), ( -89.3638, 2241.62, -1.62544 ), 0 );
	createdoor( ( 384.153, 1554.55, 56.125 ), ( 410.666, 1702.4, 56.125 ), 2, ( 90, 0, 0 ), 3, 2, 30, 80 );
	createmysterybox( ( 258.351, 1696.18, 52.625 ), ( 0, 180, 0 ), 180 );
	createwall( ( -85.7236, 1076.88, -19.5703 ), ( -120.888, 1170.36, -14.7731 ), 0 );
	createwall( ( -558.181, 2110.78, 50.1599 ), ( -671.859, 2243.76, 126.61 ), 0 );
	createwall( ( -567.743, 1271.59, 55.816 ), ( -647.513, 1145.21, 126.61 ), 0 );
	createflag( ( -246.347, 1693.47, 52.625 ), ( 1428.69, -1261.09, -135.875 ), 0, 0 );
	createflag( ( 1034.87, -595.899, -135.875 ), ( 548.833, 3233.1, -63.875 ), 0, 0 );
	createmysterybox( ( 752.359, 2925.92, 72.125 ), ( 0, 180, 0 ), 900 );
	createwall( ( 359.738, 237.55, 71.9095 ), ( 359.23, 362.369, 166.005 ), 0 );
	createmysterybox( ( 434.641, 441.279, 72.125 ), ( 0, 180, 0 ), 900 );
	createflag( ( 723.398, 527.79, 72.125 ), ( 777.788, 4085.92, -139.875 ), 0, 0 );

}

drone()
{
	level thread removeskybarrier();
	createdoor( ( -790, 1665, 135 ), ( -924, 1665, 135 ), 3, ( 90, 0, 90 ), 3, 2, 35, 160 );
	createobject( "p6_door_automatic_mp_drone", ( 682, 760, 298 ), ( 0, 0, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 682, 660, 298 ), ( 0, 0, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 682, 560, 298 ), ( 0, 0, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 682, 460, 298 ), ( 0, 0, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 682, 360, 298 ), ( 0, 0, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 682, 260, 298 ), ( 0, 0, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 682, 160, 298 ), ( 0, 0, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 682, 60, 298 ), ( 0, 0, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 682, -40, 298 ), ( 0, 0, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 682, -140, 298 ), ( 0, 0, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 682, -240, 298 ), ( 0, 0, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 682, -340, 298 ), ( 0, 0, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 682, -440, 298 ), ( 0, 0, 103 ) );
	createobject( "p6_door_automatic_mp_drone", ( 682, -540, 278 ), ( 0, 0, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 682, -640, 275 ), ( 0, 0, 115 ) );
	createobject( "p6_door_automatic_mp_drone", ( 525, 700, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 425, 700, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 325, 700, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 225, 700, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 728, 700, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 828, 700, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 928, 700, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 928, 800, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 928, 900, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 928, 1000, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 928, 1100, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 928, 1200, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 928, 1300, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 928, 1400, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 928, 1500, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 928, 1600, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 828, 1600, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 728, 1600, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 628, 1600, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 628, 1700, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 628, 1800, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 628, 1900, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( 628, 2000, 298 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( -873, 561, 295 ), ( 0, 90, 115 ) );
	createobject( "p6_door_automatic_mp_drone", ( -973, 561, 297 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( -1073, 561, 297 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( -1173, 561, 297 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( -1173, 661, 297 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( -1273, 661, 297 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( -1373, 661, 297 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( -1473, 661, 297 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( -1573, 661, 297 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( -297, 982, 292 ), ( 0, 0, 0 ) );
	createobject( "p6_door_automatic_mp_drone", ( -301, 617, 264 ), ( 0, 0, 0 ) );
	createobject( "p6_door_automatic_mp_drone", ( 69, 912, 305 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( -31, 912, 305 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( -131, 912, 305 ), ( 0, 90, 90 ) );
	createobject( "p6_door_automatic_mp_drone", ( -231, 912, 305 ), ( 0, 90, 90 ) );
	createflag( ( -329.68, 8431.06, 322.672 ), ( -33.8727, -931.003, -39.875 ), 0, 0 );
	createflag( ( -329.68, 8431.06, 322.672 ), ( -33.8727, -931.003, -39.875 ), 0, 0 );
	createflag( ( 998.876, 3702.04, 298.218 ), ( 585.0149, 7178.51, 306.672 ), 0, 1 );
	createmysterybox( ( 434.989, -777.067, 240.125 ), ( 0, 180, 0 ), 150 );
	createwall( ( 464.431, 6926.81, 360.676 ), ( 849.875, 7100.98, 320.511 ) );
	createwall( ( 240.72, 7671.27, 306.672 ), ( 418.682, 7745.64, 397.672 ) );
	createwall( ( -50.7627, 8402.28, 306.672 ), ( 68.1149, 8509.7, 420.672 ) );
	createwall( ( -158.503, 8321.72, 306.672 ), ( -293.008, 8235.62, 420.672 ) );
	createwall( ( -448.359, -636.762, 239.702 ), ( -24.413, -666.683, 280.125 ) );
	createwall( ( -12.6804, -1502.63, 50.3447 ), ( -9.80337, -1565.91, 170.863 ) );
	createramp( ( -254.393, 8267.81, 417.825 ), ( 57.0122, 8502.17, 417.825 ) );
	createramp( ( -295.4, 8313.46, 417.825 ), ( 12.4179, 8562.77, 417.825 ) );
	createramp( ( -284.103, 8370.66, 428.526 ), ( -481.152, 8588.01, 455.653 ) );
	createramp( ( -199.233, 8693.32, 320.504 ), ( -71.9255, 8556.26, 419.866 ) );
	createramp( ( -258.517, 8859.44, 451.811 ), ( -547.972, 8584.76, 451.811 ) );
	createdoor( ( -97.5456, 8358.69, 410.011 ), ( -105.688, 8355.64, 312.672 ), 5, ( 90, 125, 0 ), 4, 2, 25, 80 );
	createdoor( ( 851.847, -1002.64, 240.125 ), ( 1005.49, -1001.51, 240.125 ), 5, ( 90, 90, 0 ), 4, 2, 25, 80 );
	createelevator( ( -498.157, -868.63, -15.1372 ), ( -498.157, -868.63, 250.043 ), 3, 2 );

}

carrier()
{
	level thread removeskybarrier();
	createwall( ( -2484.02, 1454.88, -36.9663 ), ( -2494.62, 1037.86, -67.875 ) );
	createdoor( ( -2497.21, 1125.37, -67.875 ), ( -2497.95, 968.823, -67.875 ), 3, ( 90, 90, 90 ), 7, 3, 30, 80 );
	createflag( ( -3007.86, 1401.45, -67.875 ), ( -6279.72, 482.6, -179.875 ), 0, 0 );
	createflag( ( -3722.25, 863.286, -40.875 ), ( -2120.28, 1396.52, -67.875 ), 1, 0 );
	createwall( ( -6289.36, 75.2229, -180.711 ), ( -6099.52, 72.9107, -179.875 ) );
	createwall( ( -6288.53, 72.5659, -154.836 ), ( -6124.77, 71.9364, -155.103 ) );
	createwall( ( -6129.9, 71.2682, -130.734 ), ( -6289.36, 74.0885, -128.961 ) );
	createdoor( ( -6051.35, -38.2957, -179.875 ), ( -6055.98, 73.5169, -179.875 ), 3, ( 90, 90, 0 ), 5, 3, 20, 80 );
	createflag( ( -6272.5, -568.581, -179.875 ), ( -6178.2, -984.667, 44.125 ), 0, 0 );
	createzipline( ( -4943.38, -2016.18, -75.875 ), ( -5881.25, -17879.1, -305.853 ), 6, 1 );
	creategrid( ( -5831.09, -17980.4, -310.841 ), ( -5944.11, -18617.8, -299.995 ) );
	creategrid( ( -5412.95, -18667.8, -207.327 ), ( -5331.11, -18272, -198.119 ) );
	createramp( ( -5851.56, -18527, -308.273 ), ( -5416.95, -18520.6, -183.835 ) );
	createdoor( ( -5945.75, -18527.8, -308.273 ), ( -5763.73, -18525.8, -264.265 ), 3, ( 90, 90, 90 ), 4, 2, 20, 80 );
	createzipline( ( -5328.71, -18196.5, -215.099 ), ( -557.016, -1731.2, -187.363 ), 6, 1 );
	createzipline( ( 371.516, -1535.27, -267.875 ), ( -2193.34, 873.727, -67.875 ), 4, 0 );
	createwall( ( -193.788, -1649.19, -237.952 ), ( -186.651, -1064.97, -267.875 ) );
	createdoor( ( -153.206, -1163.58, -267.875 ), ( -186.277, -997.394, -267.875 ), 3, ( 90, 90, 90 ), 7, 2, 20, 80 );
	createwall( ( -193.248, -1696.87, -197.556 ), ( -186.129, -1094.37, -193.463 ) );

}

overflow()
{
	level thread removeskybarrier();
	createflag( ( -1564.1, 1188.38, 0.125 ), ( -1777.66, 1196.92, -1.8885 ), 0, 1 );
	createflag( ( -1049.65, -2138.94, -39.875 ), ( -1119.64, -2128.16, -21.7191 ), 0, 1 );
	createflag( ( 16.4104, -831.731, 128.125 ), ( 251.519, -1892.6, -23.875 ), 0, 1 );
	createflag( ( 1066.41, -1418.58, -5.11152 ), ( 1062.38, -1485.99, -4.49046 ), 1, 0 );
	createflag( ( 632.938, -1903.92, -7.875 ), ( 113.997, -1892.44, -37.0533 ), 1, 0 );
	createflag( ( -1676.28, -1408.36, -51.6948 ), ( -756.095, -1751.64, 96.125 ), 1, 0 );
	createramp( ( -500.395, -2049.73, 111.901 ), ( -499.486, -2227.05, 94.4188 ), 1 );
	createramp( ( -389.974, -2066.03, 100.752 ), ( -88.4026, -2076.38, 107.007 ), 1 );
	createramp( ( -84.5812, -2027.81, 121.268 ), ( -98.7499, -1943.64, 125.401 ) );
	createdoor( ( -549.832, -1967.82, -39.875 ), ( -499.93, -2161.79, -39.7562 ), 3, ( 90, 0, 0 ), 4, 3, 30, 80 );
	createmysterybox( ( -736.528, -1975.73, -39.875 ), ( 0, 180, 0 ), 850 );
	createelevator( ( -631.377, -1927.64, -39.875 ), ( -643.244, -1919.97, 95.0766 ), 1, 2 );
	createwall( ( -1035.03, -2263.64, -31.875 ), ( -1045.11, -3161.67, 44.5441 ) );
	createwall( ( -1119.64, -2241.99, -30.1431 ), ( -1521.64, -2263.85, 7.92361 ) );
	createwall( ( -1106.19, -2242.3, 59.6088 ), ( -1493.83, -2250.6, 75.3235 ) );
	createwall( ( -820.08, -2242.92, 96.125 ), ( -828.904, -2240.7, 179.436 ) );
	createdoor( ( -1588.32, -2148.87, -31.875 ), ( -1593.92, -2261.51, -31.875 ), 2, ( 90, 0, 90 ), 6, 2, 30, 80 );

}

slums()
{
	level thread removeskybarrier();
	createmysterybox( ( 1441, -895, 622 ), ( 0, 90, 0 ), 120 );
	createmysterybox( ( 1571, -895, 622 ), ( 0, 90, 0 ), 120 );
	createmysterybox( ( -2105, -1028, 560 ), ( 0, 0, 0 ), 100 );
	createobject( "p_glo_corrugated_metal1", ( 2300, -1380, 550 ), ( 0, 90, 0 ) );
	createcustomdoor( "com_pallet_2", ( 2000, -1639, 510 ), ( 2303, -1505, 510 ), 2, ( 90, 0, 0 ), 6, 2, 50, 80 );
	createdoor( ( -2640, -917, 524 ), ( -2655, -522, 527 ), 2, ( 90, 178, 0 ), 6, 2, 35, 80 );
	createdoor( ( -2042, -1568, 460 ), ( -2313, -1291, 489 ), 2, ( 90, 90, 0 ), 6, 2, 35, 80 );
	createflag( ( 195, -824, 552 ), ( 2680, -1760, 490 ), 0, 0 );
	createflag( ( 196, -555, 552 ), ( 2692, -1218, 510 ), 0, 0 );
	createflag( ( 1963, -1082, 620 ), ( -3000, -612, 526 ), 0, 1 );
	createflag( ( -2060, -1752, 456 ), ( 793, -1575, 552 ), 0, 0 );
	createzipline( ( 1420, -1514, 500 ), ( 1457, -1308, 620 ), 1, 1 );
	createobject( "collision_clip_512x512x10", ( 2750, -1306, 504 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_gaz_tigr_destruct", ( 2735, -1062, 507 ), ( 0, 180, 0 ) );
	createobject( "veh_t6_v_van_whole_red", ( 2873, -1800, 504 ), ( 0, 18, 0 ) );
	createobject( "veh_t6_v_van_whole_red", ( 2722, -1848, 495 ), ( 0, 18, 0 ) );
	createobject( "collision_clip_512x512x10", ( 2710, -1545, 504 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( 2611, -1229, 504 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( 2870, -1210, 504 ), ( 0, 102, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( 2905, -1400, 504 ), ( 0, 102, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( 2938, -1600, 504 ), ( 0, 102, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( 2620, -1823, 546 ), ( 0, -90, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( 2480, -1682, 550 ), ( 0, 180, 0 ) );
	createobject( "t6_wpn_supply_drop_ally", ( 2317, -1702, 548 ), ( 0, -90, 0 ) );
	createobject( "p_glo_corrugated_metal1", ( 2300, -1630, 550 ), ( 0, 90, 0 ) );
	createobject( "p_glo_corrugated_metal1", ( 1313, -1512, 550 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_128x128x10", ( 2300, -1650, 550 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_128x128x10", ( 2300, -1360, 550 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( 2176, -1660, 550 ), ( 0, 180, 0 ) );
	createobject( "t6_wpn_supply_drop_ally", ( 2014, -1691, 548 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_512x512x10", ( 2355, -1355, 550 ), ( 0, 180, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( 2000, -1353, 550 ), ( 0, 180, 0 ) );
	createobject( "collision_clip_wall_512x512x10", ( 1751, -1725, 550 ), ( 0, 180, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( 1998, -1192, 620 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_512x512x10", ( 2210, -1505, 504 ), ( 0, 180, 0 ) );
	createobject( "collision_clip_512x512x10", ( 1690, -1505, 504 ), ( 0, 180, 0 ) );
	createobject( "p_glo_corrugated_metal1", ( 1528, -1715, 550 ), ( 0, 0, 0 ) );
	createobject( "veh_t6_v_van_whole_red", ( -2833, -652, 520 ), ( 0, -10, 0 ) );
	createobject( "veh_t6_v_van_whole_red", ( -2700, -673, 520 ), ( 0, 170, 0 ) );
	createobject( "veh_iw_gaz_tigr_destruct", ( -3030, -695, 515 ), ( 0, 180, 0 ) );
	createobject( "p_glo_corrugated_metal1", ( -3065, -432, 558 ), ( 0, 0, 0 ) );
	createobject( "t6_wpn_supply_drop_ally", ( -3070, -392, 568 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -3094, -555, 550 ), ( 0, -90, 0 ) );
	createobject( "veh_iw_gaz_tigr_destruct", ( -2355, -475, 534 ), ( -10, 80, 0 ) );
	createobject( "veh_iw_gaz_tigr_destruct", ( -2272, -618, 515 ), ( 0, 0, 0 ) );
	createobject( "veh_t6_v_van_whole_blue", ( -2111, -713, 520 ), ( 0, 0, 0 ) );
	createobject( "veh_t6_civ_smallwagon_whole_green", ( -2135, -1028, 495 ), ( 0, 180, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -2635, -834, 550 ), ( 0, -100, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -2712, -1091, 550 ), ( 0, -100, 0 ) );
	createobject( "veh_t6_v_van_whole_blue", ( -2380, -1265, 480 ), ( 188, -90, 0 ) );
	createobject( "veh_t6_v_van_whole_red", ( -2512, -1235, 490 ), ( -5, -166, 0 ) );
	createobject( "veh_t6_v_van_whole_red", ( -2641, -1262, 505 ), ( 10, 13, 0 ) );
	createobject( "veh_t6_v_van_whole_red", ( -2466, -1340, 465 ), ( 0, -90, 0 ) );
	createobject( "p_glo_corrugated_metal1", ( -2358, -1539, 505 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_128x128x10", ( -2405, -1539, 550 ), ( 0, 0, 0 ) );
	createobject( "p_glo_corrugated_metal1", ( -2191, -1490, 490 ), ( 90, 90, 0 ) );
	createobject( "p_glo_corrugated_metal1", ( -2191, -1490, 528 ), ( 90, 90, 0 ) );
	createobject( "t6_wpn_supply_drop_ally", ( -2162, -1487, 490 ), ( 0, 0, 0 ) );
	createobject( "t6_wpn_supply_drop_ally", ( -2162, -1487, 520 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -2062, -1544, 550 ), ( 0, 180, 0 ) );
	createobject( "veh_t6_v_van_whole_blue", ( -2380, -1771, 460 ), ( 0, -90, 0 ) );
	createobject( "veh_t6_v_van_whole_blue", ( -2262, -1840, 460 ), ( 0, 0, 0 ) );
	createobject( "veh_t6_v_van_whole_blue", ( -2142, -1840, 460 ), ( 0, 0, 0 ) );
	createobject( "veh_t6_v_van_whole_blue", ( -2020, -1840, 460 ), ( 0, 0, 0 ) );
	createobject( "veh_t6_v_van_whole_blue", ( -1970, -1765, 460 ), ( 0, 90, 0 ) );
	createobject( "veh_t6_v_van_whole_blue", ( -1970, -1625, 460 ), ( 0, 90, 0 ) );
	wait 80;
	playfx( level._effect[ "fx_mp_slums_vista_smoke"], ( 2760, -1240, -99 ) );
	playfx( level._effect[ "fx_mp_slums_vista_smoke"], ( 2760, -1670, -99 ) );

}

turbine()
{
	level thread removeskybarrier();
	createflag( ( -386.575, -2263.15, 156.848 ), ( -473, -2476, 164 ), 0, 0 );
	createflag( ( -1352.49, -4001.75, 609.834 ), ( -1938.15, -4275.27, 750.011 ), 0, 0 );
	creategrid( ( -1861.66, -4246.43, 734.136 ), ( -2012.95, -4416.41, 734.136 ), 90, 0 );
	createramp( ( -2236.18, -4311.71, 677.744 ), ( -2236.18, -4311.71, 677.744 ), 0 );
	createramp( ( -2243.08, -4451.6, 659.177 ), ( -2243.08, -4451.6, 659.177 ), 0 );
	createzipline( ( -2434.09, -4579.86, 556.435 ), ( -2851.76, -4288.05, 531.58 ), 1, 0 );
	createzipline( ( -2439.19, -4259.27, 597.587 ), ( -2763.02, -4227.9, 531.58 ), 1, 0 );
	creategrid( ( -2748.19, -3755.66, 515.705 ), ( -2935.19, -4292.38, 515.705 ), 90, 0 );
	createramp( ( -2748.19, -4092.71, 600 ), ( -2854.94, -4091.9, 600 ), 0 );
	createramp( ( -2748.19, -4092.71, 580 ), ( -2854.94, -4091.9, 580 ), 0 );
	createramp( ( -2748.19, -4092.71, 555 ), ( -2854.94, -4091.9, 555 ), 0 );
	createdoor( ( -2912.01, -3965.02, 531.58 ), ( -2912.01, -4091.27, 531.58 ), 3, ( 90, 0, 90 ), 2, 2, 40, 60 );
	createflag( ( -2911.24, -3768.26, 531.58 ), ( 1658.4, 2425.54, 210.125 ), 0, 0 );
	createflag( ( -1145.08, 3310.27, 268.803 ), ( -1161.82, 3437.53, 264.224 ), 0, 1 );

}

raid()
{
	level thread removeskybarrier();
	createzipline( ( 577.084, 2736.79, 148.125 ), ( 999.676, 2976.02, 272.125 ), 1, 1 );
	createzipline( ( 1947.91, 2872.71, 56.125 ), ( 1374.02, 3156.56, 288.125 ), 1, 1 );
	createelevator( ( 1672.86, 2839.19, 303.623 ), ( 1672.86, 2839.19, 433.727 ), 1, 1 );
	createelevator( ( 1749.45, 2567.67, 256.125 ), ( 1749.45, 2567.67, 434.125 ), 1, 1 );
	createmysterybox( ( 1320.74, 2731.36, 424.125 ), ( 0, 80, 0 ), 150 );
	createflag( ( 1294.83, 3252.07, 288.125 ), ( 2004, 3770.73, 284.125 ), 0, 1 );
	createzipline( ( 2464.17, 3405.66, 284.125 ), ( 1987.98, 3407.57, 284.125 ), 1, 1 );

}

aftermath()
{
	level thread removeskybarrier();
	createwall( ( -1690, -132, -265 ), ( -1690, -162, -140 ), 1 );
	createwall( ( -2098, 215, -200 ), ( -2098, 230, -90 ), 1 );
	createwall( ( -650, -592, -260 ), ( -580, -592, -140 ), 1 );
	createflag( ( -1885, -209, -260 ), ( -860, -1228, -268 ), 0, 0 );
	createflag( ( 1173, -2152, -44 ), ( -694, -1831, 115 ), 0, 0 );
	createflag( ( -3447, -1690, -207 ), ( -510, -1200, 221 ), 0, 0 );
	createflag( ( -3034, -3249, 294 ), ( -1190, 5360, -263 ), 0, 0 );
	createdoor( ( -500, 280, -44 ), ( -300, 280, -44 ), 3, ( 90, 90, 0 ), 5, 2, 30, 60 );
	createdoor( ( -245, -1790, -44 ), ( -245, -1610, -44 ), 3, ( 90, 0, 0 ), 5, 2, 20, 60 );
	createdoor( ( -3700, -3198, -207 ), ( -3450, -3198, -207 ), 3, ( 90, 90, 0 ), 8, 2, 30, 60 );
	createzipline( ( 0, -1990, -268 ), ( -768, -1990, -44 ), 2, 1 );
	createmysterybox( ( -2033, 31, -60 ), ( 0, 90, 0 ), 900 );
	createmysterybox( ( -3077, -3967, -207 ), ( 0, 90, 0 ), 900 );
	createobject( "veh_iw_civ_firetruck", ( -1973, 534, -142 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -1602, 560, -203 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -1476, -40, -268 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -1807, 709, -220 ), ( 35, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -1232, -65, -262 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -1135, -65, -262 ), ( 325, 0, 0 ) );
	createobject( "veh_iw_civ_suv_whole_red", ( -1306, -368, -190 ), ( 0, 113, 0 ) );
	createobject( "veh_iw_civ_ambulance_whole", ( -1514, 409, -211 ), ( 0, 130, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -100, -1900, -268 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( 100, -1900, -268 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( 0, -2140, -268 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -580, -1738, -44 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -907, -1294, -44 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -535, -1540, -44 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -907, -880, -44 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -530, -880, -44 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -317, -2137, -44 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -317, -1877, -44 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -907, -2300, -44 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -485, -2300, -44 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -100, -2300, -44 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( 300, -2300, -44 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( 700, -2300, -44 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( 1100, -2300, -44 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( 1280, -2100, -44 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( 1280, -1700, -44 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_suv_whole_black", ( -588, -1734, 115 ), ( 0, 135, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -207, -1521, 115 ), ( 0, 0, 0 ) );
	createobject( "veh_t6_police_car_destructible", ( 347, -1403, 115 ), ( 0, 0, 0 ) );
	createobject( "veh_t6_police_car_destructible", ( 770, -1384, 115 ), ( 0, 130, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( 471, -803, 115 ), ( 0, 20, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( 379, -119, 115 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_suv_whole_beige", ( 174, -450, 115 ), ( 0, 100, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -183, -230, 40 ), ( 35, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -186, -555, 115 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -186, -905, 115 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -186, -1050, 115 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -412, -1200, 115 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -825, -1200, 115 ), ( 0, 0, 0 ) );
	createfiretruckelevator( ( -1130, -1200, 97 ), ( -3386, -1200, 97 ), ( 0, 90, 0 ), 7.5, 7 );
	createfiretruckelevator( ( -1460, -1200, 97 ), ( -3694, -1200, 97 ), ( 0, 90, 0 ), 7.5, 7 );
	createfiretruckelevator( ( -1284, -1000, 97 ), ( -3540, -1000, 97 ), ( 0, 0, 0 ), 7.5, 7 );
	createfiretruckelevator( ( -1284, -1200, 115 ), ( -3540, -1200, 115 ), ( 0, 0, 180 ), 7.5, 7 );
	createfiretruckelevator( ( -1284, -1100, 115 ), ( -3540, -1100, 115 ), ( 0, 0, 180 ), 7.5, 7 );
	createfiretruckelevator( ( -1284, -1300, 115 ), ( -3540, -1300, 115 ), ( 0, 0, 180 ), 7.5, 7 );
	createfiretruckelevator( ( -3100, -1500, 115 ), ( -3900, -1500, 115 ), ( 0, 0, 180 ), 6, 0.1 );
	createfiretruckelevator( ( -3100, -1900, 115 ), ( -3900, -1900, 115 ), ( 0, 90, 180 ), 7.5, 0.5 );
	createfiretruckelevator( ( -3100, -2300, 115 ), ( -3900, -2300, 115 ), ( 0, 90, 180 ), 6, 0.5 );
	createfiretruckelevator( ( -3100, -2700, 115 ), ( -3900, -2700, 115 ), ( 0, 0, 180 ), 5, 0.3 );
	createfiretruckelevator( ( -3100, -2850, 115 ), ( -3900, -2850, 115 ), ( 0, 0, 180 ), 3, 0.2 );
	createfiretruckelevator( ( -3500, -2950, 97 ), ( -3500, -2950, -180 ), ( 0, 0, 180 ), 3, 0.5 );
	createobject( "veh_iw_civ_firetruck", ( -3100, -2850, -207 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -2850, -207 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3000, -207 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3000, -207 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3500, -2850, -207 ), ( 0, 0, 0 ) );
	createfiretruckelevator( ( -3450, -3950, -180 ), ( -3450, -3950, 290 ), ( 0, 0, 180 ), 4, 2 );
	createobject( "veh_iw_civ_firetruck", ( -3600, -3100, -5 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3600, -3200, -5 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3700, -3200, -5 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3800, -3200, -5 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3200, -5 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3300, -3100, -5 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3200, -3200, -5 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3300, -3200, -5 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3200, -3200, -5 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3100, -3200, -5 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3200, -5 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3200, -5 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3300, -5 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3400, -5 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3500, -5 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3600, -5 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3700, -5 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3800, -5 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3900, -5 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -4000, -5 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3200, -5 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3300, -5 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3400, -5 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3500, -5 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3600, -5 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3700, -5 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3800, -5 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3900, -5 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -4000, -5 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3600, -4000, -5 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3700, -4000, -5 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3800, -4000, -5 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -4000, -5 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3500, -4000, -5 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3400, -4000, -5 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3300, -4000, -5 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3200, -4000, -5 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3100, -4000, -5 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -4000, -5 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3600, -3100, 395 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3600, -3200, 395 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3700, -3200, 395 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3800, -3200, 395 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3200, 395 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3300, -3100, 395 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3200, -3200, 395 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3300, -3200, 395 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3200, -3200, 395 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3100, -3200, 395 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3200, 395 ), ( 90, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3200, 395 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3300, 395 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3400, 395 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3500, 395 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3600, 395 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3700, 395 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3800, 395 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3900, 395 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -4000, 395 ), ( 90, 180, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3200, 395 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3300, 395 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3400, 395 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3500, 395 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3600, 395 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3700, 395 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3800, 395 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3900, 395 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -4000, 395 ), ( 90, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3600, -4000, 395 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3700, -4000, 395 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3800, -4000, 395 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -4000, 395 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3500, -4000, 395 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3400, -4000, 395 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3300, -4000, 395 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3200, -4000, 395 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3100, -4000, 395 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -4000, 395 ), ( 90, 270, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3600, -3400, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3700, -3400, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3800, -3400, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3400, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3200, -3400, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3300, -3400, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3200, -3400, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3100, -3400, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3400, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3600, -3800, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3700, -3800, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3800, -3800, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3900, -3800, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3200, -3800, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3300, -3800, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3200, -3800, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3100, -3800, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3000, -3800, 180 ), ( 0, 90, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3400, -3270, 180 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3400, -3370, 180 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3400, -3470, 180 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3400, -3570, 180 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3400, -3100, -120 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3400, -3100, -20 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3400, -3100, 100 ), ( 0, 0, 0 ) );
	createobject( "veh_iw_civ_firetruck", ( -3454, -3177, 140 ), ( 0, 0, 0 ) );

}

cargo()
{
	level thread removeskybarrier();
	orangecontainer( ( -2025, 2018, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -2375, 2018, -195 ), ( 0, 90, 0 ) );
	orangecontainer( ( -2725, 2018, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -3075, 2018, -195 ), ( 0, 90, 0 ) );
	orangecontainer( ( -3425, 2018, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -3775, 2018, -195 ), ( 0, 90, 0 ) );
	orangecontainer( ( -4125, 2018, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 2018, -195 ), ( 0, 90, 0 ) );
	orangecontainer( ( -4590, 1780, -195 ), ( 0, 0, 0 ) );
	bluecontainer( ( -4590, 1430, -195 ), ( 0, 0, 0 ) );
	orangecontainer( ( -4590, 1080, -195 ), ( 0, 0, 0 ) );
	bluecontainer( ( -4590, 730, -195 ), ( 0, 0, 0 ) );
	orangecontainer( ( -4590, 380, -195 ), ( 0, 0, 0 ) );
	bluecontainer( ( -4590, 30, -195 ), ( 0, 0, 0 ) );
	orangecontainer( ( -4590, -320, -195 ), ( 0, 0, 0 ) );
	bluecontainer( ( -4590, -670, -195 ), ( 0, 0, 0 ) );
	orangecontainer( ( -4590, -1020, -195 ), ( 0, 0, 0 ) );
	bluecontainer( ( -4590, -1370, -195 ), ( 0, 0, 0 ) );
	orangecontainer( ( -4590, -1720, -195 ), ( 0, 0, 0 ) );
	bluecontainer( ( -4475, -1970, -195 ), ( 0, 90, 0 ) );
	orangecontainer( ( -4125, -1970, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -3775, -1970, -195 ), ( 0, 90, 0 ) );
	orangecontainer( ( -3425, -1970, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -3075, -1970, -195 ), ( 0, 90, 0 ) );
	orangecontainer( ( -2725, -1970, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -2375, -1970, -195 ), ( 0, 90, 0 ) );
	orangecontainer( ( -2025, -1970, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -1675, -1970, -195 ), ( 0, 90, 0 ) );
	orangecontainer( ( -1325, -1970, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -975, -1970, -195 ), ( 0, 90, 0 ) );
	orangecontainer( ( -625, -1970, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -385, -1855, -195 ), ( 0, 0, 0 ) );
	orangecontainer( ( -385, -1505, -195 ), ( 0, 0, 0 ) );
	redcontainer( ( -4350, 380, -195 ), ( 0, 90, 0 ) );
	redcontainer( ( -4000, 380, -195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, -10, -65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 770, -65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, -10, -65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 770, -65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, -10, 195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 770, 195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, -10, 195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 770, 195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, -10, 325 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 770, 325 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, -10, 325 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 770, 325 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3763, 623, 65 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3763, 623, -65 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3763, 136, 65 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3763, 136, -65 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3763, 623, 195 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3763, 136, 195 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3763, 623, 325 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3763, 136, 325 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3193, 525, -65 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3193, 175, -65 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3193, 525, 195 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3193, 175, 195 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3193, 525, 325 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3193, 175, 325 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3193, 175, 65 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3193, 525, 65 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3323, 525, 65 ), ( 0, 0, 0 ) );
	whitecontainer( ( -3650, -10, 65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 120, 65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 250, 65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 380, 65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 510, 65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 770, 65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, -10, 65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 120, 65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 250, 65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 380, 65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 510, 65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 770, 65 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, -10, 455 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 120, 455 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 250, 455 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 380, 455 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 510, 455 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 640, 455 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 770, 455 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, -10, 455 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 120, 455 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 250, 455 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 380, 455 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 510, 455 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 640, 455 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 770, 455 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3420, 640, -25 ), ( 0, 90, -45 ) );
	whitecontainer( ( -3650, -10, -195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 120, -195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 250, -195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 380, -195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 510, -195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 640, -195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3650, 770, -195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, -10, -195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 120, -195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 250, -195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 380, -195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 510, -195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 640, -195 ), ( 0, 90, 0 ) );
	whitecontainer( ( -3300, 770, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -3980, 380, 155 ), ( 0, 90, 30 ) );
	bluecontainer( ( -4280, 380, 329 ), ( 0, 90, 30 ) );
	bluecontainer( ( -4545, 380, 402 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4895, 380, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, -270, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, -140, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, -10, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 120, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 120, 532 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 250, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 380, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 510, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 640, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 640, 532 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 770, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 900, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 1030, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, -270, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, -140, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, -10, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 120, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 120, 532 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 250, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 380, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 510, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 640, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 640, 532 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 770, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 900, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 1030, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, -270, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, -140, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, -10, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 120, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 250, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 380, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 510, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 640, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 770, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 900, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 1030, 402 ), ( 0, 90, 0 ) );
	redcontainer( ( -5138, 623, 532 ), ( 0, 0, 0 ) );
	redcontainer( ( -5138, 136, 532 ), ( 0, 0, 0 ) );
	redcontainer( ( -5138, 800, 532 ), ( 0, 0, 0 ) );
	redcontainer( ( -5138, -80, 532 ), ( 0, 0, 0 ) );
	redcontainer( ( -5245, -270, 532 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 1030, 532 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, -270, 532 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 1030, 532 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, -270, 532 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 1030, 532 ), ( 0, 90, 0 ) );
	redcontainer( ( -6058, -25, 532 ), ( 0, 0, 0 ) );
	redcontainer( ( -6058, 325, 532 ), ( 0, 0, 0 ) );
	redcontainer( ( -6058, 675, 532 ), ( 0, 0, 0 ) );
	redcontainer( ( -6058, 800, 532 ), ( 0, 0, 0 ) );
	redcontainer( ( -5245, -270, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, -140, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, -10, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 120, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 250, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 380, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 510, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 640, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 770, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 900, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5245, 1030, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, -270, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, -140, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, -10, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 120, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 250, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 380, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 510, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 640, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 770, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 900, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5595, 1030, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, -270, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, -140, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, -10, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 120, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 250, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 380, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 510, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 640, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 770, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 900, 662 ), ( 0, 90, 0 ) );
	redcontainer( ( -5945, 1030, 662 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 2018, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4345, 1888, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 2148, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 2018, 975 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 2148, -65 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 2148, 65 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 2148, 195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 2148, 325 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 2148, 455 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 2148, 585 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 2148, 715 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 2148, 845 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 2148, 975 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4345, 1888, -65 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 1888, 65 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 1888, 195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 1888, 325 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 1888, 455 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 1888, 585 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 1888, 715 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 1888, 845 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4475, 1888, 975 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2148, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2148, -65 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2148, 65 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2148, 195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2148, 325 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2148, 455 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2148, 585 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2148, 715 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2148, 845 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2148, 975 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2018, 65 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2018, 195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2018, 325 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2018, 455 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2018, 585 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2018, 715 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2018, 845 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 2018, 975 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 1888, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 1888, -65 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 1888, 65 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 1888, 195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 1888, 325 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 1888, 455 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 1888, 585 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 1888, 715 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 1888, 845 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4125, 1888, 975 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2148, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2148, -65 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2148, 65 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2148, 195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2148, 325 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2148, 455 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2148, 585 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2148, 715 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2148, 845 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2148, 975 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2018, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2018, -65 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2018, 65 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2018, 195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2018, 325 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2018, 455 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2018, 585 ), ( 0, 90, 0 ) );
	redcontainer( ( -4825, 2018, 715 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 2018, 975 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 1888, -195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 1888, -65 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 1888, 65 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 1888, 195 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 1888, 325 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 1888, 455 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 1888, 585 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 1888, 715 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 1888, 845 ), ( 0, 90, 0 ) );
	bluecontainer( ( -4825, 1888, 975 ), ( 0, 90, 0 ) );
	createorangeelevator( ( -4475, 2018, -195 ), ( -4475, 2018, 715 ), ( 0, 90, 0 ), 4, 2 );
	redcontainer( ( -5175, 2018, 715 ), ( 0, 90, 0 ) );
	redcontainer( ( -5175, 2148, 715 ), ( 0, 90, 0 ) );
	redcontainer( ( -5175, 2278, 715 ), ( 0, 90, 0 ) );
	redcontainer( ( -4830, 2278, 773 ), ( 0, 90, -20 ) );
	redcontainer( ( -4607.5, 2278, 853.5 ), ( 0, 90, -20 ) );
	redcontainer( ( -4423, 2278, 922 ), ( 0, 90, -20 ) );
	redcontainer( ( -4125, 2278, 975 ), ( 0, 90, 0 ) );
	redcontainer( ( -5175, 1888, 715 ), ( 0, 90, 0 ) );
	redcontainer( ( -5175, 1758, 715 ), ( 0, 90, 0 ) );
	redcontainer( ( -4830, 1758, 773 ), ( 0, 90, -20 ) );
	redcontainer( ( -4607.5, 1758, 853.5 ), ( 0, 90, -20 ) );
	redcontainer( ( -4423, 1758, 922 ), ( 0, 90, -20 ) );
	redcontainer( ( -4125, 1758, 975 ), ( 0, 90, 0 ) );
	createdoor( ( -3713.01, 264.01, -56.01 ), ( -3719.01, 382.01, -56.01 ), 1.5, ( 90, 180, 0 ), 3, 2, 25, 80 );
	createdoor( ( -3534.01, 513.01, 190.01 ), ( -3534.01, 638.01, 190.01 ), 1.5, ( 0, 180, 0 ), 3, 3, 30, 105 );
	createzipline( ( -5102.01, 380.01, 798.125 ), ( -3779.01, 380.01, 591.125 ), 1.2, 0 );
	createzipline( ( -2123.01, 2032.01, -58.125 ), ( -4583.01, 1227.01, -58.125 ), 1.2, 1 );
	createzipline( ( -410.01, -1977.01, -58.125 ), ( -4586.01, -1557.01, -58.125 ), 1.2, 1 );
	createmysterybox( ( -3324.407, 647.366, -58.125 ), ( 0, 90, 0 ), 900 );
	createflag( ( -5419.21, 949.8177, 538.6875 ), ( -5237.82, 2261.229, 851.125 ), 1, 0 );

}

standoff()
{
	level thread deathbarrier();
	createzipline( ( -915.487, 494.567, 112.125 ), ( -149.797, 286.336, 416.125 ), 2, 1 );
	createflag( ( -29.4653, 324.668, 406.869 ), ( -1004.61, -1211.63, 144.125 ), 0, 0 );
	createwall( ( -831.719, -1509.41, 130.51 ), ( -835.455, -1523.15, 206.446 ), 1 );
	createwall( ( -1028.11, -1057.7, 202.643 ), ( -994.003, -1046.86, 110.976 ), 1 );
	createwall( ( -1169.95, -1213.25, 182.213 ), ( -1173.61, -1228.18, 106.766 ), 1 );
	createdoor( ( -1329.37, -1336.49, 7.69385 ), ( -1180.27, -1348.45, 4.36679 ), 3, ( 90, 90, 0 ), 1, 2, 40, 80 );
	createdoor( ( -811.922, -1629.51, 0.00953701 ), ( -815.906, -1508.66, 8.125 ), 3, ( 90, 90, 90 ), 1, 2, 40, 80 );
	createmysterybox( ( -27.2538, 156.061, 443.871 ), ( 0, 180, 0 ), 150 );
	createmysterybox( ( -967.632, -1382.68, 8.125 ), ( 0, 180, 0 ), 150 );
	creategrid( ( 743.189, 2523.27, 289.298 ), ( 882.167, 2177.48, 326.079 ), ( 0, 90, 0 ), 0 );
	createramp( ( 1085.21, 2519.93, 295.332 ), ( 949.979, 1794.94, -43.8637 ), 0 );
	createramp( ( 738.284, 2503.53, 270.064 ), ( 522.259, 2044, -54.2939 ), 0 );
	createflag( ( 737.389, 1429.19, 7.63348 ), ( 953.528, 1753.16, 8.20063 ), 0, 1 );
	createflag( ( 618.747, 1441.06, 8.125 ), ( 506.189, 1922.5, 8.125 ), 0, 1 );
	createdoor( ( 934.783, 2541.61, 305.173 ), ( 1060.34, 2384.56, 254.385 ), 3, ( 90, 90, 0 ), 1, 2, 15, 80 );
	createdoor( ( 846.043, 2537.97, 305.173 ), ( 673.618, 2370.18, 201.95 ), 3, ( 90, 90, 0 ), 1, 2, 15, 80 );
	createmysterybox( ( 892.985, 2674.25, 305.173 ), ( 0, 90, 0 ), 150 );

}

plaza()
{
	level thread removeskybarrier();
	iprintln( "^2Map edit made by xTiibo" );
	self setperk( "specialty_fallheight" );
	createzipline( ( -16096, 2375, 2013 ), ( -16274, 2710, -63 ), 2, 0 );
	createdoor( ( -17916, 2047, 1808 ), ( -17722, 1798, 1808 ), 3, ( 90, -90, 0 ), 5, 2, 40, 60 );
	createdoor( ( -17915, 2205, 1930 ), ( -17758, 1982, 1925 ), 3, ( 90, 108, 0 ), 4, 2, 40, 60 );
	createdoor( ( -16847, 2169, 1808 ), ( -16847, 1935, 1808 ), 3, ( 90, 0, 0 ), 3, 2, 45, 60 );
	createmysterybox( ( -17588, 1790, 1940 ), ( 0, 0, 0 ), 900 );
	createmysterybox( ( -17828, 1790, 1940 ), ( 0, 0, 0 ), 900 );
	createmysterybox( ( -17575, 2420, 1815 ), ( 0, 90, 0 ), 900 );
	createmysterybox( ( -16778, 2494, 1815 ), ( 0, 90, 0 ), 900 );
	createflag( ( -17174, 2502, -160 ), ( -17400, -410, 3044 ), 0, 1 );
	createflag( ( -17363, 2004, 1920 ), ( -17507, 1906, 1808 ), 1, 0 );
	createflag( ( -17507, 1906, 1808 ), ( -16933, 1931, 1808 ), 1, 0 );
	createplazacarelevator( ( -16033, 1774, 1808 ), ( -16033, 1784, 2008 ), ( 180, 0, 0 ), 3, 2 );
	createobject( "veh_t6_civ_sportscar_whole_orange", ( -19374, 3841, 300 ), ( 165, 90, 0 ) );
	createobject( "mlv/p_test_karma_wings_lit", ( -22495, -924, 3470 ), ( 0, 17, 0 ) );
	createobject( "mlv/p_test_karma_right_interior", ( -12380, 6515, 1701 ), ( 0, 30, -180 ) );
	createobject( "veh_t6_civ_sportscar_whole_orange", ( -15871, -1063, 1830 ), ( 0, 180, 90 ) );
	createobject( "p6_nightclub_fountain_stairs", ( -17389, -140, 2933 ), ( 26, 90, 0 ) );
	createobject( "collision_clip_256x256x10", ( -17389, -147, 2933 ), ( 46, 90, 0 ) );
	createobject( "p6_nightclub_fountain_stairs", ( -17389, 80, 2710 ), ( 26, 90, 0 ) );
	createobject( "collision_clip_256x256x10", ( -17389, 73, 2710 ), ( 46, 90, 0 ) );
	createobject( "p6_nightclub_fountain_stairs", ( -17389, 300, 2487 ), ( 26, 90, 0 ) );
	createobject( "collision_clip_256x256x10", ( -17389, 293, 2487 ), ( 46, 90, 0 ) );
	createobject( "p6_nightclub_fountain_stairs", ( -17389, 520, 2264 ), ( 26, 90, 0 ) );
	createobject( "collision_clip_256x256x10", ( -17389, 513, 2264 ), ( 46, 90, 0 ) );
	createobject( "p6_nightclub_fountain_stairs", ( -17389, 740, 2041 ), ( 26, 90, 0 ) );
	createobject( "collision_clip_256x256x10", ( -17389, 733, 2041 ), ( 46, 90, 0 ) );
	createobject( "p6_nightclub_fountain_stairs", ( -17389, 960, 1818 ), ( 26, 90, 0 ) );
	createobject( "collision_clip_256x256x10", ( -17389, 953, 1818 ), ( 46, 90, 0 ) );
	createobject( "collision_clip_128x128x10", ( -17390, -15, 2803 ), ( 0, 0, -46 ) );
	createobject( "collision_clip_128x128x10", ( -17390, 205, 2581 ), ( 0, 0, -46 ) );
	createobject( "collision_clip_128x128x10", ( -17390, 425, 2361 ), ( 0, 0, -46 ) );
	createobject( "collision_clip_128x128x10", ( -17390, 645, 2141 ), ( 0, 0, -46 ) );
	createobject( "collision_clip_128x128x10", ( -17390, 865, 1918 ), ( 0, 0, -46 ) );
	createobject( "collision_clip_wall_512x512x10", ( -17478, 6, 2870 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_512x512x10", ( -17478, 518, 2425 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_512x512x10", ( -17478, 725, 2040 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_512x512x10", ( -17300, 6, 2870 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_512x512x10", ( -17300, 518, 2425 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_512x512x10", ( -17300, 725, 2040 ), ( 0, 90, 0 ) );
	createobject( "foliage_grass_flowerplants_squareclump", ( -17486, 1002, 1794 ), ( 0, 90, 0 ) );
	createobject( "foliage_grass_flowerplants_squareclump", ( -17446, 1002, 1794 ), ( 0, 90, 0 ) );
	createobject( "foliage_grass_flowerplants_squareclump", ( -17406, 1002, 1794 ), ( 0, 90, 0 ) );
	createobject( "foliage_grass_flowerplants_squareclump", ( -17366, 1002, 1794 ), ( 0, 90, 0 ) );
	createobject( "foliage_grass_flowerplants_squareclump", ( -17326, 1002, 1794 ), ( 0, 90, 0 ) );
	createobject( "iw_rooftop_ac_unit", ( -17454, -300, 3000 ), ( 0, 180, 0 ) );
	createobject( "iw_rooftop_ac_unit", ( -17392, -300, 3000 ), ( 0, 180, 0 ) );
	createobject( "iw_rooftop_ac_unit", ( -17328, -300, 3000 ), ( 0, 180, 0 ) );
	createobject( "iw_rooftop_ac_unit", ( -17454, -405, 3000 ), ( 0, 180, 0 ) );
	createobject( "iw_rooftop_ac_unit", ( -17392, -405, 3000 ), ( 0, 180, 0 ) );
	createobject( "iw_rooftop_ac_unit", ( -17328, -405, 3000 ), ( 0, 180, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -17393, -467, 3060 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -17305, -351, 3060 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -17495, -351, 3060 ), ( 0, 90, 0 ) );
	createobject( "p6_door_metal_maintenance_right", ( -17500, -190, 3050 ), ( 0, 0, 90 ) );
	createobject( "p6_door_metal_maintenance_right", ( -17250, -190, 3050 ), ( 0, 0, 90 ) );
	createobject( "p6_mall_arch_module", ( -17390, -245, 3050 ), ( 0, 180, 0 ) );
	createobject( "p6_mall_arch_module", ( -17390, -245, 3050 ), ( 0, 0, 0 ) );
	createobject( "p_cub_coral_rock_sml_02_caustic", ( -17119, 930, 1838 ), ( 0, 180, -90 ) );
	createobject( "collision_clip_wall_256x256x10", ( -17160, 992, 1808 ), ( 0, 180, 0 ) );
	createobject( "collision_clip_wall_128x128x10", ( -16975, 992, 1808 ), ( 0, 180, 0 ) );
	createobject( "p_cub_coral_rock_sml_02_caustic", ( -17670, 930, 1838 ), ( 0, 180, -90 ) );
	createobject( "collision_clip_wall_256x256x10", ( -17608, 992, 1808 ), ( 0, 180, 0 ) );
	createobject( "collision_clip_wall_128x128x10", ( -17790, 992, 1808 ), ( 0, 180, 0 ) );
	createobject( "p_cub_coral_rock_sml_02_caustic", ( -17915, 1118, 1838 ), ( 0, 90, -90 ) );
	createobject( "p_cub_coral_rock_sml_02_caustic", ( -17915, 1500, 1838 ), ( 0, 90, -90 ) );
	createobject( "collision_clip_wall_256x256x10", ( -17855, 1131, 1808 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -17855, 1387, 1808 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -17847, 1643, 1808 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -17834, 1865, 1790 ), ( 0, 82, 0 ) );
	createobject( "p_cub_coral_rock_sml_02_caustic", ( -16877, 1132, 1838 ), ( 0, 90, 90 ) );
	createobject( "p_cub_coral_rock_sml_02_caustic", ( -16877, 1500, 1838 ), ( 0, 90, 90 ) );
	createobject( "p_cub_coral_rock_sml_02_caustic", ( -16921, 1637, 1838 ), ( 0, 90, -90 ) );
	createobject( "collision_clip_wall_256x256x10", ( -16935, 1131, 1808 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -16935, 1400, 1808 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_128x128x10", ( -16935, 1554, 1838 ), ( 0, 90, 0 ) );
	createobject( "mlv/mp_nightclub_bush_vista_01", ( -17422, 1701, 1910 ), ( 0, 0, 0 ) );
	createobject( "p_cub_coral_rock_sml_02_caustic", ( -17103, 1644, 1838 ), ( 0, 0, -90 ) );
	createobject( "collision_clip_wall_256x256x10", ( -17060, 1582, 1808 ), ( 0, 0, 0 ) );
	createobject( "p_cub_coral_rock_sml_02_caustic", ( -17403, 1641, 1838 ), ( 0, 0, -90 ) );
	createobject( "collision_clip_wall_256x256x10", ( -17320, 1582, 1808 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_128x128x10", ( -17527, 1588, 1838 ), ( 0, 170, 0 ) );
	createobject( "p6_karma_shrub_clump_02", ( -17875, 1682, 1880 ), ( 0, 113, 0 ) );
	createobject( "p6_karma_shrub_clump_02", ( -17530, 1662, 1830 ), ( 0, 0, 0 ) );
	createobject( "p6_nightclub_planter", ( -17603, 1760, 1793 ), ( 0, -90, 0 ) );
	createobject( "p6_nightclub_planter", ( -17603, 1914, 1793 ), ( 0, -90, 0 ) );
	createobject( "p6_karma_shrub_clump_02", ( -17544, 1920, 1845 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -17591, 1728, 1808 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_128x128x10", ( -17591, 1920, 1855 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_128x128x10", ( -17531, 1983, 1855 ), ( 0, 0, 0 ) );
	createobject( "props_foliage_horsetail", ( -17607, 1900, 1898 ), ( 0, 0, 0 ) );
	createobject( "props_foliage_horsetail", ( -17607, 1970, 1898 ), ( 0, 0, 0 ) );
	createobject( "p6_nightclub_planter", ( -17840, 1769, 1793 ), ( 0, 82, 0 ) );
	createobject( "p6_nightclub_planter", ( -17825, 1910, 1793 ), ( 0, 82, 0 ) );
	createobject( "p6_karma_shrub_clump_02", ( -17876, 1940, 1845 ), ( 0, 82, 0 ) );
	createobject( "collision_clip_wall_128x128x10", ( -17883, 1987, 1850 ), ( 0, 172, 0 ) );
	createobject( "p6_metal_sculpture_base_03", ( -17727, 1798, 1889 ), ( 0, 5, 0 ) );
	createobject( "p6_mall_module_03_lit", ( -17541, 2083, 1808 ), ( 0, -90, 0 ) );
	createobject( "collision_clip_wall_512x512x10", ( -17521, 2264, 2050 ), ( 0, 90, 0 ) );
	createobject( "p6_mall_module_03_lit", ( -17541, 2268, 1808 ), ( 0, -90, 0 ) );
	createobject( "p6_mall_module_03_lit", ( -17541, 2453, 1808 ), ( 0, -90, 0 ) );
	createobject( "p6_mall_module_02_lit", ( -17624, 2548, 1808 ), ( 0, 0, 0 ) );
	createobject( "p6_mall_module_02_lit", ( -17807, 2548, 1808 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -17663, 2548, 1920 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_128x128x10", ( -17855, 2548, 1865 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_128x128x10", ( -17855, 2548, 1990 ), ( 0, 0, 0 ) );
	createobject( "p6_mall_module_03_lit", ( -17885, 2083, 1803 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_512x512x10", ( -17895, 2264, 2050 ), ( 0, 90, 0 ) );
	createobject( "p6_mall_module_03_lit", ( -17885, 2268, 1803 ), ( 0, 90, 0 ) );
	createobject( "p6_mall_module_03_lit", ( -17885, 2453, 1803 ), ( 0, 90, 0 ) );
	createobject( "mlv/mp_nightclub_bush_vista_01", ( -17885, 2150, 1950 ), ( 0, -90, 0 ) );
	createobject( "mlv/mp_nightclub_bush_vista_01", ( -17885, 2400, 1950 ), ( 0, -90, 0 ) );
	createobject( "mlv/mp_nightclub_bush_vista_01", ( -17531, 2170, 1950 ), ( 0, 90, 0 ) );
	createobject( "mlv/mp_nightclub_bush_vista_01", ( -17531, 2400, 1950 ), ( 0, 90, 0 ) );
	createobject( "mlv/mp_nightclub_bush_vista_01", ( -17712, 2561, 1950 ), ( 0, 0, 0 ) );
	createobject( "iw_rooftop_ac_unit", ( -17800, 2505, 1770 ), ( 0, -90, 22 ) );
	createobject( "iw_rooftop_ac_unit", ( -17707, 2505, 1806 ), ( 0, -90, 22 ) );
	createobject( "iw_rooftop_ac_unit", ( -17614, 2505, 1843 ), ( 0, -90, 22 ) );
	createobject( "iw_rooftop_ac_unit", ( -17558, 2505, 1856 ), ( 0, 0, 0 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17665, 1947, 1916 ), ( 0, 90, 0 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17665, 1947, 1916 ), ( 0, 90, 180 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17792, 1947, 1916 ), ( 0, 90, 0 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17792, 1947, 1916 ), ( 0, 90, 180 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17590, 2063, 1916 ), ( 0, 90, 0 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17590, 2063, 1916 ), ( 0, 90, 180 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17710, 2063, 1916 ), ( 0, 90, 0 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17710, 2063, 1916 ), ( 0, 90, 180 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17830, 2063, 1916 ), ( 0, 90, 0 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17830, 2063, 1916 ), ( 0, 90, 180 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17590, 2178, 1916 ), ( 0, 90, 0 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17590, 2178, 1916 ), ( 0, 90, 180 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17710, 2178, 1916 ), ( 0, 90, 0 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17710, 2178, 1916 ), ( 0, 90, 180 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17830, 2178, 1916 ), ( 0, 90, 0 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17830, 2178, 1916 ), ( 0, 90, 180 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17590, 2293, 1916 ), ( 0, 90, 0 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17590, 2293, 1916 ), ( 0, 90, 180 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17710, 2293, 1916 ), ( 0, 90, 0 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17710, 2293, 1916 ), ( 0, 90, 180 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17830, 2293, 1916 ), ( 0, 90, 0 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17830, 2293, 1916 ), ( 0, 90, 180 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17595, 2408, 1916 ), ( 0, 0, 0 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17595, 2408, 1916 ), ( 0, 0, 180 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17724, 2408, 1916 ), ( 0, 0, 0 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17724, 2408, 1916 ), ( 0, 0, 180 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17855, 2410, 1916 ), ( 0, 90, 0 ) );
	createobject( "mlv/p6_triangle_geo_floor", ( -17855, 2410, 1916 ), ( 0, 90, 180 ) );
	createobject( "collision_clip_512x512x10", ( -17676, 2204, 1915 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_256x256x10", ( -17700, 1818, 1915 ), ( 0, 90, 0 ) );
	createobject( "p6_mp_nightclub_jewelry_case_long", ( -17654, 1679, 1920 ), ( 0, -90, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -17720, 1688, 2018 ), ( 0, 0, 0 ) );
	createobject( "p6_mp_nightclub_jewelry_case_long", ( -17794, 1679, 1920 ), ( 0, -90, 0 ) );
	createobject( "mlv/p6_nightclub_aquarium", ( -17578, 1787, 1925 ), ( 0, -90, 0 ) );
	createobject( "p6_mannequin_female", ( -17594, 1840, 1925 ), ( 0, -60, 0 ) );
	createobject( "p6_mannequin_female", ( -17594, 1735, 1925 ), ( 0, -165, 0 ) );
	createobject( "collision_clip_wall_64x64x10", ( -17603, 1832, 1950 ), ( 0, 66, 0 ) );
	createobject( "collision_clip_wall_64x64x10", ( -17603, 1737, 1950 ), ( 0, -66, 0 ) );
	createobject( "collision_clip_wall_64x64x10", ( -17615, 1787, 1950 ), ( 0, 90, 0 ) );
	createobject( "mlv/p6_nightclub_aquarium", ( -17840, 1787, 1925 ), ( 0, 90, 0 ) );
	createobject( "p6_mannequin_female", ( -17822, 1735, 1925 ), ( 0, 105, 0 ) );
	createobject( "p6_mannequin_female", ( -17825, 1840, 1925 ), ( 0, 25, 0 ) );
	createobject( "collision_clip_wall_64x64x10", ( -17815, 1832, 1950 ), ( 0, 114, 0 ) );
	createobject( "collision_clip_wall_64x64x10", ( -17815, 1737, 1950 ), ( 0, -114, 0 ) );
	createobject( "collision_clip_wall_64x64x10", ( -17803, 1787, 1950 ), ( 0, 90, 0 ) );
	createobject( "p_pent_double_doors", ( -17856, 1943, 1923 ), ( 0, 108, 0 ) );
	createobject( "p_pent_double_doors", ( -17873, 1995, 1923 ), ( 0, 108, 0 ) );
	createobject( "mlv/p6_mp_nightclub_bar_counter", ( -17718, 1814, 1980 ), ( 0, 90, 0 ) );
	createobject( "p6_test_karma_holo_screen1_05", ( -17612, 1664, 1915 ), ( 0, -90, 0 ) );
	createobject( "p6_test_karma_holo_screen1_05", ( -17652, 1664, 1915 ), ( 0, -90, 0 ) );
	createobject( "p6_test_karma_holo_screen1_05", ( -17692, 1664, 1915 ), ( 0, -90, 0 ) );
	createobject( "p6_test_karma_holo_screen1_05", ( -17732, 1664, 1915 ), ( 0, -90, 0 ) );
	createobject( "p6_test_karma_holo_screen1_05", ( -17772, 1664, 1915 ), ( 0, -90, 0 ) );
	createobject( "p6_test_karma_holo_screen1_05", ( -17812, 1664, 1915 ), ( 0, -90, 0 ) );
	createobject( "p6_collosus_resort", ( -17712, 1636.5, 2020 ), ( 0, 0, 90 ) );
	createobject( "p6_rug_modern02", ( -17710, 1724, 2014 ), ( 0, -90, 0 ) );
	createobject( "p6_rug_modern02", ( -17710, 1850, 2014 ), ( 0, -90, 0 ) );
	createobject( "p6_rug_modern02", ( -17737, 1932, 2014 ), ( 0, -90, 0 ) );
	createobject( "p6_rug_modern02", ( -17530, 1932, 2014 ), ( 0, -90, 0 ) );
	createobject( "p6_rug_modern02", ( -17670, 1932, 1918 ), ( 0, -90, 0 ) );
	createobject( "p6_rug_modern02", ( -17485, 1932, 1923 ), ( 0, -90, 0 ) );
	createobject( "p6_abstract_art_03", ( -17514, 1867, 1954 ), ( 0, 90, 90 ) );
	createobject( "p6_abstract_art_03", ( -17514, 1867, 2010 ), ( 0, 90, 90 ) );
	createobject( "p6_abstract_art_03", ( -17425, 1867, 1954 ), ( 0, 90, 90 ) );
	createobject( "p6_abstract_art_03", ( -17425, 1867, 2010 ), ( 0, 90, 90 ) );
	createobject( "p6_nightclub_pillar", ( -17365, 1864, 1920 ), ( 0, -90, 0 ) );
	createobject( "p6_nightclub_pillar", ( -17365, 1858, 1920 ), ( 0, -90, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -17481, 1860, 1920 ), ( 0, 0, 0 ) );
	createobject( "p6_mall_kiosk", ( -17579, 2027, 1920 ), ( 0, 90, 0 ) );
	createobject( "p6_mall_kiosk", ( -17638, 2027, 1920 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_128x128x10", ( -17595, 2008, 1990 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_128x128x10", ( -17585, 2050, 1990 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_64x64x10", ( -17665, 2030, 1950 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_128x128x10", ( -17500, 1932, 1915 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_128x128x10", ( -17393, 1932, 1915 ), ( 0, 0, 0 ) );
	createobject( "mlv/p6_nightclub_aquarium", ( -17445, 2015, 1925 ), ( 0, 0, 0 ) );
	createobject( "p6_nightclub_fountain_stairs", ( -17191, 1932, 1854 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_128x128x10", ( -17256, 1932, 1885 ), ( 22, 0, 0 ) );
	createobject( "collision_clip_128x128x10", ( -17128, 1932, 1832 ), ( 22, 0, 0 ) );
	createobject( "collision_clip_wall_64x64x10", ( -17559, 1857, 1950 ), ( 0, -45, 0 ) );
	createobject( "collision_clip_wall_64x64x10", ( -17483, 1991, 1950 ), ( 0, -14, 0 ) );
	createobject( "collision_clip_wall_64x64x10", ( -17410, 1990, 1950 ), ( 0, 16, 0 ) );
	createobject( "p6_nightclub_planter", ( -17339, 1942, 2010 ), ( 0, 90, 0 ) );
	createobject( "p6_metal_sculpture_base_03", ( -17250, 1867, 1900 ), ( -14, 0, 90 ) );
	createobject( "p6_metal_sculpture_base_03", ( -16975, 1863, 1900 ), ( 14, 180, -90 ) );
	createobject( "collision_clip_wall_512x512x10", ( -17123, 1852, 1920 ), ( 0, 0, 0 ) );
	createobject( "p6_metal_sculpture_base_03", ( -17250, 2005, 1900 ), ( 14, 0, -90 ) );
	createobject( "p6_metal_sculpture_base_03", ( -16975, 1999, 1900 ), ( -14, 180, 90 ) );
	createobject( "collision_clip_wall_512x512x10", ( -17123, 2020, 1920 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -16865, 1709, 1920 ), ( 0, 90, 0 ) );
	createobject( "dub_rock_background_01", ( -16971, 2165, 1860 ), ( 0, -114, 0 ) );
	createobject( "dub_rock_background_01", ( -16971, 2165, 1970 ), ( 0, 112, -170 ) );
	createobject( "collision_clip_wall_256x256x10", ( -16868, 2161, 1920 ), ( 0, 90, 0 ) );
	createobject( "dub_rock_background_01", ( -16968, 2425, 1860 ), ( 0, -112, 0 ) );
	createobject( "dub_rock_background_01", ( -16968, 2405, 1965 ), ( 0, 112, 180 ) );
	createobject( "collision_clip_wall_256x256x10", ( -16868, 2425, 1920 ), ( 0, 90, 0 ) );
	createobject( "mlv/mp_nightclub_bush_vista_01", ( -16690, 2555, 1820 ), ( 0, 180, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -16715, 2560, 1950 ), ( 0, 0, 0 ) );
	createobject( "mlv/mp_nightclub_bush_vista_01", ( -16320, 2555, 1820 ), ( 0, 180, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -16450, 2560, 1950 ), ( 0, 0, 0 ) );
	createobject( "mlv/mp_nightclub_bush_vista_01", ( -15950, 2555, 1820 ), ( 0, 180, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -16185, 2560, 1950 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -15930, 2560, 1950 ), ( 0, 0, 0 ) );
	createobject( "mlv/mp_nightclub_bush_vista_01", ( -16690, 1593, 1820 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -16715, 1593, 1950 ), ( 0, 0, 0 ) );
	createobject( "mlv/mp_nightclub_bush_vista_01", ( -16320, 1593, 1820 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -16450, 1593, 1950 ), ( 0, 0, 0 ) );
	createobject( "mlv/mp_nightclub_bush_vista_01", ( -15950, 1593, 1820 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -16185, 1593, 1950 ), ( 0, 0, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -15930, 1593, 1950 ), ( 0, 0, 0 ) );
	createobject( "p_test_karma_club_couch_circle", ( -15762, 2511, 1860 ), ( 90, 180, 90 ) );
	createobject( "p6_mp_la_lobby_glass_fixture_small", ( -15784, 2370, 1860 ), ( 0, 90, 90 ) );
	createobject( "collision_clip_wall_256x256x10", ( -15773, 2426, 1950 ), ( 0, 90, 0 ) );
	createobject( "p6_mp_la_lobby_glass_fixture_small", ( -15784, 2080, 1860 ), ( 0, 90, 90 ) );
	createobject( "collision_clip_wall_256x256x10", ( -15773, 2170, 1950 ), ( 0, 90, 0 ) );
	createobject( "p6_mp_la_lobby_glass_fixture_small", ( -15784, 1790, 1860 ), ( 0, 90, 90 ) );
	createobject( "collision_clip_wall_256x256x10", ( -15773, 1914, 1950 ), ( 0, 90, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -15773, 1658, 1950 ), ( 0, 90, 0 ) );
	createobject( "p_test_karma_club_couch_circle", ( -15762, 1605, 1860 ), ( 90, 180, 90 ) );
	createobject( "mlv/p6_tree_palm_date_med_sway", ( -16533, 2327, 1360 ), ( 0, 117, 0 ) );
	createobject( "p6_dance_floor_blue", ( -16035, 2166, 2005 ), ( 0, 0, 0 ) );
	createobject( "p6_dance_floor_blue", ( -16035, 2166, 2005 ), ( 0, 0, 180 ) );
	createobject( "collision_clip_512x512x10", ( -16024, 2166, 2008 ), ( 0, 0, 0 ) );
	createobject( "p_test_karma_club_couch_circle", ( -15869, 1978, 2000 ), ( 0, -141, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -15851, 1966, 2128 ), ( 0, -145, 0 ) );
	createobject( "p_test_karma_club_couch_circle", ( -15905, 2384, 2000 ), ( 0, -34, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -15904, 2385, 2128 ), ( 0, -37, 0 ) );
	createobject( "p_test_karma_club_couch_circle", ( -16211, 2001, 2000 ), ( 0, 130, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -16215, 1992, 2128 ), ( 0, 126, 0 ) );
	createobject( "p_test_karma_club_couch_circle", ( -16215, 2329, 2000 ), ( 0, 47, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -16210, 2345, 2128 ), ( 0, -126, 0 ) );
	createobject( "p_pent_double_doors", ( -16091, 1831, 2008 ), ( 0, 180, 90 ) );
	createobject( "p_pent_double_doors", ( -16031, 1831, 2008 ), ( 0, 180, 90 ) );
	createobject( "collision_clip_wall_128x128x10", ( -17429, 2000, 1820 ), ( 0, 15, 0 ) );
	createobject( "p6_rug_modern02", ( -17403, 2005, 1860 ), ( 90, -80, 0 ) );
	createobject( "p6_rug_modern02", ( -17473, 1866, 1860 ), ( 90, 90, 0 ) );
	wait 10;
	playfx( level._effect[ "fx_mp_nightclub_vista_spotlight01"], ( -16769, 870, 1808 ) );
	playfx( level._effect[ "fx_mp_nightclub_vista_spotlight01"], ( -16843, 1762, 1808 ) );
	playfx( level._effect[ "fx_mp_nightclub_vista_spotlight01"], ( -18010, 958, 1808 ) );
	playfx( level._effect[ "fx_mp_nightclub_vista_spotlight01"], ( -17980, 1677, 1808 ) );
	playfx( level._effect[ "fx_mp_nightclub_laser_roller"], ( -17745, 1954, 2016 ) );
	playfx( level._effect[ "fx_mp_nightclub_red_flash"], ( -17345, 1931, 1920 ) );
	playfx( level._effect[ "fx_mp_nightclub_fireworks_runner_02"], ( -16213, 2495, 0 ) );
	playfx( level._effect[ "fx_mp_nightclub_fireworks_runner_02"], ( -16213, 1853, 0 ) );

}

yemen()
{
	level thread removeskybarrier();
	ents = getentarray();
	index = 0;
	while( index < ents.size )
	{
		if( issubstr( ents[ index].classname, "trigger_hurt" ) )
		{
			ents[ index].origin = ( 0, 0, -1500 );
		}
		index++;
	}
	createmysterybox( ( -690, -922, 288 ), ( 0, 85, 0 ), 600 );
	createmysterybox( ( -813, 293, 134 ), ( 0, 55, 0 ), 750 );
	createdoor( ( -950, -2153, 148 ), ( -800, -2410, 203 ), 2, ( 90, 0, 0 ), 5, 2, 35, 85 );
	createdoor( ( -2300, -169, -121 ), ( -2336, -565, -119 ), 2, ( 90, -53, 0 ), 5, 2, 30, 85 );
	createdoor( ( -1275, -663, 207 ), ( -1302, -383, 207 ), 2, ( 90, 55, 0 ), 4, 2, 30, 85 );
	createflag( ( -835, -1231, 200 ), ( -1031, 647, -147 ), 0, 1 );
	createobject( "t5_vehicle_tiara_whole_brown", ( -388, -2513, 230 ), ( 0, -45, 180 ) );
	createobject( "t5_vehicle_tiara_whole_brown", ( -343, -2646, 230 ), ( 0, -135, 180 ) );
	createobject( "t5_vehicle_tiara_whole_brown", ( -355, -2469, 250 ), ( 0, -45, -90 ) );
	createobject( "t5_vehicle_tiara_whole_brown", ( -444, -2592, 230 ), ( 0, 135, 180 ) );
	createobject( "p6_street_vendor_goods_table02", ( -754, -2561, 195 ), ( 0, -175, 0 ) );
	createobject( "p6_street_vendor_goods_table02", ( -754, -2561, 230 ), ( 0, -175, 0 ) );
	createobject( "p6_street_vendor_goods_table02", ( -768, -2263, 230 ), ( 0, -175, 0 ) );
	createobject( "t5_vehicle_tiara_whole_brown", ( -1973, -992, -140 ), ( 0, 170, -90 ) );
	createobject( "veh_t6_civ_car_compact", ( -1208, -856, 240 ), ( 0, -100, 0 ) );
	createobject( "veh_t6_civ_car_compact", ( -1263, -1112, 240 ), ( 0, 123, 0 ) );
	createobject( "veh_t6_civ_car_compact", ( -1222, -900, 240 ), ( 0, -141, 0 ) );
	createobject( "fxanim_gp_cloth_sheet_med03_mod", ( -1271, -984, 290 ), ( 0, 160, 0 ) );
	createobject( "fxanim_gp_cloth_sheet_med03_mod", ( -1286, -1024, 290 ), ( 0, 160, 0 ) );
	createobject( "collision_clip_wall_256x256x10", ( -1268, -968, 230 ), ( 0, -93, 0 ) );
	createobject( "veh_t6_civ_car_compact", ( -743, -1288, 200 ), ( 0, -120, 0 ) );
	createobject( "veh_t6_civ_car_compact", ( -743, -1288, 250 ), ( 0, -120, 0 ) );
	createobject( "t5_vehicle_tiara_whole_brown", ( -939, -629, 180 ), ( 0, 115, 0 ) );
	createobject( "t5_vehicle_tiara_whole_brown", ( -939, -629, 230 ), ( 0, -65, 0 ) );
	createobject( "veh_t6_civ_car_compact", ( -772, 358, 140 ), ( 0, 145, 0 ) );
	createobject( "t5_vehicle_tiara_whole_brown", ( -1150, 70, 140 ), ( 30, 130, 180 ) );
	createobject( "t5_vehicle_tiara_whole_brown", ( -1250, 190, 50 ), ( 30, 130, 180 ) );
	createobject( "t5_vehicle_tiara_whole_brown", ( -1350, 310, -40 ), ( 30, 130, 180 ) );
	createobject( "t5_vehicle_tiara_whole_brown", ( -1450, 430, -115 ), ( 15, 130, 180 ) );
	createobject( "t5_vehicle_tiara_whole_brown", ( -1357, 623, -90 ), ( 0, -50, -90 ) );
	createobject( "t5_vehicle_tiara_whole_brown", ( -1445, 735, -90 ), ( 0, 130, 90 ) );
	createobject( "t5_vehicle_tiara_whole_brown", ( -1357, 623, -40 ), ( 0, -50, -90 ) );
	createobject( "t5_vehicle_tiara_whole_brown", ( -1445, 735, -40 ), ( 0, 130, 90 ) );
	createobject( "collision_clip_wall_256x256x10", ( -1170, 563, -133 ), ( 0, 160, 0 ) );
	createobject( "t6_wpn_supply_drop_ally", ( -872, 728, -43 ), ( 0, 53, 0 ) );
	createobject( "t6_wpn_supply_drop_ally", ( -1080, 954, -129 ), ( 0, 155, 0 ) );
	createobject( "t6_wpn_supply_drop_ally", ( -1011, 1123, -129 ), ( 0, 170, 0 ) );

}

dig()
{
	level thread removeskybarrier();
	createflag( ( -1704.45, -157.004, 79.2677 ), ( -713.124, 2402.26, 418.054 ), 0, 0 );
	createwall( ( -84.1159, 2181.98, 383.803 ), ( -84.1159, 2718.84, 440.804 ), 1 );
	createwall( ( -85.0445, 2701.46, 383.803 ), ( -549.177, 2701.46, 440.804 ), 1 );
	createwall( ( -908.771, 2701.46, 440.341 ), ( -484.344, 2701.46, 383.803 ), 1 );
	createwall( ( -908.772, 2701.46, 420.803 ), ( -910.46, 2701.46, 462.804 ), 1 );
	createwall( ( -1238.52, 2693.94, 420.803 ), ( -1238.52, 2469.45, 462.804 ), 1 );
	createwall( ( -72.8847, 2243.68, 360.527 ), ( -600.454, 2243.68, 470 ) );
	createwall( ( -550.485, 2273.29, 360.527 ), ( -550.485, 2555.83, 470 ) );
	createwall( ( -847.358, 2254.41, 394.064 ), ( -847.358, 2718.46, 470 ) );
	createdoor( ( -515.647, 2412.15, 364.334 ), ( -516.276, 2604.65, 365.596 ), 2, ( 90, 0, 0 ), 3, 2, 50, 80 );
	createmysterybox( ( -429.574, 2278.32, 358.954 ), ( 0, 90, 0 ), 200 );
	createwall( ( -866.599, 2242.06, 360.527 ), ( -542.28, 2242.06, 470 ) );
	createwall( ( 1000.98, 1246.18, 129.132 ), ( 1000.98, 1031.47, 260 ) );
	createdoor( ( 1130.33, 999.677, 127.442 ), ( 1017.58, 989.242, 129.132 ), 2, ( 90, 0, 0 ), 3, 2, 40, 80 );
	createflag( ( 336.311, -403.517, 43.8388 ), ( 672.244, 1070.74, 132.718 ), 0, 0 );
	createwall( ( 1366.05, 1243.44, 150 ), ( 544.102, 1243.44, 200.346 ), 1 );
	createflag( ( 1350.43, 964.293, 124.503 ), ( -730.124, -211.776, 160.462 ), 0, 0 );
	createflag( ( -128.394, 2295.13, 361.423 ), ( -140.901, -169.293, 161.708 ), 0, 0 );
	createflag( ( 1050.19, -1154.42, 122.233 ), ( -1711.92, -1348.96, 76.4179 ), 0, 1 );
	createturret( ( 1028.2, 1146.34, 245.194 ), ( 0, 180, 0 ), "auto_gun_turret_mp" );
	createmysterybox( ( 116.947, 959.641, 174.974 ), ( 0, 90, 0 ), 200 );
	createzipline( ( 1360.36, 1046.43, 124.357 ), ( 516.554, 1054.49, 190.847 ), 2, 1 );
	createflag( ( 246.089, 1263.95, 236.679 ), ( 1075.63, 741.337, 120.125 ), 0, 0 );

}

pod()
{
	level thread removeskybarrier();
	createramp( ( -1853.95, -283.205, 431.354 ), ( -1853.73, -541.851, 552.879 ) );
	creategrid( ( -1881.09, -559.391, 552.879 ), ( -1652.56, -1171.57, 552.879 ) );
	createwall( ( -1782.44, -530.608, 552.879 ), ( -1596.61, -530.608, 553.879 ) );
	createwall( ( -1782.44, -530.608, 620.456 ), ( -1596.61, -530.608, 621.456 ) );
	createwall( ( -1622.73, -547.608, 552.879 ), ( -1622.73, -890.091, 553.879 ) );
	createwall( ( -1622.73, -547.608, 620.456 ), ( -1622.73, -890.091, 621.456 ) );
	createwall( ( -1622.73, -890.091, 552.879 ), ( -1622.73, -1240.01, 652.331 ) );
	createflag( ( -1896.85, -1205.03, 568.754 ), ( 1231.24, -123.347, 271.204 ), 0, 0 );
	createmysterybox( ( -1657.37, -1043.78, 568.754 ), ( 0, 0, 0 ), 900 );
	createdoor( ( -1731.34, -565.249, 568.754 ), ( -1861.37, -565.962, 568.77 ), 2, ( 90, 90, 0 ), 2, 2, 35, 80 );
	createflag( ( -223.609, 1182.8, 437.228 ), ( -1117.22, -1569.99, 420.125 ), 0, 1 );
	createwall( ( -759.361, 399.641, 416.365 ), ( -670.56, 399.641, 540.365 ) );
	createdoor( ( -704.069, 146.653, 420.125 ), ( -674.916, 53.1565, 426.941 ), 2, ( 90, 115, 0 ), 3, 2, 20, 80 );
	createflag( ( -592.616, 284.226, 420.125 ), ( 694.142, -2266.54, 384.854 ), 0, 0 );
	createwall( ( 643.359, -1693.64, 372.152 ), ( 490.641, -1698.15, 471.152 ) );
	createwall( ( 1315.65, -510.299, 243.532 ), ( 1515.54, -510.299, 340.532 ) );
	createwall( ( 1084.35, -470.453, 264.626 ), ( 935.74, -470.453, 360.626 ) );
	createdoor( ( 1008.18, -505.094, 260.841 ), ( 889.929, -490.453, 270.227 ), 2, ( 90, 90, 0 ), 2, 2, 30, 80 );
	createmysterybox( ( 1146.03, -664.641, 246.097 ), ( 0, 90, 0 ), 900 );
	createflag( ( 584.203, -1609.16, 348.125 ), ( -1863.72, 2090.26, 480.152 ), 0, 0 );
	createturret( ( 1099.96, -1187.69, 260.125 ), ( 0, 90, 0 ), "auto_gun_turret_mp" );

}

takeoff()
{
	createflag( ( -377.345, 4340.17, 32.125 ), ( -378.816, 4460.27, 31.426 ), 0, 1 );
	createramp( ( -397, 4535, 20 ), ( -397, 4665, 100 ), 1 );
	createramp( ( -354, 4535, 20 ), ( -354, 4665, 100 ), 1 );
	createwall( ( -150, 5365, 115.875 ), ( -315, 5365, 225.125 ), 0 );
	createwall( ( -430, 5365, 115 ), ( -640, 5365, 225.125 ), 0 );
	creategrid( ( -422, 4448, 11.875 ), ( -322, 4523, 11.875 ), 90, 0 );
	createdoor( ( -343, 5365, 233.125 ), ( -343, 5365.2, 130.125 ), 2, ( 90, 90, 0 ), 2, 2, 30, 80 );
	createramp( ( -140, 5460, 240 ), ( -630, 5440, 225 ), 0 );
	createramp( ( -140, 5380, 240 ), ( -630, 5365, 225 ), 0 );
	createwall( ( -132, 5375, 115.125 ), ( -132, 5740, 247.125 ), 0 );
	createwall( ( -625, 5375, 115.125 ), ( -625, 5740, 247.125 ), 0 );
	createramp( ( -206, 5680, 115 ), ( -206, 5487, 225 ), 0 );
	createflag( ( -376, 5775.17, 120.125 ), ( -620.909, 3410.52, 184.125 ), 0, 0 );
	createflag( ( -1522.22, 3434.32, 184.125 ), ( 1337.19, 2203.01, 32.125 ), 0, 0 );
	createwall( ( -503, 4953, 115.125 ), ( -613, 4953, 210.125 ), 0 );
	createmysterybox( ( -590, 5553, 125.125 ), ( 90, 180, 0 ), 900 );
	createdoor( ( 1247.64, 2455.64, 32.125 ), ( 1136.46, 2449.14, 58.2239 ), 2, ( 90, 90, 0 ), 2, 2, 30, 80 );
	createwall( ( 1551.64, 2194.13, 138.125 ), ( 1561.25, 2345.5, 125.952 ), 0 );
	createmysterybox( ( 1489.16, 2352.36, 160.125 ), ( 90, 90, 0 ), 900 );

}

frost()
{
	createwall( ( 1806.21, 1328.92, 15.70917 ), ( 1493.86, 1305.64, 15.9483 ) );
	createwall( ( 1806.21, 1328.92, 70.70917 ), ( 1493.86, 1305.64, 70.9483 ) );
	createwall( ( 1477.86, 1305.64, 15.9483 ), ( 1461.32, 1865.91, 15.78503 ) );
	createwall( ( 1477.86, 1305.64, 70.9483 ), ( 1461.32, 1865.91, 70.78503 ) );
	createwall( ( 1448.32, 1865.91, 15.78503 ), ( 614.996, 1849.04, 4.125 ), 1 );
	createwall( ( 1448.32, 1865.91, 70.78503 ), ( 614.996, 1849.04, 70.125 ), 1 );
	createwall( ( 641.555, 1837.11, 15.22837 ), ( 637.647, 2611.15, 1.50267 ), 1 );
	createwall( ( 641.555, 1837.11, 70.22837 ), ( 637.647, 2611.15, 70.50267 ), 1 );
	createwall( ( 675.847, 2577.92, 15.18936 ), ( 1196.11, 2591.8, 15.73985 ), 1 );
	createwall( ( 675.847, 2577.92, 70.18936 ), ( 1196.11, 2591.8, 70.73985 ), 1 );
	createwall( ( 1196.11, 2591.8, 15.73985 ), ( 1205.95, 2226.89, 15.3811 ), 1 );
	createwall( ( 1196.11, 2591.8, 70.73985 ), ( 1205.95, 2226.89, 70.3811 ), 1 );
	createwall( ( 1220.95, 2226.89, 15.3811 ), ( 1801.04, 2230.98, 4.249 ), 1 );
	createwall( ( 1220.95, 2226.89, 70.3811 ), ( 1801.04, 2230.98, 70.249 ), 1 );
	createwall( ( 1785.21, 2246.96, 15.48251 ), ( 1784.68, 2630.53, 15.16695 ), 1 );
	createwall( ( 1785.21, 2246.96, 70.48251 ), ( 1784.68, 2630.53, 70.16695 ), 1 );
	createwall( ( 1800.42, 2615.98, 15.13351 ), ( 2246.63, 2608.5, 0.495411 ), 1 );
	createwall( ( 1800.42, 2615.98, 70.13351 ), ( 2256.63, 2608.5, 70.49541 ), 1 );
	createwall( ( 2256.63, 2608.5, 15.49541 ), ( 2248.87, 1939.79, -15.93455 ), 1 );
	createwall( ( 2256.63, 2608.5, 70.49541 ), ( 2253.87, 1939.79, 70.93455 ), 1 );
	createwall( ( 2254.26, 1934.19, 15.98634 ), ( 1768.38, 1924.33, 1.90721 ), 1 );
	createwall( ( 2254.26, 1934.19, 70.98634 ), ( 1768.38, 1924.33, 70.90721 ), 1 );
	createwall( ( 1783.56, 1893.43, 15.07892 ), ( 1828.15, 1305.04, 15.749 ), 1 );
	createwall( ( 1783.56, 1893.43, 70.07892 ), ( 1828.15, 1305.04, 70.749 ), 1 );
	createflag( ( 967.005, 1499.42, 4.34676 ), ( 1533.58, 1364.78, 11.936 ), 0, 0 );
	createflag( ( 685.908, 2531.2, 0.125 ), ( 1864.82, -131.263, 14.5192 ), 0, 0 );
	createmysterybox( ( 2023.15, 2557.63, 17.8465 ), ( 0, 90, 0 ), 900 );

}

mirage()
{
	level thread removeskybarrier();
	createwall( ( 820.549, 1159.7, 131.865 ), ( 820.549, 1312.21, 250.945 ), 1 );
	createdoor( ( -4.36561, 1832.2, 24.125 ), ( -3.43415, 1932.96, 24.125 ), 2, ( 90, 90, 0 ), 4, 2, 15, 80 );
	createwall( ( -847.348, 1385.49, 145.199 ), ( -846.551, 1128.68, 150.2245 ), 1 );
	createwall( ( -847.348, 1385.49, 165.199 ), ( -846.551, 1128.68, 75.2245 ), 1 );
	createwall( ( -741.408, 1157.64, 6.44371 ), ( -591.747, 1155.67, -1.78725 ), 1 );
	createwall( ( -741.408, 1157.64, 45.44371 ), ( -591.747, 1155.67, -1.78725 ), 1 );
	createwall( ( -142.582, 955.454, 265.631 ), ( 132.361, 950.306, 267.255 ), 1 );
	createmysterybox( ( 2.09576, 1376.36, -30.3806 ), ( 0, 90, 0 ), 900 );
	createwall( ( -705.296, 1153.35, 607.856 ), ( -705.296, 240.588, 735.583 ), 1 );
	createwall( ( -685.296, 249.741, 617.061 ), ( 750.386, 247.608, 735.583 ), 1 );
	createwall( ( 733.661, 257.728, 617.896 ), ( 733.661, 1171.39, 735.583 ), 1 );
	createflag( ( 2.25761, 2570.64, 176.125 ), ( -621.632, 1012.13, 633.336 ), 0, 0 );
	createwall( ( 274.385, 1153.16, 700.321 ), ( 274.385, 553.568, 760.321 ), 1 );
	createwall( ( 261.928, 580.092, 658.342 ), ( -273.553, 580.092, 760.321 ), 1 );
	createwall( ( -257.259, 592.769, 660.341 ), ( -257.259, 1180.22, 760.321 ), 1 );
	createwall( ( -90.0417, 595.4, 648.125 ), ( -90.0417, 458.868, 767.125 ) );
	createwall( ( -90.0417, 264.566, 618.688 ), ( -90.0417, 418.028, 767.125 ) );
	createdoor( ( -55.4008, 322.291, 630.812 ), ( -59.0809, 446.082, 648.125 ), 2, ( 90, 0, 0 ), 2, 2, 40, 80 );
	createturret( ( 603.176, 419.714, 647.788 ), ( 0, 180, 0 ), "auto_gun_turret_mp" );
	createmysterybox( ( 477.115, 1128.36, 648.125 ), ( 0, 90, 0 ), 900 );
	createflag( ( 668.061, 1086.84, 627.577 ), ( -855.46, 2870.38, 28.0537 ), 0, 0 );
	createdoor( ( -896.51, 2073.64, 176.125 ), ( -1021.03, 2040.87, 176.125 ), 2, ( 90, 90, 0 ), 2, 2, 25, 80 );
	createflag( ( -736.184, 1998.07, 176.125 ), ( 940.271, 1435.1, 108.832 ), 0, 0 );
	createwall( ( -697.581, 2240.91, 212.828 ), ( -697.581, 2119.2, 280.217 ), 1 );
	createdoor( ( 1982.36, 392.359, 0.124999 ), ( 2108.99, 410.359, 0.124999 ), 2, ( 90, 90, 0 ), 2, 2, 25, 80 );
	createwall( ( 1430.56, -28.8206, 13.2398 ), ( 1430.56, 89.1984, 106.251 ), 1 );
	createflag( ( 1544.63, 2.5824, 1.93948 ), ( -2464.52, 1475.63, -42.1882 ), 0, 0 );
	createflag( ( 0.689376, 1001.46, 96.125 ), ( 2933.47, 1260.56, 18.5847 ), 0, 0 );

}

hydro()
{
	level thread removeskybarrier();
	createflag( ( -2701.3, -457.21, 222.125 ), ( -2865.28, -1577.53, 216.125 ), 0, 0 );
	createwall( ( -3181.05, -1262.43, 216.125 ), ( -3052.13, -1107, 335.966 ) );
	createwall( ( -3822.95, -446.114, 211.584 ), ( -2600.19, 684.654, 284.57 ), 1 );
	createwall( ( -3313.87, -482.114, 264.591 ), ( -3387.29, -442.564, 266.554 ), 1 );
	createwall( ( -2705.11, 561.652, 301.738 ), ( -2554.92, 713.997, 306.735 ), 1 );
	createturret( ( -2760.69, 203.599, 216.125 ), ( 0, 270, 0 ), "auto_gun_turret_mp" );
	createturret( ( -3023.35, 228.974, 216.125 ), ( 0, 270, 0 ), "auto_gun_turret_mp" );
	createmysterybox( ( -2287.64, 43.9901, 216.125 ), ( 0, 0, 0 ), 900 );
	createmysterybox( ( -2287.64, -125.783, 216.125 ), ( 0, 0, 0 ), 900 );
	createflag( ( -2557.1, 187.289, 256.125 ), ( -1407.16, -3460.03, 82.125 ), 0, 0 );
	createwall( ( 715.112, -2820.03, 100.391 ), ( 515.633, -2824.46, 86.6547 ), 1 );
	createflag( ( -750.577, -3222.29, 82.125 ), ( 1220.17, -3911.64, 82.125 ), 0, 0 );
	createdoor( ( 787.686, -3475.36, 82.125 ), ( 603.119, -3497.35, 82.125 ), 2, ( 90, 90, 0 ), 4, 2, 30, 80 );
	createflag( ( 1202.53, -3098.6, 82.126 ), ( -30.2542, -1241.76, 324.125 ), 0, 0 );
	createmysterybox( ( 1248.07, -3334.27, 82.125 ), ( 0, 0, 0 ), 900 );
	createdoor( ( 788.418, -3147.36, 82.125 ), ( 607.233, -3170.1, 82.125 ), 2, ( 90, 90, 0 ), 4, 2, 30, 80 );

}

grind()
{
	level thread removeskybarrier();
	createwall( ( 4478.13, -2934.58, 283 ), ( 4478.13, -2254.47, 283.001 ) );
	createwall( ( 5007.59, -2934.58, 283 ), ( 5007.59, -2254.47, 283.001 ) );
	createwall( ( 5000.4, -2957.1, 283 ), ( 4467.67, -2957.1, 283.001 ) );
	createmysterybox( ( 4725.33, -2319.64, 248.125 ), ( 0, 90, 0 ), 200 );
	createflag( ( 4526.01, -2326.66, 248.125 ), ( 2707.86, -202.092, 164.125 ), 0, 0 );
	createwall( ( 4500.94, -2734.4, 248.125 ), ( 4890.88, -2734.4, 361.733 ) );
	createdoor( ( 4772.76, -2699.76, 256.125 ), ( 4922.25, -2697.07, 256.125 ), 2, ( 90, 90, 0 ), 3, 2, 40, 80 );
	createflag( ( 561.622, -1324.31, 136.125 ), ( 4595.29, -2844.41, 256.125 ), 0, 0 );
	createwall( ( 2309.94, 332.539, 169 ), ( 2309.94, 1483.11, 169.001 ) );
	createwall( ( 2318.18, 1466.48, 169 ), ( 3186.81, 1466.48, 169.001 ) );
	createwall( ( 3128.03, 1440.13, 169 ), ( 3128.03, 303.505, 169.001 ) );
	createwall( ( 3120.36, 321.489, 169 ), ( 2295.66, 324.115, 169.001 ) );
	createflag( ( -575.399, -849.019, 280.125 ), ( 2769.22, 1353.76, 128.125 ), 0, 0 );
	createwall( ( 3118.43, 965.084, 128.125 ), ( 2690.54, 965.084, 250 ) );
	createwall( ( 2295.71, 965.084, 128.125 ), ( 2570.68, 965.084, 250 ) );
	createflag( ( 3068.2, 379.451, 128.125 ), ( -963.664, 66.2146, 235.516 ), 0, 0 );
	createdoor( ( 2635.02, 833.899, 128.125 ), ( 2620.41, 950.049, 128.125 ), 2, ( 90, 90, 0 ), 4, 2, 55, 80 );
	createmysterybox( ( 2867.64, 930.443, 128.125 ), ( 0, 90, 0 ), 200 );
	createturret( ( 2499.45, 420.805, 128.125 ), ( 0, 90, 0 ), "auto_gun_turret_mp" );
	createwall( ( 5007.59, -2780.52, 308.875 ), ( 5007.59, -2600.23, 308.876 ), 1 );

}

downhill()
{
	level thread removeskybarrier();
	createflag( ( 138.591, -2711.65, 1043.5 ), ( 132.304, -2986.64, 1051.02 ), 0, 1 );
	createmysterybox( ( 222.39, -1082.21, 1001.13 ), ( 0, 68, 0 ), 400 );
	createmysterybox( ( 2254.86, -1230.34, 980.125 ), ( 0, 0, 0 ), 400 );

}

encore()
{
	level thread removeskybarrier();
	createwall( ( -1980.08, 51.5708, -80.6471 ), ( -1650.15, 51.5708, 71.678 ) );
	createdoor( ( -1476.64, -56.8855, -71.875 ), ( -1458.42, -239.48, -71.875 ), 2, ( 90, 0, 0 ), 3, 2, 40, 80 );
	createflag( ( -2267.94, -29.1935, -71.875 ), ( -89.5406, 1347.84, 17.125 ), 0, 0 );
	createdoor( ( -724.359, 337.873, -55.875 ), ( -724.359, 242.913, -55.875 ), 2, ( 90, 0, 0 ), 1, 2, 40, 80 );
	createwall( ( -130.423, 637.61, 56.125 ), ( -213.599, 637.61, 180.345 ) );
	createmysterybox( ( -308.359, 527.758, 16.125 ), ( 0, 0, 0 ), 200 );
	createflag( ( -151.855, 597.137, 43.7445 ), ( 2099.51, 1831.5, 24.125 ), 0, 0 );
	createmysterybox( ( -1925.14, -236.107, -71.875 ), ( 0, 0, 0 ), 200 );
	createwall( ( -15511.7, 22258.1, 330 ), ( -15511.7, 20709.1, 330.001 ) );
	createwall( ( -16035.4, 22258.1, 330 ), ( -16035.4, 20709.1, 330.001 ) );
	createwall( ( -15535.7, 20748.1, 330 ), ( -16051.6, 20759.3, 288.954 ) );
	createwall( ( -15546.1, 22290.3, 311.61 ), ( -15776.2, 22290.3, 501.534 ) );
	createwall( ( -16000.8, 22290.3, 310.266 ), ( -15860.5, 22290.3, 501.534 ) );
	createwall( ( -16035.7, 22258.1, 310.266 ), ( -16035.7, 22677.6, 501.534 ) );
	createwall( ( -15511.7, 22258.1, 310.266 ), ( -15511.7, 22677.6, 501.534 ) );
	createwall( ( -15535.4, 22641.5, 310.266 ), ( -16081.6, 22641.5, 501.534 ) );
	createdoor( ( -15642.1, 22324.9, 311.607 ), ( -15817.1, 22324.9, 311.186 ), 2, ( 90, 90, 0 ), 3, 2, 60, 80 );
	createwall( ( -15748.3, 22290.3, 400.947 ), ( -15898.1, 22290.3, 501.334 ) );
	createramp( ( -15983.2, 22320.3, 310.713 ), ( -15983.2, 22615.6, 361.002 ) );
	createramp( ( -16001.1, 22595.4, 364.246 ), ( -15539.9, 22595.4, 479.319 ) );
	createwall( ( -15529.3, 22539.3, 471.318 ), ( -16047.4, 22539.3, 471.319 ) );
	createwall( ( -15529.3, 22503.8, 471.318 ), ( -16047.4, 22503.8, 471.319 ) );
	createwall( ( -15529.3, 22467.8, 471.318 ), ( -16047.4, 22467.8, 471.319 ) );
	createwall( ( -15529.3, 22431.8, 471.318 ), ( -16047.4, 22431.8, 471.319 ) );
	createwall( ( -15529.3, 22395.8, 471.318 ), ( -16047.4, 22395.8, 471.319 ) );
	createwall( ( -15529.3, 22359.8, 471.318 ), ( -16047.4, 22359.8, 471.319 ) );
	createwall( ( -15529.3, 22323.8, 471.318 ), ( -16047.4, 22323.8, 471.319 ) );
	createwall( ( -16064.2, 22236.4, 515.875 ), ( -16064.2, 22685.4, 530.876 ), 1 );
	createwall( ( -16105.7, 22669.1, 515.875 ), ( -15486.8, 22669.1, 530.876 ), 1 );
	createwall( ( -15485.8, 22676.7, 515.875 ), ( -15485.8, 22228.5, 530.876 ), 1 );
	createwall( ( -15511.7, 22244.2, 530.875 ), ( -15511.7, 21847.1, 330.001 ), 1 );
	createwall( ( -16035.4, 22245.1, 530.875 ), ( -16035.4, 21847.1, 330.001 ), 1 );
	createwall( ( -16035.4, 21167.7, 298.235 ), ( -16035.4, 20743.1, 298.236 ), 1 );
	createwall( ( -15511.7, 21167.7, 298.235 ), ( -15511.7, 20743.1, 298.236 ), 1 );
	createwall( ( -15590.4, 21011.7, 294.488 ), ( -15871.5, 21011.7, 370.488 ) );
	createwall( ( -16000.8, 21648.6, 301.902 ), ( -15704.9, 21648.6, 390.434 ) );
	createflag( ( 830.074, 2172.17, 24.125 ), ( -15711.5, 20853.1, 291.682 ), 0, 0 );
	createmysterybox( ( -15652, 22606.9, 314.865 ), ( 0, 90, 0 ), 200 );
	createturret( ( -15927.1, 22326.9, 497.193 ), ( 0, 270, 0 ), "auto_gun_turret_mp" );
	createturret( ( -15627.6, 22326.9, 497.193 ), ( 0, 270, 0 ), "auto_gun_turret_mp" );
	createflag( ( -16029.6, 22634.5, 495.531 ), ( 977.526, -158.553, -22.7275 ), 0, 0 );

}

vertigo()
{
	createdoor( ( 1056.36, 2080.34, -71.875 ), ( 1076.11, 1724.65, -71.875 ), 3, ( 90, 0, 0 ), 5, 2, 35, 80 );
	createwall( ( 804.353, 2178.59, -71.875 ), ( 703.221, 2185.25, 45.5849 ) );
	createflag( ( 752.893, 1557.87, -71.875 ), ( 1322.18, 927.634, -31.875 ), 0, 0 );
	createflag( ( 954.758, 351.64, -31.875 ), ( -769.118, 542.503, 8.125 ), 0, 0 );
	createmysterybox( ( 910.16, 2127.36, -71.875 ), ( 0, 90, 0 ), 900 );
	createramp( ( 223.891, 3238.45, -20.875 ), ( 261.684, 4686.62, 41.4638 ) );
	createflag( ( 258.344, 4677.6, 56.9619 ), ( 302.359, -1914.63, -15.875 ), 0, 0 );
	createflag( ( 442.837, -1658.83, -15.875 ), ( -1134.59, 458.713, 8.125 ), 0, 0 );
	createramp( ( 205.869, 4219.49, -18.7863 ), ( -143.887, 4213.84, -7.00918 ) );
	createmysterybox( ( -140.404, 4216.28, 8.7559 ), ( 0, 0, 0 ), 900 );

}

magma()
{
	level thread removeskybarrier();
	createflag( ( 683, -927, -521 ), ( -867.278, 308.809, -495.875 ), 0, 0 );
	createwall( ( -2724.756, -1387.477, -559.9594 ), ( -2724, -1215, -558.7044 ), 0 );
	createwall( ( -2724.756, -1387.477, -509.9594 ), ( -2724, -1215, -508.7044 ), 0 );
	createwall( ( -2724.756, -1387.477, -459.9594 ), ( -2724, -1215, -458.7044 ), 0 );
	createwall( ( -2724.756, -1387.477, -559.9594 ), ( -3272, -1387, -558.7044 ), 0 );
	createwall( ( -2724.756, -1387.477, -509.9594 ), ( -3272, -1387, -508.7044 ), 0 );
	createwall( ( -2724.756, -1387.477, -459.9594 ), ( -3272, -1387, -458.7044 ), 0 );
	createdoor( ( -2766, -1300, -559.54 ), ( -2750.36, -1142.886, -515.54 ), 2, ( 90, 0, 0 ), 4, 2, 30, 80 );
	createramp( ( -3275.756, -1202.477, -495.9594 ), ( -3275, -1450, -450.7044 ), 0 );
	createflag( ( -2275, -1467, -559.875 ), ( -2520, -1459, -559.875 ), 0, 1 );
	createelevator( ( -2250.048, 715, -489.6955 ), ( -2250.048, 715, -355.6955 ), 2, 1 );
	createelevator( ( -2292, 96, -495.6955 ), ( -2292, 96, -330 ), 2, 1 );
	createramp( ( -3376.756, -1480.477, -450.9594 ), ( -2970, -1480, -450.7044 ), 0 );
	createramp( ( -3376.756, -1550.477, -450.9594 ), ( -2970, -1550, -450.7044 ), 0 );
	createzipline( ( -1020, 539.994, -451.125 ), ( -1709.11, 756.517, -343.876 ), 1, 1 );
	createdoor( ( -2531, 47, -308.54 ), ( -2290, 242.886, -495.54 ), 2, ( 90, 90, 0 ), 3, 2, 30, 80 );
	createflag( ( -3092, -1630, -450 ), ( -867.278, 308.809, -495.875 ), 0, 0 );
	createwall( ( -3089, -1585.477, -460.9594 ), ( -3089, -1662, -460.7044 ), 0 );
	createdoor( ( -3400, -1470.886, -559.54 ), ( -3217, -1470.886, -559.54 ), 2, ( 90, 0, 0 ), 3, 2, 30, 80 );
	createflag( ( -191, 328, -495 ), ( -1727, 744.532, -343.875 ), 0, 0 );
	createmysterybox( ( -2509, -424.88, -300.125 ), ( 0, 90, 0 ), 900 );
	createmysterybox( ( -3456, -1154, -490 ), ( 0, 0, 0 ), 900 );
	createwall( ( -3217.756, -1626.477, -559 ), ( -3217, -1520, -558.7044 ), 0 );
	createwall( ( -3217.756, -1626.477, -510 ), ( -3217, -1520, -510.7044 ), 0 );
	createflag( ( -2292.64, -448, -316 ), ( 149.72, -1910, -303.875 ), 0, 0 );
	createwall( ( 111, -1758.477, -475 ), ( 111, -1688, -475.7044 ), 0 );
	createflag( ( -2307, -490, -495 ), ( -2524, -175, -219.875 ), 1, 1 );

}

studio()
{
	level thread removeskybarrier();
	createwall( ( 2663.64, 1769.23, -35.875 ), ( 3437.73, 1779.6, 52.4055 ), 1 );
	createwall( ( 2663.64, 1264.36, -35.875 ), ( 3306.99, 1264.64, 52.4055 ), 1 );
	createwall( ( 3437.73, 1779.6, -35.875 ), ( 3445.38, 1037.52, 52.4055 ), 1 );
	createwall( ( 3250.99, 1215.43, -35.875 ), ( 3250.99, 265.791, 52.4055 ) );
	createwall( ( 3245.88, 307.466, -35.875 ), ( 3464.73, 307.466, 52.4055 ) );
	createflag( ( 2618.91, 1521.01, -43.875 ), ( 2828.98, 1681.26, -43.875 ), 0, 0 );
	createwall( ( 3260.71, 1032.48, -35.875 ), ( 3335.66, 1032.48, 52.4055 ) );
	createdoor( ( 3293.99, 970.546, -35.875 ), ( 3376.77, 1006.69, -35.875 ), 2, ( 90, 90, 0 ), 1, 2, 25, 80 );
	createflag( ( 3402, 350.271, -35.875 ), ( 560.471, 1620.49, 21.125 ), 0, 0 );
	createdoor( ( -35.2087, 1391.76, 96.8395 ), ( -101.2, 1440.02, 30.125 ), 2, ( 90, 90, 0 ), 1, 2, 25, 80 );
	createwall( ( -172.837, 1299.38, 104.133 ), ( -212.079, 1154.06, 185.996 ) );
	createmysterybox( ( -141.644, 938.877, 96.125 ), ( 0, 75, 0 ), 900 );
	createflag( ( -78.4024, 1100.82, 134.125 ), ( -254.783, 2457.95, 43.9841 ), 0, 0 );
	createmysterybox( ( 3285.63, 655.848, -37.2403 ), ( 0, 0, 0 ), 900 );
	createdoor( ( 1113.25, 1539.84, 94.125 ), ( 1075.92, 1472.03, 94.125 ), 2, ( 90, 150, 0 ), 1, 2, 25, 80 );
	createmysterybox( ( 987.696, 1328.37, 94.125 ), ( 0, 150, 0 ), 900 );
	createwall( ( 1326.96, 1422.36, 13.6993 ), ( 1275.2, 1336.82, 16.0596 ) );
	createwall( ( 1237.16, 1701.03, 31.0282 ), ( 1203.46, 1634.15, 30.2201 ) );
	createwall( ( 1245.85, 1719.8, 31.0282 ), ( 1105.97, 1795.88, 30.2201 ) );
	createwall( ( 1108.46, 1797.44, 30.3102 ), ( 1078.43, 1710.83, 30.6531 ) );

}

rush()
{
	level thread removeskybarrier();
	createflag( ( -479.576, 1057.29, -2.67709 ), ( -1969.74, -1022.23, -35.6221 ), 0, 1 );
	createflag( ( -195.165, 1443.4, 0.125 ), ( -2232.89, -542.451, -80.9455 ), 0, 1 );
	createmysterybox( ( -2354.96, 869.641, 10.6882 ), ( 0, 90, 0 ), 900 );
	createmysterybox( ( -2390.45, 2215.37, -29.6143 ), ( 0, 100, 0 ), 900 );
	createwall( ( -2464.61, -79.8399, -107.954 ), ( -2464.61, -151.584, -20.7104 ) );
	createturret( ( 16.8966, 2273.83, -0.448814 ), ( 0, 180, 0 ), "auto_gun_turret_mp" );
	createelevator( ( -2851.86, 1449.45, -61.4551 ), ( -2851.86, 1449.45, 314.418 ), 3, 1 );
	createflag( ( -1506.36, -1442.8, 0.125 ), ( -1545.64, -1446.47, 0.125 ), 0, 1 );
	createflag( ( -1659.75, -1569.02, 0.125 ), ( 153.239, 2087.27, 7.07856 ), 0, 1 );
	createflag( ( -1063.18, -322.544, 44.125 ), ( -2427.93, 870.023, 7.40664 ), 0, 1 );
	createdoor( ( 9.64091, 2055.64, 4.9386 ), ( 3.20544, 2279.58, -1.3245 ), 2, ( 90, 0, 0 ), 11, 2, 30, 80 );
	createflag( ( 941.359, -608.898, 136.125 ), ( 246.102, 57.7702, 1472.13 ), 0, 1 );
	createflag( ( -1371.1, -1986.88, 1472.13 ), ( 1100.1, -1093.28, 264.125 ), 0, 1 );
	createflag( ( 1100.1, 56.1231, 264.125 ), ( -1063.18, -322.544, 44.125 ), 0, 1 );
	createdoor( ( 920.51, -112.359, 264.125 ), ( 1107.18, -112.803, 264.125 ), 2, ( 90, 90, 0 ), 5, 2, 30, 80 );
	createmysterybox( ( 337.357, 2337.34, 14.8129 ), ( 90, 90, 0 ), 900 );
	createflag( ( -2333.94, 2533.04, 132.607 ), ( -1798.81, -690.433, 68.125 ), 0, 1 );
	createflag( ( -2333.94, 2232.61, 132.607 ), ( -1200.27, -682.038, 77.125 ), 0, 1 );
	createflag( ( -1585.89, 25.152, 68.125 ), ( 586.53, 276.641, 136.125 ), 0, 1 );
	createzipline( ( -3565.01, 2142.57, -19.2756 ), ( -2475.76, -2768, -5.875 ), 7, 1 );

}

cove()
{
	level thread removeskybarrier();
	createramp( ( -1540.61, 445.493, 45.6191 ), ( -2070.19, 445.493, 118.328 ) );
	createramp( ( -1540.61, 503.156, 45.6191 ), ( -2070.19, 503.156, 118.328 ) );
	creategrid( ( -2096.04, 205.48, 118.328 ), ( -2468.85, 676.234, 118.328 ) );
	createwall( ( -2096.04, 690.075, 132.907 ), ( -2096.04, 520.964, 132.908 ) );
	createwall( ( -2115.01, 710.716, 132.907 ), ( -2512.55, 710.716, 132.908 ) );
	createwall( ( -2096.04, 690.075, 200.907 ), ( -2096.04, 520.964, 200.908 ) );
	createwall( ( -2115.01, 710.716, 200.907 ), ( -2512.55, 710.716, 200.908 ) );
	createwall( ( -2115.01, 161.999, 132.907 ), ( -2512.55, 161.999, 132.908 ) );
	createwall( ( -2115.01, 161.999, 200.907 ), ( -2512.55, 161.999, 200.908 ) );
	createwall( ( -2096.04, 379.227, 132.907 ), ( -2096.04, 149.952, 132.908 ) );
	createwall( ( -2096.04, 379.227, 200.907 ), ( -2096.04, 149.952, 200.908 ) );
	createdoor( ( -2130.68, 290.442, 134.203 ), ( -2096.04, 473.226, 135.353 ), 2, ( 90, 0, 0 ), 3, 2, 50, 80 );
	createmysterybox( ( -2332.15, 196.64, 134.203 ), ( 0, 90, 0 ), 180 );
	createramp( ( -2489.68, 407.639, 133.966 ), ( -2562.92, 407.639, 133.966 ) );
	createflag( ( -2565.81, 407.709, 149.841 ), ( 1211.12, -1066.91, 56.8643 ), 0, 1 );
	createwall( ( -1480.76, 595.777, 63.0002 ), ( -1480.76, 417.697, 172.479 ) );
	createflag( ( -347.423, 2647.33, 54.3826 ), ( 1907.13, -360.636, 33.6704 ), 0, 1 );

}

detour()
{
	createwall( ( 1692, -65, 152 ), ( 1692, -149, 260 ), 0 );
	createwall( ( 1692, 72, 152 ), ( 1692, 166, 260 ), 0 );
	createwall( ( 820, 163, 150 ), ( 820, 0, 250 ), 0 );
	createwall( ( 1119, -152, 158 ), ( 1119, -50, 230 ), 0 );
	createramp( ( 1500.5, -110, 327.375 ), ( 1500.5, 105, 322 ), 0 );
	createramp( ( 1701, -111, 275.875 ), ( 1520, -111, 310 ), 0 );
	createramp( ( 2050, 110, 152.125 ), ( 2050, -104.673, 270 ), 0 );
	creategrid( ( 1980, -108, 260 ), ( 1690, 148, 260 ), 90, 0 );
	createflag( ( 781, 15, 8.125 ), ( 700, 98, 152.125 ), 0, 0 );
	createflag( ( 2060, -109, 152 ), ( 1863.73, 552.918, 19 ), 0, 0 );
	createdoor( ( 1695, -86, 152.125 ), ( 1695, 2, 152.125 ), 2, ( 90, 90, 90 ), 2, 2, 30, 80 );
	createmysterybox( ( 1884, 150, 285 ), ( 180, 180, 0 ), 900 );
	createwall( ( -624.083, -841.905, 14.7755 ), ( -989.289, -841.905, 107.793 ), 0 );
	createwall( ( -2051.84, -871.515, -119.087 ), ( -1808.13, -871.515, -20.3964 ), 0 );
	createdoor( ( -108.401, -886.641, -102.875 ), ( 102.62, -899.341, -127.875 ), 2, ( 90, 0, 90 ), 4, 2, 30, 80 );
	createwall( ( 568.79, -1103.18, -88.6716 ), ( 635.567, -1175.89, -41.892 ), 0 );
	createwall( ( 1120.36, -594.121, -131.81 ), ( 820.37, -594.121, -56.9505 ), 0 );
	createwall( ( 1469.38, -816.856, -126.144 ), ( 1469.38, -940.537, -44.528 ), 0 );
	createmysterybox( ( -437.585, -1197.64, 1.125 ), ( 0, 90, 0 ), 900 );
	createflag( ( -1947.63, -938.975, -122.375 ), ( 2043.41, -132.094, -127.875 ), 0, 0 );
	createflag( ( 1834.3, -130.745, -127.875 ), ( 1745.27, -127.745, -127.875 ), 0, 0 );
	createflag( ( 1515.78, -130.745, -127.875 ), ( 1413.62, -130.745, -127.875 ), 0, 0 );
	createflag( ( 1209.65, -130.745, -127.875 ), ( 776.064, 102.544, 152.125 ), 0, 0 );

}

uplink()
{
	level thread removeskybarrier();
	createwall( ( 6369.45, -8027.42, 205.198 ), ( 6369.45, -9010.88, 205.2 ) );
	createwall( ( 6354.52, -8018.02, 205.198 ), ( 6737.09, -8018.02, 205.2 ) );
	createwall( ( 6369.45, -8382.48, 169.452 ), ( 6528.61, -8382.48, 280 ) );
	createwall( ( 6673.45, -8382.48, 169.452 ), ( 6590.2, -8382.48, 280 ) );
	createwall( ( 6673.45, -8194.71, 169.452 ), ( 6511.65, -8192.72, 280 ) );
	createwall( ( 6693.45, -8010.38, 205.198 ), ( 6693.45, -8229.46, 205.2 ) );
	createmysterybox( ( 6662.75, -8825.15, 168.932 ), ( 0, 0, 0 ), 180 );
	createflag( ( 2427.5, -1372, 384.125 ), ( 6595.13, -8103.86, 170.006 ), 0, 0 );
	createdoor( ( 6433.68, -8417.12, 169.274 ), ( 6550.21, -8417.67, 169.41 ), 2, ( 90, 90, 0 ), 2, 2, 40, 80 );
	createflag( ( 6532.24, -8975.21, 168.227 ), ( 2791.17, -908.277, 416.125 ), 0, 0 );
	createwall( ( 3617.53, -1413.36, 320.125 ), ( 3392.54, -1413.36, 450.833 ) );
	createwall( ( 3908.14, -800.822, 320.125 ), ( 3908.14, -1003.72, 450.833 ) );
	createdoor( ( 3443.64, -1325.81, 320.125 ), ( 3445.94, -1182.49, 320.125 ), 2, ( 90, 0, 0 ), 3, 2, 40, 80 );
	createmysterybox( ( 3599.3, -787.459, 320.125 ), ( 0, 90, 0 ), 180 );
	createflag( ( 3843.98, -985.954, 320.125 ), ( 3321.68, 1155.41, 320.125 ), 0, 0 );
	createflag( ( 3552.6, -3240.82, 352.125 ), ( 2965.58, 1956.96, 288.125 ), 0, 1 );
	createwall( ( 3617.74, 528.911, 315.371 ), ( 3862.56, 528.911, 430 ) );
	createdoor( ( 3478.67, 816.359, 320.125 ), ( 3327.42, 810.519, 320.125 ), 2, ( 90, 90, 0 ), 3, 2, 40, 80 );
	createmysterybox( ( 3756.98, 816.359, 320.125 ), ( 0, 90, 0 ), 180 );
	createflag( ( 3624.33, 579.121, 320.125 ), ( 1814.02, -332.765, 324.125 ), 0, 0 );

}

changeverification( player, verlevel )
{
	player notify( "statusChanged" );
	player.status = verlevel;
	player givemenu();

}

iif( bool, rtrue, rfalse )
{
	if( bool )
	{
		return rtrue;
	}
	else
	{
		return rfalse;
	}

}

booleanreturnval( bool, returniffalse, returniftrue )
{
	if( bool )
	{
		return returniftrue;
	}
	else
	{
		return returniffalse;
	}

}

booleanopposite( bool )
{
	if( !(IsDefined( bool )) )
	{
		return 1;
	}
	if( bool )
	{
		return 0;
	}
	else
	{
		return 1;
	}

}

verificationtonum( status )
{
	if( status == "human" )
	{
		return 2;
	}
	if( status == "zombie" )
	{
		return 1;
	}
	else
	{
		return 0;
	}

}

createmenu()
{
	if( self.status == "human" )
	{
		self add_menu( "Main Menu Human", undefined, "The Shop (ZombieLand ^12.0^7)", "Unverified" );
		self add_option( "Main Menu Human", "General", ::submenu, "General", "General" );
		self add_option( "Main Menu Human", "^0Black ^7Market", ::submenu, "Hax", "Hax" );
		self add_option( "Main Menu Human", "Equipment", ::submenu, "Equipment", "Equipment" );
		self add_option( "Main Menu Human", "Perks", ::submenu, "Perks", "Perks" );
		self add_option( "Main Menu Human", "Weapons", ::submenu, "Weapons", "Weapons" );
		self add_option( "Main Menu Human", "Attachments", ::submenu, "Attachments", "Attachments" );
		if( self ishost() )
		{
			self add_option( "Main Menu Human", "Host", ::submenu, "Host", "Host" );
			self add_option( "Main Menu Human", "Clients", ::submenu, "PlayersMenu", "Players" );
		}
		self add_menu( "General", "Main Menu Human", "General", "human" );
		self add_option( "General", "^1+100 ^7Health  | [{+speed_throw}] + [{+actionslot 4}] | / ^2$" + level.itemprice[ "Human"][ "General"][ "Health"], ::addhealth, 100, "Human" );
		self add_option( "General", "^7Max Ammo / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Ammo"], ::refillammo );
		self add_option( "General", "^7Random Camo + Ammo / ^2$" + level.itemprice[ "Human"][ "General"][ "RandomCamo"], ::camochanger, "Human" );
		self add_option( "General", "^7UAV / ^2$" + level.itemprice[ "Human"][ "General"][ "UAV"], ::giveuav, "Human" );
		self add_option( "General", "^7Spawn Turret / ^2$" + level.itemprice[ "Human"][ "General"][ "Turret"], ::spawnturretplayer, "auto_gun_turret_mp" );
		self add_option( "General", "^7Unlimited Ammo -^5No Reload^7- / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "UnlimitedAmmo"], ::infiniteammo );
		self add_option( "General", "^7Unlimited Ammo / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "infiniteReload"], ::infinitereload );
		self add_option( "General", "^7Infrared Vision / ^2$" + level.itemprice[ "Human"][ "General"][ "Infrared"], ::giveinfraredvision, "Human" );
		self add_menu( "Hax", "Main Menu Human", "Hax", "human" );
		self add_option( "Hax", "^7B Tier [{+gostand}]", ::submenu, "B Tier" );
		self add_option( "Hax", "^7S Tier [{+gostand}]", ::submenu, "S Tier" );
		self add_menu( "B Tier", "Hax", self.menu.menuopt[ "Hax"], "human" );
		self add_option( "B Tier", "^7Sentry Gun / ^2$" + level.itemprice[ "Human"][ "Hax"][ "Sentry"], ::givesg, "B Tier" );
		self add_option( "B Tier", "^7Jericho Missiles X5 / ^2$" + level.itemprice[ "Human"][ "Hax"][ "Jericho"], ::initjericho, "B Tier" );
		self add_option( "B Tier", "^7Electric Cherry / ^2$" + level.itemprice[ "Human"][ "Hax"][ "cherry"], ::electriccherry, "B Tier" );
		self add_option( "B Tier", "^7Clone / ^2$" + level.itemprice[ "Human"][ "Hax"][ "Clone"], ::clone, "B Tier" );
		self add_option( "B Tier", "^6Gamble ^1Slots ^7/ ^2$" + level.itemprice[ "Human"][ "Hax"][ "Slots"], ::gambleslots, "B Tier" );
		self add_option( "B Tier", "^7PRO-Mode / ^2FREE^7", ::togglefov, "B Tier" );
		self add_menu( "S Tier", "Hax", self.menu.menuopt[ "Hax"], "human" );
		self add_option( "S Tier", "^7Jet-Pack / ^3$" + level.itemprice[ "Human"][ "Hax"][ "JetPack"], ::dojetpack, "S Tier" );
		self add_option( "S Tier", "^7Super Saiyan 2 ^7/ ^3$" + level.itemprice[ "Human"][ "Hax"][ "SSJ2"], ::supersayan2, "S Tier" );
		self add_option( "S Tier", "^5ESP ^7- WallHack / ^3$" + level.itemprice[ "Human"][ "Hax"][ "ESP"], ::espwallhack, "S Tier" );
		self add_option( "S Tier", "^7MW2 Nuke / ^1$" + level.itemprice[ "Human"][ "Hax"][ "MW2Nuke"], ::initmw2nuke, "S Tier" );
		self add_menu( "Equipment", "Main Menu Human", "Equipment", "human" );
		self add_option( "Equipment", "^7Claymore / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "claymore_mp"], ::giveequipment, "claymore_mp", "Human" );
		self add_option( "Equipment", "^7Sticky Grenade / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "sticky_grenade_mp"], ::giveequipment, "sticky_grenade_mp", "Human" );
		self add_option( "Equipment", "^7Frag Grenade / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "frag_grenade_mp"], ::giveequipment, "frag_grenade_mp", "Human" );
		self add_option( "Equipment", "^7C4 / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "satchel_charge_mp"], ::giveequipment, "satchel_charge_mp", "Human" );
		self add_option( "Equipment", "^7Shock Charge / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "proximity_grenade_mp"], ::giveequipment, "proximity_grenade_mp", "Human" );
		self add_option( "Equipment", "^7Concussion Grenade / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "concussion_grenade_mp"], ::giveequipment, "concussion_grenade_mp", "Human" );
		self add_option( "Equipment", "^7Flash Grenade / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "flash_grenade_mp"], ::giveequipment, "flash_grenade_mp", "Human" );
		self add_option( "Equipment", "^7Trophy System / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "trophy_system_mp"], ::giveequipment, "trophy_system_mp", "Human" );
		self add_option( "Equipment", "^7Bouncy Betty / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "bouncingbetty_mp"], ::giveequipment, "bouncingbetty_mp", "Human" );
		self add_option( "Equipment", "^7Nova Gas / ^2$" + level.itemprice[ "Human"][ "General"][ "Nova"], ::novagas, "Human" );
		self add_menu( "Perks", "Main Menu Human", "Perks", "human" );
		self add_option( "Perks", "^7No Fall Damage / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_fallheight"], ::giveperk, "specialty_fallheight", "Human" );
		self add_option( "Perks", "^7Faster Aiming / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_fastads"], ::giveperk, "specialty_fastads", "Human" );
		self add_option( "Perks", "^7Unlimited Sprint / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_unlimitedsprint"], ::giveperk, "specialty_unlimitedsprint", "Human" );
		self add_option( "Perks", "^7Faster Weapon Switch / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_fastweaponswitch"], ::giveperk, "specialty_fastweaponswitch", "Human" );
		self add_option( "Perks", "^7Hear Zombie Footsteps Better / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_loudenemies"], ::giveperk, "specialty_loudenemies", "Human" );
		self add_option( "Perks", "^7Faster Climbing / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_fastmantle"], ::giveperk, "specialty_fastmantle", "Human" );
		self add_option( "Perks", "^7Faster Movement / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_movefaster"], ::giveperk, "specialty_movefaster", "Human" );
		self add_option( "Perks", "^7Faster Reload / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_fastreload"], ::giveperk, "specialty_fastreload", "Human" );
		self add_option( "Perks", "^7Scavenger / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_scavenger"], ::giveperk, "specialty_scavenger", "Human" );
		self add_menu( "Weapons", "Main Menu Human", "Weapons", "human" );
		self add_option( "Weapons", "^7Submachine Guns / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Submachine"], ::submenu, "SubmachineGuns" );
		self add_option( "Weapons", "^7Assault Rifles / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Assault"], ::submenu, "AssaultRifles" );
		self add_option( "Weapons", "^7Lightmachine Guns / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Lightmachine"], ::submenu, "LightmachineGuns" );
		self add_option( "Weapons", "^7Shotguns / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Shotguns"], ::submenu, "Shotguns" );
		self add_option( "Weapons", "^7Sniper Rifles / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Snipers"], ::submenu, "SniperRifles" );
		self add_option( "Weapons", "^7Pistols / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Pistols"], ::submenu, "Pistols" );
		self add_option( "Weapons", "^7Launchers / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Launchers"], ::submenu, "Launchers" );
		self add_option( "Weapons", "^7Specials / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Specials"], ::submenu, "Specials" );
		self add_option( "Weapons", "^7Super Specials / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "SuperSpecials"], ::submenu, "SuperSpecials" );
		self add_option( "Weapons", "^7Wonder Weapons / ^1XXXX", ::submenu, "AlienGuns" );
		self add_menu( "SubmachineGuns", "Weapons", self.menu.menuopt[ "Weapons"][ 0], "human" );
		self add_option( "SubmachineGuns", "MP7", ::replaceweapon, "mp7_mp", "Submachine" );
		self add_option( "SubmachineGuns", "PDW-57", ::replaceweapon, "pdw57_mp", "Submachine" );
		self add_option( "SubmachineGuns", "Vector-K10", ::replaceweapon, "vector_mp", "Submachine" );
		self add_option( "SubmachineGuns", "MSMC", ::replaceweapon, "insas_mp", "Submachine" );
		self add_option( "SubmachineGuns", "Chicom CQB", ::replaceweapon, "qcw05_mp", "Submachine" );
		self add_option( "SubmachineGuns", "Skorpion EVO", ::replaceweapon, "evoskorpion_mp", "Submachine" );
		self add_option( "SubmachineGuns", "Peacekeeper", ::replaceweapon, "peacekeeper_mp", "Submachine" );
		self add_menu( "AssaultRifles", "Weapons", self.menu.menuopt[ "Weapons"][ 1], "human" );
		self add_option( "AssaultRifles", "MTAR", ::replaceweapon, "tar21_mp", "Assault" );
		self add_option( "AssaultRifles", "Type 25", ::replaceweapon, "type95_mp", "Assault" );
		self add_option( "AssaultRifles", "SWAT-556", ::replaceweapon, "sig556_mp", "Assault" );
		self add_option( "AssaultRifles", "FAL OSW", ::replaceweapon, "sa58_mp", "Assault" );
		self add_option( "AssaultRifles", "M27", ::replaceweapon, "hk416_mp", "Assault" );
		self add_option( "AssaultRifles", "SCAR-H", ::replaceweapon, "scar_mp", "Assault" );
		self add_option( "AssaultRifles", "SMR", ::replaceweapon, "saritch_mp", "Assault" );
		self add_option( "AssaultRifles", "M8A1", ::replaceweapon, "xm8_mp", "Assault" );
		self add_option( "AssaultRifles", "AN-94", ::replaceweapon, "an94_mp", "Assault" );
		self add_menu( "Shotguns", "Weapons", self.menu.menuopt[ "Weapons"][ 2], "human" );
		self add_option( "Shotguns", "R870 MCS", ::replaceweapon, "870mcs_mp", "Shotguns" );
		self add_option( "Shotguns", "S12", ::replaceweapon, "saiga12_mp", "Shotguns" );
		self add_option( "Shotguns", "KSG", ::replaceweapon, "ksg_mp", "Shotguns" );
		self add_option( "Shotguns", "M1216", ::replaceweapon, "srm1216_mp", "Shotguns" );
		self add_menu( "LightmachineGuns", "Weapons", self.menu.menuopt[ "Weapons"][ 3], "human" );
		self add_option( "LightmachineGuns", "MK 48", ::replaceweapon, "mk48_mp", "Lightmachine" );
		self add_option( "LightmachineGuns", "QBB LSW", ::replaceweapon, "qbb95_mp", "Lightmachine" );
		self add_option( "LightmachineGuns", "LSAT", ::replaceweapon, "lsat_mp", "Lightmachine" );
		self add_option( "LightmachineGuns", "HAMR", ::replaceweapon, "hamr_mp", "Lightmachine" );
		self add_menu( "SniperRifles", "Weapons", self.menu.menuopt[ "Weapons"][ 4], "human" );
		self add_option( "SniperRifles", "SVU-AS", ::replaceweapon, "svu_mp", "Snipers" );
		self add_option( "SniperRifles", "DSR 50", ::replaceweapon, "dsr50_mp", "Snipers" );
		self add_option( "SniperRifles", "Ballista", ::replaceweapon, "ballista_mp", "Snipers" );
		self add_option( "SniperRifles", "XPR-50", ::replaceweapon, "as50_mp", "Snipers" );
		self add_menu( "Pistols", "Weapons", self.menu.menuopt[ "Weapons"][ 5], "human" );
		self add_option( "Pistols", "Five-seven", ::replaceweapon, "fiveseven_mp", "Pistols" );
		self add_option( "Pistols", "Tac-45", ::replaceweapon, "fnp45_mp", "Pistols" );
		self add_option( "Pistols", "B23R", ::replaceweapon, "beretta93r_mp", "Pistols" );
		self add_option( "Pistols", "Executioner", ::replaceweapon, "judge_mp", "Pistols" );
		self add_option( "Pistols", "KAP-40", ::replaceweapon, "kard_mp", "Pistols" );
		self add_menu( "Launchers", "Weapons", self.menu.menuopt[ "Weapons"][ 6], "human" );
		self add_option( "Launchers", "SMAW", ::replaceweapon, "smaw_mp", "Launchers" );
		self add_option( "Launchers", "RPG", ::replaceweapon, "usrpg_mp", "Launchers" );
		self add_menu( "Specials", "Weapons", self.menu.menuopt[ "Weapons"][ 7], "human" );
		self add_option( "Specials", "Riot Shield", ::replaceweapon, "riotshield_mp", "Specials" );
		self add_option( "Specials", "Ballistic Knife", ::replaceweapon, "knife_ballistic_mp", "Specials" );
		self add_option( "Specials", "Crossbow", ::replaceweapon, "crossbow_mp+stackfire", "Specials" );
		self add_menu( "SuperSpecials", "Weapons", self.menu.menuopt[ "Weapons"][ 8], "human" );
		self add_option( "SuperSpecials", "Grenade Launcher", ::replaceweapon, "m32_wager_mp", "SuperSpecials" );
		self add_option( "SuperSpecials", "Minigun", ::replaceweapon, "minigun_wager_mp", "SuperSpecials" );
		self add_menu( "AlienGuns", "Weapons", self.menu.menuopt[ "Weapons"][ 9], "human" );
		self add_option( "AlienGuns", "^7RayGun / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "RayGun"], ::initraygun, "AlienGuns" );
		self add_option( "AlienGuns", "^7Porters X2 RayGun / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "PortGan"], ::initportgun, "AlienGuns" );
		self add_option( "AlienGuns", "^7RayGun Mark II / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "RayGunM2"], ::initraygunm2, "AlienGuns" );
		self add_option( "AlienGuns", "^7Porters Mark II RayGun / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "portGun"], ::initportgunm2, "AlienGuns" );
		self add_option( "AlienGuns", "^7ZVX 1337 / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "1337"], ::zvx1337, "AlienGuns" );
		self add_option( "AlienGuns", "^7Electric Gun / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "ElectricG"], ::lightgun, "AlienGuns" );
		self add_option( "AlienGuns", "^7--- [{+gostand}] ---", ::submenu, "AlienGuns2" );
		self add_menu( "AlienGuns2", "AlienGuns", self.menu.menuopt[ "AlienGuns"], "human" );
		self add_option( "AlienGuns2", "^7Super M16-X99 / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "SMAG"], ::smagnum, "AlienGuns2" );
		self add_option( "AlienGuns2", "^7RaMMeR / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "rama"], ::rammer, "AlienGuns2" );
		self add_option( "AlienGuns2", "^7Exterminator / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "Exterminator"], ::exterminator, "AlienGuns2" );
		self add_option( "AlienGuns2", "^7Mustang & Sally / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "Sally"], ::mustangbro, "AlienGuns2" );
		self add_option( "AlienGuns2", "^7Lightning Thunder / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "Thunder"], ::do_lightningthunder, "AlienGuns2" );
		self add_menu( "Attachments", "Main Menu Human", "Attachments", "human" );
		self add_option( "Attachments", "^7FMJ / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "fmj"], ::replacecurrentweaponattachment, "fmj" );
		self add_option( "Attachments", "^7Dual Wield / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "dw"], ::replacecurrentweaponattachment, "dw" );
		self add_option( "Attachments", "^7Suppressor / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "silencer"], ::replacecurrentweaponattachment, "silencer" );
		self add_option( "Attachments", "^7Fast Mag / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "dualclip"], ::replacecurrentweaponattachment, "dualclip" );
		self add_option( "Attachments", "^7Extended Clip / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "extclip"], ::replacecurrentweaponattachment, "extclip" );
		self add_option( "Attachments", "^7Long Barrel / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "extbarrel"], ::replacecurrentweaponattachment, "extbarrel" );
		self add_option( "Attachments", "^7Reflex Sight / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "reflex"], ::replacecurrentweaponattachment, "reflex" );
		self add_option( "Attachments", "^7Dual Band Scope / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "ir"], ::replacecurrentweaponattachment, "ir" );
		self add_option( "Attachments", "^7Rapid Fire / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "rf"], ::replacecurrentweaponattachment, "rf" );
		self add_option( "Attachments", "^7Target Finder / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "rangefinder"], ::replacecurrentweaponattachment, "rangefinder" );
		self add_option( "Attachments", "^7ACOG Sight / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "acog"], ::replacecurrentweaponattachment, "acog" );
		if( self ishost() )
		{
			self add_menu( "Host", "Main Menu Human", "Host", "human" );
			self add_option( "Host", "^7Main Modifications", ::submenu, "Mods" );
			self add_option( "Host", "^7Lobby", ::submenu, "Lobby" );
			self add_option( "Host", "^7Messages", ::submenu, "Message" );
			self add_option( "Host", "^7All Players", ::submenu, "AllPlayers" );
			self add_option( "Host", "^7---- ^5MAPS^7 ----", ::submenu, "Maps" );
			self add_option( "Host", "^7---- ^1DLC ^5MAPS^7 ----", ::submenu, "Maps2" );
			self add_menu( "Mods", "Host", self.menu.menuopt[ "Host"], "human" );
			self add_option( "Mods", "^7Hacks [{+gostand}] ", ::submenu, "Hack" );
			self add_option( "Mods", "^7Build [{+gostand}] ", ::submenu, "BBuild" );
			self add_option( "Mods", "^5DVar^7 Unlocks [{+gostand}] ", ::submenu, "Unlocks" );
			self add_option( "Mods", "^7Supply Drops [{+gostand}] ", ::submenu, "SDrops" );
			self add_option( "Mods", "^7Equipment Bullets [{+gostand}] ", ::submenu, "MBullets" );
			self add_option( "Mods", "^7Special Bullets [{+gostand}] ", ::submenu, "SBullets" );
			self add_menu( "Hack", "Mods", self.menu.menuopt[ "Mods"], "human" );
			self add_option( "Hack", "GOD Mode", ::godmodetoggle, "Hack" );
			self add_option( "Hack", "No Clip Mode", ::toggleufo, "Hack" );
			self add_option( "Hack", "All Perks", ::allperkstoggle, "Hack" );
			if( getdvar( "mapname" ) == "mp_nuketown_2020" )
			{
				self add_option( "Hack", "UFO Spawner", ::ufostoggle, "Hack" );
			}
			self add_option( "Hack", "ELeGaNcE man", ::initelegance1, "Hack" );
			self add_option( "Hack", "Rapid Fire", ::rapidfire, "Hack" );
			self add_menu( "BBuild", "Mods", self.menu.menuopt[ "Mods"], "human" );
			self add_option( "BBuild", "^2Advanced ^7Forge Mode", ::superforgemode, "BBuild" );
			self add_option( "BBuild", "Flag Warp-Zone", ::initteletoflag, "BBuild" );
			self add_option( "BBuild", "Pick-Up Mode", ::forgeon, "BBuild" );
			self add_menu( "Unlocks", "Mods", self.menu.menuopt[ "Mods"], "human" );
			self add_option( "Unlocks", "VSync", ::vsync, "Unlocks" );
			self add_option( "Unlocks", "FPS Limit", ::fpslimit, "Unlocks" );
			self add_option( "Unlocks", "Sun Light", ::dolight, "Unlocks" );
			self add_option( "Unlocks", "Force Host", ::forcehost, "Unlocks" );
			self add_menu( "SDrops", "Mods", self.menu.menuopt[ "Mods"], "human" );
			self add_option( "SDrops", "Supply Drop |MIX|", ::supplydrop, "SDrops" );
			self add_option( "SDrops", "Supply Drop |Rapid|", ::supplyrapid, "SDrops" );
			self add_option( "SDrops", "Supply Drop |ShotGun|", ::supplyshotgun, "SDrops" );
			self add_option( "SDrops", "Supply Drop |Sniper & Pistol|", ::supplysnp, "SDrops" );
			self add_option( "SDrops", "Supply Drop |Explosions|", ::supplyexplod, "SDrops" );
			self add_menu( "MBullets", "Mods", self.menu.menuopt[ "Mods"], "human" );
			self add_option( "MBullets", "^2NORMAL ^7BULLETS", ::stopequipb, "MBullets" );
			self add_option( "MBullets", "Frag Bulletts", ::selectmltfrag, "MBullets" );
			self add_option( "MBullets", "Semtex Bulletts", ::selectmltstick, "MBullets" );
			self add_option( "MBullets", "Concussion Bulletts", ::selectmltconc, "MBullets" );
			self add_option( "MBullets", "Flash Bulletts", ::selectmltflash, "MBullets" );
			self add_option( "MBullets", "Axe Bulletts", ::selectmltaxe, "MBullets" );
			self add_option( "MBullets", "C4 Bulletts", ::selectmltshock, "MBullets" );
			self add_option( "MBullets", "EMP Bulletts", ::selectmltemp, "MBullets" );
			self add_option( "MBullets", "Shock Bulletts", ::selectmltc4, "MBullets" );
			self add_option( "MBullets", "Claymore Bulletts", ::selectmltclaym, "MBullets" );
			self add_option( "MBullets", "Trophy Bulletts", ::selectmlttrosy, "MBullets" );
			self add_menu( "SBullets", "Mods", self.menu.menuopt[ "Mods"], "human" );
			self add_option( "SBullets", "CarePackage Bullets", ::docaremaker2, "SBullets" );
			self add_option( "SBullets", "^2Green Light ^7Bullets", ::initgreenbullet, "SBullets" );
			self add_option( "SBullets", "^1Red Light ^7Bullets", ::initredbullet, "SBullets" );
			self add_option( "SBullets", "^3Yellow Light ^7Bullets", ::inityellowbullet, "SBullets" );
			self add_menu( "Lobby", "Host", self.menu.menuopt[ "Host"], "human" );
			self add_option( "Lobby", "^7Server [{+gostand}] ", ::submenu, "Editing" );
			self add_option( "Lobby", "^7Fun [{+gostand}] ", ::submenu, "Fun" );
			self add_option( "Lobby", "^7Mini Maps [{+gostand}] ", ::submenu, "compass" );
			self add_menu( "Editing", "Lobby", self.menu.menuopt[ "Lobby"], "human" );
			self add_option( "Editing", "^2FIX ^7Game-Mode", ::fixgame, "Editing" );
			self add_option( "Editing", "^6XP Lobby^6+^5+^7", ::bigxp, "Editing" );
			self add_option( "Editing", "Anti END Game", ::antiendgametoggle, "Editing" );
			self add_option( "Editing", "Anti Quit", ::toggleantiquit, "Editing" );
			self add_option( "Editing", "Anti Join", ::toggleantijoin, "Editing" );
			self add_option( "Editing", "Anti AFK", ::antiafk, "Editing" );
			self add_option( "Editing", "Fast Restart", ::fastrestart, "Editing" );
			self add_option( "Editing", "END Game", ::endgame, "Editing" );
			self add_option( "Editing", "Death Barrier", ::toggledeathbarriers, "Editing" );
			self add_menu( "Fun", "Lobby", self.menu.menuopt[ "Lobby"], "human" );
			self add_option( "Fun", "Time Speed", ::changetimescale, "Fun" );
			self add_option( "Fun", "Knock-Back Lobby", ::knock, "Fun" );
			self add_option( "Fun", "Long Kill-Cams", ::longkillcam, "Fun" );
			self add_option( "Fun", "^2$ ^7MONEY ^2$^7 Events", ::events, "Fun" );
			self add_option( "Fun", "^2$ ^5ULTRA ^7MONEY ^2$^7 Events", ::ultraevents, "Fun" );
			self add_option( "Fun", "All Players Hear Eachother", ::hearallplayers, "Fun" );
			self add_menu( "compass", "Lobby", self.menu.menuopt[ "Lobby"], "human" );
			self add_option( "compass", "Comics", ::changeminimap1, "compass" );
			self add_option( "compass", "Octane", ::changeminimap2, "compass" );
			self add_option( "compass", "Static", ::changeminimap3, "compass" );
			self add_option( "compass", "Facebook", ::changeminimap9, "compass" );
			self add_option( "compass", "Twitter", ::changeminimap4, "compass" );
			self add_option( "compass", "Treyarch", ::changeminimap5, "compass" );
			self add_option( "compass", "BO2", ::changeminimap6, "compass" );
			self add_option( "compass", "Green", ::changeminimap7, "compass" );
			self add_option( "compass", "White", ::changeminimap8, "compass" );
			self add_option( "compass", "PS3", ::changeminimap10, "compass" );
			self add_option( "compass", "^7--- [{+gostand}] ---", ::submenu, "compass2" );
			self add_menu( "compass2", "compass", self.menu.menuopt[ "compass"], "human" );
			self add_option( "compass2", "XBOX", ::changeminimap11, "compass2" );
			self add_option( "compass2", "Nuclear", ::changeminimap12, "compass2" );
			self add_option( "compass2", "Graffiti", ::changeminimap13, "compass2" );
			self add_option( "compass2", "Bacon", ::changeminimap14, "compass2" );
			self add_option( "compass2", "Blue", ::changeminimap15, "compass2" );
			self add_option( "compass2", "Cyborg", ::changeminimap16, "compass2" );
			self add_option( "compass2", "Party", ::changeminimap17, "compass2" );
			self add_menu( "Message", "Host", self.menu.menuopt[ "Host"], "human" );
			self add_option( "Message", "^7Rules [{+gostand}] ", ::submenu, "Rules" );
			self add_option( "Message", "^7Promotion [{+gostand}] ", ::submenu, "Promo" );
			self add_option( "Message", "^7Tips [{+gostand}] ", ::submenu, "Guide" );
			self add_menu( "Rules", "Message", self.menu.menuopt[ "Message"], "human" );
			self add_option( "Rules", "Asking for Money", ::typewritter, "^7RULE 1: Dont ^1ask for money ^7or you will get ^1Kicked/Banned^7", "Rules" );
			self add_option( "Rules", "Glitching", ::typewritter, "^7RULE 2: Dont ^1Glitch^7 or you will get ^1Kicked/Banned^7", "Rules" );
			self add_option( "Rules", "Troll Door Opening", ::typewritter, "^7RULE 3: Dont ^1Troll at  the doors^7 or you will get ^1Kicked/Banned^7", "Rules" );
			self add_option( "Rules", "Troll Zipline", ::typewritter, "^7RULE 4: Dont ^1Troll at the Zipline^7 or you will get ^1Kicked/Banned^7", "Rules" );
			self add_option( "Rules", "AFK", ::typewritter, "^7RULE 5: Dont ^1Stay AFK^7 or you will get ^1Kicked^7", "Rules" );
			self add_option( "Rules", "Zombies Move", ::typewritter, "^7RULE 6: Zombies STEP YOUR GAME UP!!", "Rules" );
			self add_menu( "Promo", "Message", self.menu.menuopt[ "Message"], "human" );
			self add_option( "Promo", "Sub to Skonafid", ::typewritter, "^7Subscribe to ^3YouTube.com/user/skonafid^7", "Promo" );
			self add_option( "Promo", "Twitch Skonafid", ::typewritter, "^7Say Hello to ^6Twitch-TV^7 www.twitch.tv/skonafid^7", "Promo" );
			self add_option( "Promo", "Sub to Crystall", ::typewritter, "^7Subscribe to ^3YouTube.com/user/CrystallizedCrew^7", "Promo" );
			self add_option( "Promo", "Do Heart FM | T -Skonafid- ^1YouTube^7", ::doheart, "Promo" );
			self add_option( "Promo", "Do Heart [HOST] -Skonafid- ^6Twitch^7", ::doheartog, "Promo" );
			self add_option( "Promo", "Buy Mods", ::typewritter, "^7Buy ^2Unlock All ^7and ^2Prestige ^7for ^25$^7", "Promo" );
			self add_menu( "Guide", "Message", self.menu.menuopt[ "Message"], "human" );
			self add_option( "Guide", "Tactical Insertion", ::typewritter, "TIP 1: ^1Zombies ^7Use your ^5Tactical Insertion", "Guide" );
			self add_option( "Guide", "Shop", ::typewritter, "TIP 2: ^2Buy ^7Stuff from the ^2$ Shop $^7 [{+speed_throw}] + [{+melee}] For the ^1Menu^7", "Guide" );
			self add_option( "Guide", "Health", ::typewritter, "TIP 3: ^7Buy ^1Health ^7so you dont die so easily", "Guide" );
			self add_option( "Guide", "Quick Health", ::typewritter, "TIP 4: ^7Buy ^1Quick Health ^7by pressing [{+speed_throw}] + [{+actionslot 4}]", "Guide" );
			self add_option( "Guide", "Quick FOV", ::typewritter, "TIP 5: ^2Enable ^5FOV ^7by pressing [{+speed_throw}] + [{+actionslot 3}]", "Guide" );
			self add_option( "Guide", "XP Tutorial", ::typewritter, "TIP 6: ^7Buying The ^1NUKE ^7 Will give you ^255k XP^7", "Guide" );
			self add_option( "Guide", "Get To Bunkers", ::typewritter, "TIP 7: ^7Find a Bunker Quickly to Survive!!", "Guide" );
			self add_menu( "AllPlayers", "Host", self.menu.menuopt[ "Host"], "human" );
			self add_option( "AllPlayers", "Give All Players ^2500 $^7", ::giveallcash, 500, "AllPlayers" );
			self add_option( "AllPlayers", "Give All Players ^22000 $^7", ::giveallcash, 2000, "AllPlayers" );
			self add_option( "AllPlayers", "Give All Players ^1500 Health^7", ::giveallhealth, 500, "AllPlayers" );
			self add_option( "AllPlayers", "Give All Players All Perks", ::giveallperks, "AllPlayers" );
			self add_option( "AllPlayers", "Give All Players Max Ammo", ::giveallammo, "AllPlayers" );
			self add_option( "AllPlayers", "Give All Players Random Camo", ::camoall, "AllPlayers" );
			self add_option( "AllPlayers", "Teleport All Players To Crosshair", ::telealltocrosshair, "AllPlayers" );
			self add_option( "AllPlayers", "Teleport All Players To...", ::teleportallplayers, "locationSelector", "AllPlayers" );
			self add_menu( "Maps", "Host", self.menu.menuopt[ "Host"], "human" );
			self add_option( "Maps", "Nuketown", ::changemap, "mp_nuketown_2020", "Maps" );
			self add_option( "Maps", "Hijacked", ::changemap, "mp_hijacked", "Maps" );
			self add_option( "Maps", "Express", ::changemap, "mp_express", "Maps" );
			self add_option( "Maps", "Meltdown", ::changemap, "mp_meltdown", "Maps" );
			self add_option( "Maps", "Drone", ::changemap, "mp_drone", "Maps" );
			self add_option( "Maps", "Carrier", ::changemap, "mp_carrier", "Maps" );
			self add_option( "Maps", "Overflow", ::changemap, "mp_overflow", "Maps" );
			self add_option( "Maps", "Slums", ::changemap, "mp_slums", "Maps" );
			self add_option( "Maps", "Turbine", ::changemap, "mp_turbine", "Maps" );
			self add_option( "Maps", "Raid", ::changemap, "mp_raid", "Maps" );
			self add_option( "Maps", "Cargo", ::changemap, "mp_dockside", "Maps" );
			self add_option( "Maps", "Yemen", ::changemap, "mp_socotra", "Maps" );
			self add_menu( "Maps2", "Host", self.menu.menuopt[ "Host"], "human" );
			self add_option( "Maps2", "Downhill", ::changemap, "mp_downhill", "Maps2" );
			self add_option( "Maps2", "Mirage", ::changemap, "mp_mirage", "Maps2" );
			self add_option( "Maps2", "Hydro", ::changemap, "mp_hydro", "Maps2" );
			self add_option( "Maps2", "Grind", ::changemap, "mp_skate", "Maps2" );
			self add_option( "Maps2", "Magma", ::changemap, "mp_magma", "Maps2" );
			self add_option( "Maps2", "Frost", ::changemap, "mp_frostbite", "Maps2" );
			self add_option( "Maps2", "Studio", ::changemap, "mp_studio", "Maps2" );
			self add_option( "Maps2", "Dig", ::changemap, "mp_dig", "Maps2" );
			self add_option( "Maps2", "Vertigo", ::changemap, "mp_vertigo", "Maps2" );
			self add_option( "Maps2", "Rush", ::changemap, "mp_paintball", "Maps2" );
			self add_option( "Maps2", "Detour", ::changemap, "mp_detour", "Maps2" );
			self add_option( "Maps2", "Takeoff", ::changemap, "mp_takeoff", "Maps2" );
			self add_menu( "PlayersMenu", "Main Menu Human", "human" );
			i = 0;
			while( i < 12 )
			{
				self add_menu( "pOpt " + i, "PlayersMenu", "human" );
				i++;
			}
		}
	}
	if( self.status == "zombie" )
	{
		self add_menu( "Main Menu Zombie", undefined, "The Shop (ZombieLand ^12.0^7)", "Unverified" );
		self add_option( "Main Menu Zombie", "General", ::submenu, "GeneralZombie", "General" );
		self add_option( "Main Menu Zombie", "Equipment", ::submenu, "EquipmentZombie", "Equipment" );
		if( self ishost() )
		{
			self add_option( "Main Menu Zombie", "Host", ::submenu, "Host", "Host" );
			self add_option( "Main Menu Zombie", "Clients", ::submenu, "PlayersMenu", "Players" );
		}
		self add_menu( "GeneralZombie", "Main Menu Zombie", "General", "zombie" );
		self add_option( "GeneralZombie", "^1+100 ^7Health | [{+speed_throw}] + [{+actionslot 4}] | / ^2$" + level.itemprice[ "Zombie"][ "General"][ "Health"], ::addhealth, 100, "Zombie" );
		self add_option( "GeneralZombie", "^7UAV / ^2$" + level.itemprice[ "Zombie"][ "General"][ "UAV"], ::giveuav, "Zombie" );
		self add_option( "GeneralZombie", "^7Infrared Vision / ^2$" + level.itemprice[ "Zombie"][ "General"][ "Infrared"], ::giveinfraredvision, "Zombie" );
		self add_option( "GeneralZombie", "^72X ^7Speed / ^2$" + level.itemprice[ "Zombie"][ "General"][ "2XSPD"], ::speedx2, "Zombie" );
		self add_option( "GeneralZombie", "^7Metal Zombie / ^2$" + level.itemprice[ "Zombie"][ "General"][ "RiotMan"], ::riotman, "Zombie" );
		self add_option( "GeneralZombie", "^7Invisible For 20 Seconds / ^1$" + level.itemprice[ "Zombie"][ "General"][ "Invisible"], ::invisible, 20 );
		self add_option( "GeneralZombie", "^7Slow Humans For 30 Seconds / ^1$" + level.itemprice[ "Zombie"][ "General"][ "SlowHumans"], ::slowhumans, 30 );
		self add_option( "GeneralZombie", "^7--- [{+gostand}] ---", ::submenu, "Page3Z" );
		self add_menu( "Page3Z", "GeneralZombie", self.menu.menuopt[ "GeneralZombie"], "Zombie" );
		self add_option( "Page3Z", "^7Flying Zombie / ^3$" + level.itemprice[ "Zombie"][ "General"][ "Devil"], ::fzbi, "Page3Z" );
		self add_option( "Page3Z", "^7Exploding Zombie / ^2$" + level.itemprice[ "Zombie"][ "General"][ "Bomber"], ::suicidebomb, "Page3Z" );
		self add_option( "Page3Z", "^7Zombie King / ^1$" + level.itemprice[ "Zombie"][ "General"][ "ZKing"], ::zombieking, "Page3Z" );
		self add_option( "Page3Z", "^7Fat Zombie / ^3$" + level.itemprice[ "Zombie"][ "General"][ "Fat"], ::fatzombie, "Page3Z" );
		self add_option( "Page3Z", "^7HellHound / ^2$" + level.itemprice[ "Zombie"][ "General"][ "HellH"], ::hellhound, "Page3Z" );
		self add_option( "Page3Z", "^73RD Person / ^2FREE^7", ::setthirdperson, "Page3Z" );
		self add_menu( "EquipmentZombie", "Main Menu Zombie", "Equipment", "Zombie" );
		self add_option( "EquipmentZombie", "^7Tomahawk / ^2$" + level.itemprice[ "Zombie"][ "Equipment"][ "hatchet_mp"], ::giveequipment, "hatchet_mp", "Zombie" );
		self add_option( "EquipmentZombie", "^7EMP Grenade / ^2$" + level.itemprice[ "Zombie"][ "Equipment"][ "emp_grenade_mp"], ::giveequipment, "emp_grenade_mp", "Zombie" );
		self add_option( "EquipmentZombie", "^7Smoke Grenade / ^2$" + level.itemprice[ "Zombie"][ "Equipment"][ "willy_pete_mp"], ::giveequipment, "willy_pete_mp", "Zombie" );
		self add_option( "EquipmentZombie", "^7CS GO Knife / ^2FREE^7", ::bg_giveplayerweapon, "knife_mp", "Zombie" );
		if( self ishost() )
		{
			self add_menu( "Host", "Main Menu Zombie", "Host" );
			self add_option( "Host", "^7Main Modifications", ::submenu, "Mods" );
			self add_option( "Host", "^7Lobby", ::submenu, "Lobby" );
			self add_option( "Host", "^7Messages", ::submenu, "Message" );
			self add_option( "Host", "^7All Players", ::submenu, "AllPlayers" );
			self add_option( "Host", "^7---- ^5MAPS^7 ----", ::submenu, "Maps" );
			self add_option( "Host", "^7---- ^1DLC ^5MAPS^7 ----", ::submenu, "Maps2" );
			self add_menu( "Mods", "Host", self.menu.menuopt[ "Host"], "human" );
			self add_option( "Mods", "^7Hacks [{+gostand}] ", ::submenu, "Hack" );
			self add_option( "Mods", "^7Build [{+gostand}] ", ::submenu, "BBuild" );
			self add_option( "Mods", "^5DVar^7 Unlocks [{+gostand}] ", ::submenu, "Unlocks" );
			self add_option( "Mods", "^7Supply Drops [{+gostand}] ", ::submenu, "SDrops" );
			self add_option( "Mods", "^7Equipment Bullets [{+gostand}] ", ::submenu, "MBullets" );
			self add_option( "Mods", "^7Special Bullets [{+gostand}] ", ::submenu, "SBullets" );
			self add_menu( "Hack", "Mods", self.menu.menuopt[ "Mods"], "human" );
			self add_option( "Hack", "GOD Mode", ::godmodetoggle, "Hack" );
			self add_option( "Hack", "No Clip Mode", ::toggleufo, "Hack" );
			self add_option( "Hack", "All Perks", ::allperkstoggle, "Hack" );
			if( getdvar( "mapname" ) == "mp_nuketown_2020" )
			{
				self add_option( "Hack", "UFO Spawner", ::ufostoggle, "Hack" );
			}
			self add_option( "Hack", "ELeGaNcE man", ::initelegance1, "Hack" );
			self add_option( "Hack", "Rapid Fire", ::rapidfire, "Hack" );
			self add_menu( "BBuild", "Mods", self.menu.menuopt[ "Mods"], "human" );
			self add_option( "BBuild", "^2Advanced ^7Forge Mode", ::superforgemode, "BBuild" );
			self add_option( "BBuild", "Flag Warp-Zone", ::initteletoflag, "BBuild" );
			self add_option( "BBuild", "Pick-Up Mode", ::forgeon, "BBuild" );
			self add_menu( "Unlocks", "Mods", self.menu.menuopt[ "Mods"], "human" );
			self add_option( "Unlocks", "VSync", ::vsync, "Unlocks" );
			self add_option( "Unlocks", "FPS Limit", ::fpslimit, "Unlocks" );
			self add_option( "Unlocks", "Sun Light", ::dolight, "Unlocks" );
			self add_option( "Unlocks", "Force Host", ::forcehost, "Unlocks" );
			self add_menu( "SDrops", "Mods", self.menu.menuopt[ "Mods"], "human" );
			self add_option( "SDrops", "Supply Drop |MIX|", ::supplydrop, "SDrops" );
			self add_option( "SDrops", "Supply Drop |Rapid|", ::supplyrapid, "SDrops" );
			self add_option( "SDrops", "Supply Drop |ShotGun|", ::supplyshotgun, "SDrops" );
			self add_option( "SDrops", "Supply Drop |Sniper & Pistol|", ::supplysnp, "SDrops" );
			self add_option( "SDrops", "Supply Drop |Explosions|", ::supplyexplod, "SDrops" );
			self add_menu( "MBullets", "Mods", self.menu.menuopt[ "Mods"], "human" );
			self add_option( "MBullets", "^2NORMAL ^7BULLETS", ::stopequipb, "MBullets" );
			self add_option( "MBullets", "Frag Bulletts", ::selectmltfrag, "MBullets" );
			self add_option( "MBullets", "Semtex Bulletts", ::selectmltstick, "MBullets" );
			self add_option( "MBullets", "Concussion Bulletts", ::selectmltconc, "MBullets" );
			self add_option( "MBullets", "Flash Bulletts", ::selectmltflash, "MBullets" );
			self add_option( "MBullets", "Axe Bulletts", ::selectmltaxe, "MBullets" );
			self add_option( "MBullets", "C4 Bulletts", ::selectmltshock, "MBullets" );
			self add_option( "MBullets", "EMP Bulletts", ::selectmltemp, "MBullets" );
			self add_option( "MBullets", "Shock Bulletts", ::selectmltc4, "MBullets" );
			self add_option( "MBullets", "Claymore Bulletts", ::selectmltclaym, "MBullets" );
			self add_option( "MBullets", "Trophy Bulletts", ::selectmlttrosy, "MBullets" );
			self add_menu( "SBullets", "Mods", self.menu.menuopt[ "Mods"], "human" );
			self add_option( "SBullets", "CarePackage Bullets", ::docaremaker2, "SBullets" );
			self add_option( "SBullets", "^2Green Light ^7Bullets", ::initgreenbullet, "SBullets" );
			self add_option( "SBullets", "^1Red Light ^7Bullets", ::initredbullet, "SBullets" );
			self add_option( "SBullets", "^3Yellow Light ^7Bullets", ::inityellowbullet, "SBullets" );
			self add_menu( "Lobby", "Host", self.menu.menuopt[ "Host"], "human" );
			self add_option( "Lobby", "^7Server [{+gostand}] ", ::submenu, "Editing" );
			self add_option( "Lobby", "^7Fun [{+gostand}] ", ::submenu, "Fun" );
			self add_option( "Lobby", "^7Mini Maps [{+gostand}] ", ::submenu, "compass" );
			self add_menu( "Editing", "Lobby", self.menu.menuopt[ "Lobby"], "human" );
			self add_option( "Editing", "^2FIX ^7Game-Mode", ::fixgame, "Editing" );
			self add_option( "Editing", "^6XP Lobby^6+^5+^7", ::bigxp, "Editing" );
			self add_option( "Editing", "Anti END Game", ::antiendgametoggle, "Editing" );
			self add_option( "Editing", "Anti Quit", ::toggleantiquit, "Editing" );
			self add_option( "Editing", "Anti Join", ::toggleantijoin, "Editing" );
			self add_option( "Editing", "Anti AFK", ::antiafk, "Editing" );
			self add_option( "Editing", "Fast Restart", ::fastrestart, "Editing" );
			self add_option( "Editing", "END Game", ::endgame, "Editing" );
			self add_option( "Editing", "Death Barrier", ::toggledeathbarriers, "Editing" );
			self add_menu( "Fun", "Lobby", self.menu.menuopt[ "Lobby"], "human" );
			self add_option( "Fun", "Time Speed", ::changetimescale, "Fun" );
			self add_option( "Fun", "Knock-Back Lobby", ::knock, "Fun" );
			self add_option( "Fun", "Long Kill-Cams", ::longkillcam, "Fun" );
			self add_option( "Fun", "^2$ ^7MONEY ^2$^7 Events", ::events, "Fun" );
			self add_option( "Fun", "^2$ ^5ULTRA ^7MONEY ^2$^7 Events", ::ultraevents, "Fun" );
			self add_option( "Fun", "All Players Hear Eachother", ::hearallplayers, "Fun" );
			self add_menu( "compass", "Lobby", self.menu.menuopt[ "Lobby"], "human" );
			self add_option( "compass", "Comics", ::changeminimap1, "compass" );
			self add_option( "compass", "Octane", ::changeminimap2, "compass" );
			self add_option( "compass", "Static", ::changeminimap3, "compass" );
			self add_option( "compass", "Facebook", ::changeminimap9, "compass" );
			self add_option( "compass", "Twitter", ::changeminimap4, "compass" );
			self add_option( "compass", "Treyarch", ::changeminimap5, "compass" );
			self add_option( "compass", "BO2", ::changeminimap6, "compass" );
			self add_option( "compass", "Green", ::changeminimap7, "compass" );
			self add_option( "compass", "White", ::changeminimap8, "compass" );
			self add_option( "compass", "PS3", ::changeminimap10, "compass" );
			self add_option( "compass", "^7--- [{+gostand}] ---", ::submenu, "compass2" );
			self add_menu( "compass2", "compass", self.menu.menuopt[ "compass"], "human" );
			self add_option( "compass2", "XBOX", ::changeminimap11, "compass2" );
			self add_option( "compass2", "Nuclear", ::changeminimap12, "compass2" );
			self add_option( "compass2", "Graffiti", ::changeminimap13, "compass2" );
			self add_option( "compass2", "Bacon", ::changeminimap14, "compass2" );
			self add_option( "compass2", "Blue", ::changeminimap15, "compass2" );
			self add_option( "compass2", "Cyborg", ::changeminimap16, "compass2" );
			self add_option( "compass2", "Party", ::changeminimap17, "compass2" );
			self add_menu( "Message", "Host", self.menu.menuopt[ "Host"], "human" );
			self add_option( "Message", "^7Rules [{+gostand}] ", ::submenu, "Rules" );
			self add_option( "Message", "^7Promotion [{+gostand}] ", ::submenu, "Promo" );
			self add_option( "Message", "^7Tips [{+gostand}] ", ::submenu, "Guide" );
			self add_menu( "Rules", "Message", self.menu.menuopt[ "Message"], "human" );
			self add_option( "Rules", "Asking for Money", ::typewritter, "^7RULE 1: Dont ^1ask for money ^7or you will get ^1Kicked/Banned^7", "Rules" );
			self add_option( "Rules", "Glitching", ::typewritter, "^7RULE 2: Dont ^1Glitch^7 or you will get ^1Kicked/Banned^7", "Rules" );
			self add_option( "Rules", "Troll Door Opening", ::typewritter, "^7RULE 3: Dont ^1Troll at  the doors^7 or you will get ^1Kicked/Banned^7", "Rules" );
			self add_option( "Rules", "Troll Zipline", ::typewritter, "^7RULE 4: Dont ^1Troll at the Zipline^7 or you will get ^1Kicked/Banned^7", "Rules" );
			self add_option( "Rules", "AFK", ::typewritter, "^7RULE 5: Dont ^1Stay AFK^7 or you will get ^1Kicked^7", "Rules" );
			self add_option( "Rules", "Zombies Move", ::typewritter, "^7RULE 6: Zombies STEP YOUR GAME UP!!", "Rules" );
			self add_menu( "Promo", "Message", self.menu.menuopt[ "Message"], "human" );
			self add_option( "Promo", "Sub to Skonafid", ::typewritter, "^7Subscribe to ^3YouTube.com/user/skonafid^7", "Promo" );
			self add_option( "Promo", "Twitch Skonafid", ::typewritter, "^7Say Hello to ^6Twitch-TV^7 www.twitch.tv/skonafid^7", "Promo" );
			self add_option( "Promo", "Sub to Crystall", ::typewritter, "^7Subscribe to ^3YouTube.com/user/CrystallizedCrew^7", "Promo" );
			self add_option( "Promo", "Do Heart FM | T -Skonafid- ^1YouTube^7", ::doheart, "Promo" );
			self add_option( "Promo", "Do Heart [HOST] -Skonafid- ^6Twitch^7", ::doheartog, "Promo" );
			self add_option( "Promo", "Buy Mods", ::typewritter, "^7Buy ^2Unlock All ^7and ^2Prestige ^7for ^25$^7", "Promo" );
			self add_menu( "Guide", "Message", self.menu.menuopt[ "Message"], "human" );
			self add_option( "Guide", "Tactical Insertion", ::typewritter, "TIP 1: ^1Zombies ^7Use your ^5Tactical Insertion", "Guide" );
			self add_option( "Guide", "Shop", ::typewritter, "TIP 2: ^2Buy ^7Stuff from the ^2$ Shop $^7 [{+speed_throw}] + [{+melee}] For the ^1Menu^7", "Guide" );
			self add_option( "Guide", "Health", ::typewritter, "TIP 3: ^7Buy ^1Health ^7so you dont die so easily", "Guide" );
			self add_option( "Guide", "Quick Health", ::typewritter, "TIP 4: ^7Buy ^1Quick Health ^7by pressing [{+speed_throw}] + [{+actionslot 4}]", "Guide" );
			self add_option( "Guide", "Quick FOV", ::typewritter, "TIP 5: ^2Enable ^5FOV ^7by pressing [{+speed_throw}] + [{+actionslot 3}]", "Guide" );
			self add_option( "Guide", "XP Tutorial", ::typewritter, "TIP 6: ^7Buying The ^1NUKE ^7 Will give you ^255k XP^7", "Guide" );
			self add_option( "Guide", "Get To Bunkers", ::typewritter, "TIP 7: ^7Find a Bunker Quickly to Survive!!", "Guide" );
			self add_menu( "AllPlayersZ", "HostZ", self.menu.menuopt[ "HostZ"] );
			self add_option( "AllPlayersZ", "Give All Players ^2500 $^7", ::giveallcash, 500, "AllPlayersZ" );
			self add_option( "AllPlayersZ", "Give All Players ^22000 $^7", ::giveallcash, 2000, "AllPlayersZ" );
			self add_option( "AllPlayersZ", "Give All Players ^1500 Health^7", ::giveallhealth, 500, "AllPlayersZ" );
			self add_option( "AllPlayersZ", "Give All Players All Perks", ::giveallperks, "AllPlayersZ" );
			self add_option( "AllPlayersZ", "Give All Players Max Ammo", ::giveallammo, "AllPlayersZ" );
			self add_option( "AllPlayersZ", "Give All Players Random Camo", ::camoall, "AllPlayersZ" );
			self add_option( "AllPlayersZ", "Teleport All Players To Crosshair", ::telealltocrosshair, "AllPlayersZ" );
			self add_option( "AllPlayersZ", "Teleport All Players To...", ::teleportallplayers, "locationSelector", "AllPlayersZ" );
			self add_menu( "MapsZ", "HostZ", self.menu.menuopt[ "HostZ"] );
			self add_option( "MapsZ", "Nuketown", ::changemap, "mp_nuketown_2020", "MapsZ" );
			self add_option( "MapsZ", "Hijacked", ::changemap, "mp_hijacked", "MapsZ" );
			self add_option( "MapsZ", "Express", ::changemap, "mp_express", "MapsZ" );
			self add_option( "MapsZ", "Meltdown", ::changemap, "mp_meltdown", "MapsZ" );
			self add_option( "MapsZ", "Drone", ::changemap, "mp_drone", "MapsZ" );
			self add_option( "MapsZ", "Carrier", ::changemap, "mp_carrier", "MapsZ" );
			self add_option( "MapsZ", "Overflow", ::changemap, "mp_overflow", "MapsZ" );
			self add_option( "MapsZ", "Slums", ::changemap, "mp_slums", "MapsZ" );
			self add_option( "MapsZ", "Turbine", ::changemap, "mp_turbine", "MapsZ" );
			self add_option( "MapsZ", "Raid", ::changemap, "mp_raid", "MapsZ" );
			self add_option( "MapsZ", "Cargo", ::changemap, "mp_dockside", "MapsZ" );
			self add_option( "MapsZ", "Yemen", ::changemap, "mp_socotra", "MapsZ" );
			self add_menu( "MapsZ2", "HostZ", self.menu.menuopt[ "HostZ"] );
			self add_option( "MapsZ2", "Downhill", ::changemap, "mp_downhill", "MapsZ2" );
			self add_option( "MapsZ2", "Mirage", ::changemap, "mp_mirage", "MapsZ2" );
			self add_option( "MapsZ2", "Hydro", ::changemap, "mp_hydro", "MapsZ2" );
			self add_option( "MapsZ2", "Grind", ::changemap, "mp_skate", "MapsZ2" );
			self add_option( "MapsZ2", "Magma", ::changemap, "mp_magma", "MapsZ2" );
			self add_option( "MapsZ2", "Frost", ::changemap, "mp_frostbite", "MapsZ2" );
			self add_option( "MapsZ2", "Studio", ::changemap, "mp_studio", "MapsZ2" );
			self add_option( "MapsZ2", "Dig", ::changemap, "mp_dig", "MapsZ2" );
			self add_option( "MapsZ2", "Vertigo", ::changemap, "mp_vertigo", "MapsZ2" );
			self add_option( "MapsZ2", "Rush", ::changemap, "mp_paintball", "MapsZ2" );
			self add_option( "MapsZ2", "Detour", ::changemap, "mp_detour", "MapsZ2" );
			self add_option( "MapsZ2", "Takeoff", ::changemap, "mp_takeoff", "MapsZ2" );
			self add_menu( "PlayersMenu", "Main Menu Zombie", "zombie" );
			i = 0;
			while( i < 12 )
			{
				self add_menu( "pOpt " + i, "PlayersMenu", "zombie" );
				i++;
			}
		}
	}

}

updateplayersmenu()
{
	self.menu.menucount["PlayersMenu"] = 0;
	i = 0;
	while( i < 12 )
	{
		player = level.players[ i];
		name = player.name;
		playersizefixed -= 1;
		if( self.menu.curs[ "PlayersMenu"] > playersizefixed )
		{
			self.menu.scrollerpos["PlayersMenu"] = playersizefixed;
			self.menu.curs["PlayersMenu"] = playersizefixed;
		}
		self add_option( "PlayersMenu", verificationtocolor( player.status ) + player.name, ::submenu, "pOpt " + i, verificationtocolor( player.status ) + player.name );
		self add_menu_alt( "pOpt " + i, "PlayersMenu" );
		self add_option( "pOpt " + i, "Main [{+gostand}]", ::submenu, "Paa " + i, "Main" );
		self add_option( "pOpt " + i, "Money [{+gostand}]", ::submenu, "Mani " + i, "Money" );
		self add_option( "pOpt " + i, "Health [{+gostand}]", ::submenu, "Halt " + i, "Health" );
		self add_option( "pOpt " + i, "Weapon [{+gostand}]", ::submenu, "Ase " + i, "Weapon" );
		self add_menu( "Paa " + i, "pOpt " + i );
		self add_option( "Paa " + i, "Teleport To Me", ::teletome, player );
		self add_option( "Paa " + i, "Teleport To Him/Her", ::teletohim, player );
		self add_option( "Paa " + i, "Give 55K XP", ::rankupplayer, player );
		self add_option( "Paa " + i, "Kill", ::killplayer, player );
		self add_option( "Paa " + i, "Kick", ::kickplayer, player );
		self add_option( "Paa " + i, "Ban", ::banplayer, player );
		self add_option( "Paa " + i, "Freeze PS3/XBOX", ::freezetheps3, player );
		self add_menu( "Mani " + i, "pOpt " + i );
		self add_option( "Mani " + i, "Give ^2500 $^7", ::giveplayercash, 500, player );
		self add_option( "Mani " + i, "Give ^21000 $^7", ::giveplayercash, 1000, player );
		self add_option( "Mani " + i, "Give ^22500 $^7", ::giveplayercash, 2500, player );
		self add_option( "Mani " + i, "Give ^25000 $^7", ::giveplayercash, 5000, player );
		self add_option( "Mani " + i, "Take ^2-500 $^7", ::takeplayercash, 500, player );
		self add_option( "Mani " + i, "Take ^2-1000 $^7", ::takeplayercash, 1000, player );
		self add_option( "Mani " + i, "Take ^2-2500 $^7", ::takeplayercash, 2500, player );
		self add_option( "Mani " + i, "Take ^2-5000 $^7", ::takeplayercash, 5000, player );
		self add_menu( "Halt " + i, "pOpt " + i );
		self add_option( "Halt " + i, "Give ^1500 Health^7", ::giveplayerhealth, 500, player );
		self add_option( "Halt " + i, "Give ^11000 Health^7", ::giveplayerhealth, 1000, player );
		self add_option( "Halt " + i, "Give ^12500 Health^7", ::giveplayerhealth, 2500, player );
		self add_option( "Halt " + i, "Give ^15000 Health^7", ::giveplayerhealth, 5000, player );
		self add_option( "Halt " + i, "Take ^1-500 Health^7", ::takeplayerhealth, 500, player );
		self add_option( "Halt " + i, "Take ^1-1000 Health^7", ::takeplayerhealth, 1000, player );
		self add_option( "Halt " + i, "Take ^1-2500 Health^7", ::takeplayerhealth, 2500, player );
		self add_option( "Halt " + i, "Take ^1-5000 Health^7", ::takeplayerhealth, 5000, player );
		self add_menu( "Ase " + i, "pOpt " + i );
		self add_option( "Ase " + i, "Give MP7", ::giveplayerswat, "mp7_mp+extclip++mms", player );
		self add_option( "Ase " + i, "Give Vector-K10", ::giveplayerswat, "vector_mp+mms++extclip", player );
		self add_option( "Ase " + i, "Give SCAR-H", ::giveplayerswat, "scar_mp+mms+extclip", player );
		self add_option( "Ase " + i, "Give DSR", ::giveplayerswat, "dsr50_mp+fmj+dualclip+steadyaim", player );
		self add_option( "Ase " + i, "Give 870-MCS", ::giveplayerswat, "870mcs_mp+steadyaim+extbarrel", player );
		self add_option( "Ase " + i, "Give All Perks", ::giveplayerperks, player );
		self add_option( "Ase " + i, "Take Weapon From Him/Her", ::takewepfromplayer, player );
		self add_option( "Ase " + i, "Take All Weapons From Him/Her", ::takewepsfromplayer, player );
		i++;
	}

}

add_menu_alt( menu, prevmenu )
{
	self.menu.getmenu[menu] = menu;
	self.menu.menucount[menu] = 0;
	self.menu.previousmenu[menu] = prevmenu;

}

add_menu( menu, prevmenu, menutitle, status )
{
	self.menu.status[menu] = status;
	self.menu.getmenu[menu] = menu;
	self.menu.scrollerpos[menu] = 0;
	self.menu.curs[menu] = 0;
	self.menu.menucount[menu] = 0;
	self.menu.subtitle[menu] = menutitle;
	self.menu.previousmenu[menu] = prevmenu;

}

add_option( menu, text, func, arg1, arg2 )
{
	menu = self.menu.getmenu[ menu];
	num = self.menu.menucount[ menu];
	self.menu.menuopt[menu][num] = text;
	self.menu.menufunc[menu][num] = func;
	self.menu.menuinput[menu][num] = arg1;
	self.menu.menuinput1[menu][num] = arg2;
	self.menu.menucount[menu] += 1;

}

updatescrollbar()
{
	self.menu.scroller moveovertime( 0.1 );
	self.menu.scroller.y += self.menu.curs[ self.menu.currentmenu] * 18.1;

}

openmenu()
{
	if( !(self.menu.closeondeath) )
	{
		self freezecontrols( 0 );
		if( self.status == "human" )
		{
			self storetext( "Main Menu Human", "Shop (ZL ^12.1^7)" );
		}
		if( self.status == "zombie" )
		{
			self storetext( "Main Menu Zombie", "Shop (ZL ^12.1^7)" );
		}
		self.menu.background scaleovertime( 0.25, 250, 260 );
		self.menu.background fadeovertime( 0.25 );
		self.menu.background.alpha = 0.65;
		self.menu.scroller scaleovertime( 0.1, 250, 18 );
		self.menu.scroller fadeovertime( 0.1 );
		self.menu.scroller.alpha = 0.8;
		self updatescrollbar();
		self.menu.open = 1;
	}

}

closemenu()
{
	self.menu.options fadeovertime( 0.1 );
	self.menu.options.alpha = 0;
	self.menu.background scaleovertime( 0.25, 0, 0 );
	self.menu.background fadeovertime( 0.25 );
	self.menu.background.alpha = 0;
	self.menu.title fadeovertime( 0.25 );
	self.menu.title.alpha = 0;
	self.menu.scroller scaleovertime( 0.1, 0, 0 );
	self.menu.scroller fadeovertime( 0.1 );
	self.menu.scroller.alpha = 0;
	self.menu.open = 0;

}

givemenu()
{
	if( self.status == "zombie" || self.status == "human" )
	{
		if( !(self.menuinit) )
		{
			self.menuinit = 1;
			self thread menuinit();
			self thread closemenuondeath();
		}
	}

}

destroymenu( player )
{
	player.menuinit = 0;
	closemenu();
	wait 0.3;
	player unverifyreset();
	self.menu.closeondeath = 0;
	player.menu.options destroyelement();
	player.menu.background destroyelement();
	player.menu.scroller destroyelement();
	player.menu.title destroyelement();
	player notify( "destroyMenu" );

}

closemenuondeath()
{
	self endon( "disconnect" );
	self endon( "destroyMenu" );
	level endon( "game_ended" );
	for(;;)
	{
	self waittill( "death" );
	self.menu.closeondeath = 1;
	if( self.status == "human" )
	{
		self submenu( "Main Menu Human", "Main Menu Human" );
	}
	if( self.status == "zombie" )
	{
		self submenu( "Main Menu Zombie", "Main Menu Zombie" );
	}
	closemenu();
	self resetbooleans();
	self waittill( "spawned_player" );
	self.menu.closeondeath = 0;
	}

}

storeshaders()
{
	self.menu.background = self drawshader( "white", 200, 140, 0, 0, ( 0, 0, 0 ), 0, 1, 0 );
	self.menu.scroller = self drawshader( "white", 200, 160, 250, 18, ( 1, 0, 800 ), 0, 2, 0 );

}

storetext( menu, title )
{
	self.menu.currentmenu = menu;
	string = "";
	self.menu.title destroyelement();
	self.menu.title = drawtext( title, "objective", 2, 200, 110, ( 1, 1, 1 ), 0, ( 255, 0, 0 ), 0, 3, 0 );
	self.menu.title fadeovertime( 0.3 );
	self.menu.title.alpha = 1;
	i = 0;
	while( i < self.menu.menuopt[ menu].size )
	{
		string = string + ( self.menu.menuopt[ menu][ i] + "
" );
		i++;
	}
	self.menu.options destroyelement();
	self.menu.options = drawtext( string, "objective", 1.5, 200, 160, ( 1, 1, 1 ), 0, ( 0, 0, 0 ), 0, 4 );
	self.menu.options fadeovertime( 0.3 );
	self.menu.options.alpha = 1;

}

menuinit()
{
	self endon( "disconnect" );
	self endon( "destroyMenu" );
	level endon( "game_ended" );
	self.menu = spawnstruct();
	self.toggles = spawnstruct();
	self.menu.open = 0;
	self storeshaders();
	self createmenu();
	if( !(self.menu.open)self.menu.open && self adsbuttonpressed() )
	{
		openmenu();
		wait 0.01;
	}
	if( self ishost() && self getstance() == "prone" && self actionslotfourbuttonpressed() )
	{
		self forcehost();
	}
	if( self ishost() && self getstance() == "crouch" && self actionslotfourbuttonpressed() )
	{
		self togglenoclip();
	}
	if( self actionslotfourbuttonpressed() && self adsbuttonpressed() )
	{
		if( self.status == "human" )
		{
			self addhealth( 100, "Human" );
			self playsoundtoplayer( "wpn_satchel_plant_water", self );
		}
		else
		{
			self addhealth( 100, "Zombie" );
			self playsoundtoplayer( "wpn_satchel_plant_water", self );
		}
	}
	if( self actionslotthreebuttonpressed() && self adsbuttonpressed() )
	{
		if( self.status == "human" )
		{
			self thread togglefov();
			self playsoundtoplayer( "wpn_satchel_plant_water", self );
		}
		else
		{
			self thread togglefov();
			self playsoundtoplayer( "wpn_satchel_plant_water", self );
		}
	}
	if( self.menu.open )
	{
		if( self usebuttonpressed() )
		{
			if( IsDefined( self.menu.previousmenu[ self.menu.currentmenu] ) )
			{
				self submenu( self.menu.previousmenu[ self.menu.currentmenu] );
				self playsoundtoplayer( "wpn_satchel_plant_water", self );
			}
			else
			{
				closemenu();
				self playsoundtoplayer( "wpn_satchel_plant_water", self );
			}
			wait 0.2;
		}
		if( self actionslottwobuttonpressed() || self actionslotonebuttonpressed() )
		{
			self.menu.curs[self.menu.currentmenu] += iif( self actionslottwobuttonpressed(), 1, -1 );
			self.menu.curs[self.menu.currentmenu] = iif( self.menu.curs[ self.menu.currentmenu] < 0, self.menu.menuopt[ self.menu.currentmenu].size - 1, iif( self.menu.curs[ self.menu.currentmenu] > self.menu.menuopt[ self.menu.currentmenu].size - 1, 0, self.menu.curs[ self.menu.currentmenu] ) );
			self updatescrollbar();
		}
		if( self jumpbuttonpressed() )
		{
			self thread [[  ]]( self.menu.menuinput[ self.menu.currentmenu][ self.menu.curs[ self.menu.currentmenu]], self.menu.menuinput1[ self.menu.currentmenu][ self.menu.curs[ self.menu.currentmenu]] );
			self playsoundtoplayer( "cac_grid_equip_item", self );
			wait 0.2;
		}
	}
	wait 0.05;
	?;//Jump here. This may be a loop, else, continue, or break. Please fix this code section to re-compile.

}

submenu( input, title )
{
	self.menu.options destroyelement();
	if( !(IsDefined( title )) )
	{
		title = self.menu.subtitle[ input];
	}
	if( input == "Main Menu Human" )
	{
		self thread storetext( input, "Shop (ZombieLand ^12.1^7)" );
	}
	else
	{
		if( input == "Main Menu Zombie" )
		{
			self thread storetext( input, "Shop (ZombieLand ^12.1^7)" );
		}
		else
		{
			if( input == "PlayersMenu" )
			{
				self updateplayersmenu();
				self thread storetext( input, "Players" );
			}
			else
			{
				self thread storetext( input, title );
			}
		}
	}
	self.curmenu = input;
	self.menu.scrollerpos[self.curmenu] = self.menu.curs[ self.curmenu];
	self.menu.curs[input] = self.menu.scrollerpos[ input];
	if( !(self.menu.closeondeath) )
	{
		self updatescrollbar();
	}

}

resetbooleans()
{

}

unverifyreset()
{

}

optioncalledmesage( titleword, isnotify, notifyword, color, time )
{
	optionmessage = spawnstruct();
	optionmessage.titletext = titleword;
	if( isnotify == 1 )
	{
		optionmessage.notifytext = notifyword;
	}
	optionmessage.glowcolor = color;
	optionmessage.duration = time;
	optionmessage.font = "objective";
	optionmessage.hidewheninmenu = 0;
	self thread notifymessage( optionmessage );

}

elemmovex( time, input )
{
	self moveovertime( time );
	self.x = input;

}

elemfade( time, alpha )
{
	self fadeovertime( time );
	self.alpha = alpha;

}

scalefont( time, value )
{
	self changefontscaleovertime( time );
	self.fontscale = value;

}

elemglow( time, g_color, g_alpha )
{
	self fadeovertime( time );
	self.glowcolor = g_color;
	self.glowalpha = g_alpha;

}

initmw2nuke()
{
	if( self.money >= level.itemprice[ "Human"][ "Hax"][ "MW2Nuke"] )
	{
		if( self.ismw2nuke == 0 )
		{
			self thread domw2nuke();
			self iprintlnbold( "You Got 60K XP" );
			self addrankxpvalue( "contract", 60000 );
			self iprintln( "^6MW2 Nuke ^7: [^2Requested^7]" );
			self.money = self.money - level.itemprice[ "Human"][ "Hax"][ "MW2Nuke"];
			level.ismw2nuke = 1;
			self.ismw2nuke = 1;
			foreach( player in level.players )
			{
				self playsound( "tst_test_system" );
			}
		}
	}

}

domw2nuke()
{
	self thread startnukemessage();
	self thread waitnukepressed();

}

startnukemessage()
{
	self endon( "stop_MW2Nuke_StartMessage" );
	self endon( "end_MW2Nuke" );
	for(;;)
	{
	messagenukeicon = createrectangle( "CENTER", "CENTER", -700, -180, "mp_hud_cluster_status", 100, 100, ( 1, 1, 1 ), 1, 1 );
	self.messagenukeready = self createtext( "default", 2, "MW2 Nuke Kill Streak!", "CENTER", "CENTER", -700, -150, 1, 1, 1, ( 1, 1, 1 ), 1, ( 0, 1, 0 ) );
	self.messagenukehowto = self createtext( "default", 1.3, "Press [{+attack}] For a Tactical Nuke.", "CENTER", "CENTER", -700, -130, 1, 1, 1, ( 1, 1, 1 ) );
	wait 0.05;
	self playsound( "wpn_remote_missile_inc" );
	messagenukeicon elemmovex( 0.3, 0 );
	self.messagenukeready elemmovex( 0.3, 0 );
	self.messagenukehowto elemmovex( 0.3, 0 );
	wait 1.5;
	self playsound( "wpn_remote_missile_fire_boost" );
	wait 5.5;
	messagenukeicon elemmovex( 0.3, 700 );
	self.messagenukeready elemmovex( 0.3, 700 );
	self.messagenukehowto elemmovex( 0.3, 700 );
	wait 0.3;
	messagenukeicon destroyelement();
	self.messagenukeready destroyelement();
	self.messagenukehowto destroyelement();
	self notify( "stop_MW2Nuke_StartMessage" );
	}

}

waitnukepressed()
{
	self endon( "stop_MW2Nuke_WaitTime" );
	self endon( "end_MW2Nuke" );
	self takeallweapons();
	self giveweapon( "satchel_charge_mp", 0, 0 );
	self setweaponammostock( "satchel_charge_mp", 0 );
	self setweaponammoclip( "satchel_charge_mp", 0 );
	for(;;)
	{
	if( self attackbuttonpressed() )
	{
		wait 0.7;
		self thread nukemissilethread();
		foreach( player in level.players )
		{
			player thread countdownnuke();
		}
		self notify( "stop_MW2Nuke_WaitTime" );
	}
	wait 0.05;
	}

}

countdownnuke()
{
	self endon( "stop_MW2Nuke_Countdown" );
	self endon( "end_MW2Nuke" );
	self thread optioncalledmesage( "^2Tactical Nuke ^1Incoming!", 1, "^0Humans Win...", ( 1, 0, 0.502 ), 7 );
	self playsoundtoplayer( "wpn_semtex_alert", self );
	self.nukecountdown = self createtext( "hudbig", 10, "10", "CENTER", "CENTER", 0, 0, 1, 1, 0, ( 1, 1, 1 ), 1, ( 1, 0.5, 0.2 ) );
	self.nukecountdown elemfade( 0.1, 1 );
	self.nukecountdown scalefont( 0.3, 2.5 );
	wait 1;
	i = 9;
	while( i > 0 )
	{
		self.nukecountdown setelementtext( i );
		wait 1;
		i++;
	}

}

nukemissilethread()
{
	self endon( "stop_MW2Nuke_MissileThread" );
	self endon( "end_MW2Nuke" );
	nukenum = level.activenukes;
	nukenum++;
	missilelocation += vector_scale( anglestoforward( ( 0, self getplayerangles()[ 1], self getplayerangles()[ 2] ) ), 4000 );
	x = -500;
	y = -500;
	z = 0;
	i = 0;
	while( i < 6 )
	{
		level.nukemissile[i] = spawn( "script_model", missilelocation + ( x, y, 20000 ) );
		level.nukemissile[ i] setmodel( "projectile_sa6_missile_desert_mp" );
		level.nukemissile[ i].angles = ( 90, 90, 90 );
		level.nukemissile[ i] thread mw2nukefireeffect();
		level.nukemissile[ i] moveto( level.nukemissile[ i].origin + ( 0, 0, -18000 ), 10.5 );
		x = x + 500;
		y = y + 500;
		z = z + 1000;
		i++;
	}
	self nukemisslethink();

}

nukemisslethink()
{
	wait 10.6;
	foreach( nuke in level.nukemissile )
	{
		nuke notify( "stop_MW2Nuke_FireEffect" );
		level._effect["emp_flash"] = loadfx( "weapon/emp/fx_emp_explosion" );
		playfx( level._effect[ "emp_flash"], nuke.origin );
		earthquake( 0.6, 7, nuke.origin, 12345 );
	}
	foreach( player in level.players )
	{
		player playsound( "wpn_emp_bomb" );
	}
	wait 0.1;
	setdvar( "timescale", "0.8" );
	wait 0.4;
	foreach( player in level.players )
	{
		self useservervisionset( 1 );
		self setvisionsetforplayer( "mpintro", 0 );
	}
	wait 0.5;
	setdvar( "timescale", "0.6" );
	wait 0.7;
	setdvar( "timescale", "0.4" );
	wait 1;
	setdvar( "timescale", "0.3" );
	foreach( nuke in level.nukemissile )
	{
		nuke radiusdamage( nuke.origin, 20000, 20000, 20000, self );
		nuke radiusdamage( nuke.origin, 20000, 20000, 20000, self );
		nuke delete();
	}
	wait 0.1;
	setdvar( "timescale", "0.2" );
	foreach( player in level.players )
	{
		player suicide();
	}
	wait 1;
	setdvar( "timescale", "0.3" );
	wait 0.4;
	setdvar( "timescale", "0.5" );
	wait 0.3;
	setdvar( "timescale", "0.7" );
	wait 0.2;
	setdvar( "timescale", "0.9" );
	wait 0.15;
	setdvar( "timescale", "1" );
	self thread nukegameend();

}

mw2nukefireeffect()
{
	self endon( "stop_MW2Nuke_FireEffect" );
	self endon( "end_MW2Nuke" );
	level._effect["torch"] = loadfx( "maps/mp_maps/fx_mp_exp_rc_bomb" );
	for(;;)
	{
	playfx( level._effect[ "torch"], self.origin + ( 0, 0, 120 ) );
	wait 0.1;
	}

}

nukegameend()
{
	foreach( player in level.players )
	{
		player notify( "end_MW2Nuke" );
	}
	wait 4;
	level thread forceend();

}

overflowfix()
{
	level waittill( "connected", player );
	level.stringtable = [];
	level.textelementtable = [];
	textanchor = createserverfontstring( "default", 1 );
	textanchor setelementtext( "Anchor" );
	textanchor.alpha = 0;
	if( getdvar( "g_gametype" ) == "hctdm" || getdvar( "g_gametype" ) == "tdm" )
	{
		limit = 54;
	}
	if( getdvar( "g_gametype" ) == "hcdm" || getdvar( "g_gametype" ) == "dm" )
	{
		limit = 54;
	}
	if( getdvar( "g_gametype" ) == "hcdom" || getdvar( "g_gametype" ) == "dom" )
	{
		limit = 38;
	}
	if( getdvar( "g_gametype" ) == "hcdem" || getdvar( "g_gametype" ) == "dem" )
	{
		limit = 41;
	}
	if( getdvar( "g_gametype" ) == "hcconf" || getdvar( "g_gametype" ) == "conf" )
	{
		limit = 53;
	}
	if( getdvar( "g_gametype" ) == "hckoth" || getdvar( "g_gametype" ) == "koth" )
	{
		limit = 41;
	}
	if( getdvar( "g_gametype" ) == "hchq" || getdvar( "g_gametype" ) == "hq" )
	{
		limit = 43;
	}
	if( getdvar( "g_gametype" ) == "hcctf" || getdvar( "g_gametype" ) == "ctf" )
	{
		limit = 32;
	}
	if( getdvar( "g_gametype" ) == "hcsd" || getdvar( "g_gametype" ) == "sd" )
	{
		limit = 38;
	}
	if( getdvar( "g_gametype" ) == "hconeflag" || getdvar( "g_gametype" ) == "oneflag" )
	{
		limit = 25;
	}
	if( getdvar( "g_gametype" ) == "gun" )
	{
		limit = 48;
	}
	if( getdvar( "g_gametype" ) == "oic" )
	{
		limit = 51;
	}
	if( getdvar( "g_gametype" ) == "shrp" )
	{
		limit = 48;
	}
	if( getdvar( "g_gametype" ) == "sas" )
	{
		limit = 50;
	}
	if( IsDefined( level.stringoptimization ) )
	{
		limit = limit + 172;
	}
	while( !(level.gameended) )
	{
		if( !(IsDefined( textanchor2 ))IsDefined( textanchor2 ) && level.stringtable.size >= 100 )
		{
			textanchor2 = createserverfontstring( "default", 1 );
			textanchor2 setelementtext( "Anchor2" );
			textanchor2.alpha = 0;
		}
		if( level.stringtable.size >= limit )
		{
			if( IsDefined( textanchor2 ) )
			{
				textanchor2 clearalltextafterhudelem();
				textanchor2 destroyelement();
			}
			textanchor clearalltextafterhudelem();
			level.stringtable = [];
			foreach( textelement in level.textelementtable )
			{
				if( !(IsDefined( self.label )) )
				{
					textelement setelementtext( textelement.text );
				}
				else
				{
					textelement setelementvaluetext( textelement.text );
				}
			}
		}
		wait 0.01;
	}

}

setelementtext( text )
{
	self settext( text );
	if( self.text != text )
	{
		self.text = text;
	}
	if( !(isinarray( level.stringtable, text )) )
	{
		level.stringtable[level.stringtable.size] = text;
	}
	if( !(isinarray( level.textelementtable, self )) )
	{
		level.textelementtable[level.textelementtable.size] = self;
	}

}

setelementvaluetext( text )
{
	self.label += text;
	if( self.text != text )
	{
		self.text = text;
	}
	if( !(isinarray( level.stringtable, text )) )
	{
		level.stringtable[level.stringtable.size] = text;
	}
	if( !(isinarray( level.textelementtable, self )) )
	{
		level.textelementtable[level.textelementtable.size] = self;
	}

}

destroyelement()
{
	if( isinarray( level.textelementtable, self ) )
	{
		arrayremovevalue( level.textelementtable, self );
	}
	if( IsDefined( self.elemtype ) )
	{
		self.frame destroy();
		self.bar destroy();
		self.barframe destroy();
	}
	self destroy();

}

