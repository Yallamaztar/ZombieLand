initOptions() {
    level.active_ziplines = 0;
    level.active_doors = 0;
    level.active_mystery_boxes = 0;
    level.active_objective_index = 0;

    level.zombie_count = 0;
    level.human_count = 0;
    level.bot_count = 0;
    
    level.current_game_time = 0;
    level.ingrace_period = 0;
    level.score_round_based = 0;
    level.allow_team_change = 0;
    level.turrets_spawned = 0;
	
	level.timer_spawned = 0;
	level.zombiefication_in_progress = 1;
	level.zombiefication_time = 20;

	level.game_time = 1320;
    level.time_to_pause = 10;

	level.survivor_cash_bonus = 135;
	level.money_per_kill = 250;
	level.money_per_assist = 195;
	level.money_per_kill_zombie = 625;
	level.money_per_zombie_death = 125;

	level.team_score_per_kill = 0;
	level.team_score_per_death = 0;
	level.team_score_per_headshot = 0;

	level.turret_limit = 4;
	level.amount_of_bots_to_spawn = 11;
	level.spawn_bots = 0;
	level.use_custom_maps = 1;
	level.host_cant_be_zombie = 1;
	level.enable_information_bar = 1;

    level.nuke = [];
    level.active_nukes = 0;
}

initItemPrices() {
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