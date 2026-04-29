/*
 * Zombieland (Modernized)
 * Custom zombies-style gamemode for T6MP
 * Revised by @Yallamaztar | Originally made by @CoolJay
 */

main() {
    level.__version__  = "0.1.1";
    
    SetGametypeSetting("prematchperiod", 5);    
    SetGametypeSetting("preroundperiod", 5);
    SetMatchTalkingFlag( "EveryoneHearsEveryone", 1 );

    // set to your discord invite link
    SetDvar("ui_discord_url", "https://discord.gg/^6zombieland^7");

    level thread scripts\mp\zombieland\models::initModels();
    if (getdvar("map_name") == "mp_nightclub") {
        level thread scripts\mp\zombieland\models::initNightClubModels();
    }
}

init() {
    if (GetDvar("g_gametype" != "tdm")) {
        PrintLn("[Zombieland] (^1^1error^7): This gamemode is only available in TDM");
        return;
    }

    level scripts\mp\zombieland\options::initOptions();
    level scripts\mp\zombieland\options::initItemPrices();

    level thread scripts\mp\zombieland\overflow::overflowfix();
    level thread scripts\mp\zombieland\hud::infobar();
    level thread scripts\mp\zombieland\monitor::monitorGame();
    level thread scripts\mp\zombieland\monitor::monitorTimer();

    level thread onPlayerConnect();
}

onPlayerConnect() {
    level endon("game_ended");
    for(;;) {
        level waittill("connected", player);
        level.ingraceperiod = 0;

        player.status = 0;
        player.human_died = 0;
        player.threads_ready = 0;
        player.starting_zombie = 0;
        player.menu_init = 0;
        player.give_cash = 1;
        player.money = 50;
        player.health = 100;
        player.money_multiplier = 1;

        // TODO:
        // idk if i finished this yet, check later
        player scripts\mp\zombieland\menu::createMenu();
        
        player thread onPlayerSpawned();
        player thread onPlayerDied();
    }
}

onPlayerSpawned() {
    level endon("game_ended");
    self endon("disconnect");

    isFirstSpawn = 1;
    self.health_monitor = 0;
    self.threads_readay = 1;

    // TODO:
    // create these function
    self thread scripts\mp\zombieland\monitor::weaponMonitor();
    self thread scripts\mp\zombieland\monitor::hudMonitor();
    self thread scripts\mp\zombieland\monitor::teamMonitor();
    self thread scripts\mp\zombieland\monitor::customTeamMonitor();
    self thread scripts\mp\zombieland\monitor::damageMonitor();
    
    // TODO:
    // create these too
    self thread zombiesuicide();
    self setupTeamDvars();

    self [[level.allies]]();
    self notify("menuresponse", "changeclass", "class_smg");

    for(;;) {
        self waittill("spawned_player");
        if (isFirstSpawn) {
            isFirstSpawn = 0;
            if (self ishost()) {
                self FreezeControls(false);
            }
        }

        self.menu.closeondeath = 0;

        if (level.use_custom_maps && !isdefined(level.custom_map_ready)) {
            // TODO:
            // create this function
            level thread setupCustomMap();

            level.custom_map_ready = 1;

            // TODO:
            // maybe rename these unless these are perks
            self.xsped = 0;
            self.fatty = 0;
            self.metallo = 0;
            self.terrorista = 0;
            self.doge = 0;

            self show();
            self notify("stop_linking_model");
            self.link_model Delete();
        }

        if (isdefined(self.infrared_on)) {
            self setinfraredvision(1);
	        self useservervisionset(1);
	        self setvisionsetforplayer(level.remore_mortar_infrared_vision, 1);
        }

        if (self.status == "zombie") {
            self SetModel("c_usa_mp_seal6_sniper_fb");
        } else {
            self SetModel("c_use_mp_seal6_lmg_fb");
        }

        self giveWeapons(self.status);
    }
}

onPlayerDied() {
    level endon("game_ended");
    self endon("disconnect");

    for(;;) {
        self waittill("death");
        if (level.zombiefication_time == 0 && self.status != "zombie") {
            self notify("injected");
            self scripts\mp\zombieland\players::setInfected(true);

            self [[level.axis]]();
            self resetdvars();
            self.status = "zombie";

            self.max_health = 100;
            self.current_deaths = 0;
            self.pers["deaths"] = 0;

            level thread scripts\mp\zombieland\players::setForEveryone("humandied", 1);
            
            // TODO:
            // create the menu() function
            self thread scripts\mp\zombieland\menu::menu();
            level thread maps\mp\gametypes\_globallogic_ui::closemenus()
        }

        if (self.suicide) {
            if (self.money >= level.money_per_zombie_death) {
                self.money -= level.money_per_zombie_death;
                self.suicide = 0;

                self resetPerks();
                self show();

                self notify("stop_linking_model");
                self.link_model Delete();
                self IPrintLn("Killing yourself wont give you any money");
            }
        }
    }
}

onPlayerDisconnect() {
    level endon("game_ended");
    for(;;) {
        self waittill("disconnect");
        self scripts\mp\zombieland\hud::destroyPlayerHuds();
    }
}

resetPerks() {
    if (self.status == "zombie") {
        self.xsped = 0;
    }

    self.fatty = 0;
	self.metallo = 0;
	self.terrorista = 0;
	self.doge = 0;
}

resetdvars() {
	self.infrared_on = undefined;
	self.infinite_ammo = undefined;
	self.uav = undefined;
	self setclientuivisibilityflag("g_compassShowEnemies", 0);

}

giveWeapons(status) {
    self ClearPerks();
    self TakeAllWeapons();
    self SetActionSlot(1, "");
    self SetActionSlot(2, "");
    self SetActionSlot(3, "");
    self SetActionSlot(4, "");

    if (status == "human") {
        weap = "fiveseven_mp+steadyaim+extbarrel";
        self GiveWeapon(weap);
        self GiveWeapon("knife_help_mp");
        self GiveWeapon("sensor_grenade_mp");
        self SwitchToWeapon(weap);
    } else if (status == "zombie") {
        self GiveWeapon("knife_held_mp");
        self GiveWeapon("tactical_insertion_mp");
        self SwitchToWeapon("knife_held_mp");

        self setperk("specialty_fastmantle");
		self setperk("specialty_fastmeleerecovery");
		self setperk("specialty_fastladderclimb");
		self setperk("specialty_fallheight");
		self setperk("specialty_fastequipmentuse");
		self setperk("specialty_fasttoss");
		self setperk("specialty_movefaster");
		self setperk("specialty_unlimitedsprint");
		self setperk("specialty_quieter");
    }
}