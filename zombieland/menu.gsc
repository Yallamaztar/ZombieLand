#include scripts\mp\zombieland\functions;

createMenu() {
    if (self.status == "zombies" || self.status == "human") {
        if (!self.menu_init) {
            self.menu_init = 1;
            self thread initMenu();
            self thread menuCloseOnDeath();
        }
    }
}

// TODO:
// finish creating this function [original `menuinit()`]
initMenu() {
    self endon("disconnect");
    self endon("destroy_menu");
    self endon("game_ended");

    for (;;) {
        self.menu = SpawnStruct();
        self.menu.open = 0;
        self.menu.background = self scripts\mp\zombieland\hud::drawshader("white", 200, 140, 0, 0, (0, 0, 0), 0, 1, 0);
	    self.menu.scroller = self scripts\mp\zombieland\hud::drawshader("white", 200, 160, 250, 18, (1, 0, 800), 0, 2, 0);
        
        self.toggleables = SpawnStruct();
        wait 0.1;
    }
}

menu() {
	if (self.status == "human") {
		self add_menu("Main Menu Human", undefined, "The Shop (ZombieLand ^12.0^7)", "Unverified");
		self add_option("Main Menu Human", "General", ::submenu, "General", "General");
		self add_option("Main Menu Human", "^0Black ^7Market", ::submenu, "Hax", "Hax");
		self add_option("Main Menu Human", "Equipment", ::submenu, "Equipment", "Equipment");
		self add_option("Main Menu Human", "Perks", ::submenu, "Perks", "Perks");
		self add_option("Main Menu Human", "Weapons", ::submenu, "Weapons", "Weapons");
		self add_option("Main Menu Human", "Attachments", ::submenu, "Attachments", "Attachments");
		
		if(self ishost()) {
			self add_option("Main Menu Human", "Host", ::submenu, "Host", "Host");
			self add_option("Main Menu Human", "Clients", ::submenu, "PlayersMenu", "Players");
		}

		self add_menu("General", "Main Menu Human", "General", "human");
		self add_option("General", "^1+100 ^7Health  | [{+speed_throw}] + [{+actionslot 4}] | / ^2$" + level.itemprice[ "Human"][ "General"][ "Health"], ::addhealth, 100, "Human");
		self add_option("General", "^7Max Ammo / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Ammo"], ::refillammo);

		// TODO:
		// implement the rest of these menu functions (zombieland/functions.gsc)
		
		// self add_option("General", "^7Random Camo + Ammo / ^2$" + level.itemprice[ "Human"][ "General"][ "RandomCamo"], ::camochanger, "Human");
		// self add_option("General", "^7UAV / ^2$" + level.itemprice[ "Human"][ "General"][ "UAV"], ::giveuav, "Human");
		// self add_option("General", "^7Spawn Turret / ^2$" + level.itemprice[ "Human"][ "General"][ "Turret"], ::spawnturretplayer, "auto_gun_turret_mp");
		// self add_option("General", "^7Unlimited Ammo -^5No Reload^7- / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "UnlimitedAmmo"], ::infiniteammo);
		// self add_option("General", "^7Unlimited Ammo / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "infiniteReload"], ::infinitereload);
		// self add_option("General", "^7Infrared Vision / ^2$" + level.itemprice[ "Human"][ "General"][ "Infrared"], ::giveinfraredvision, "Human");
		
		// self add_menu("Hax", "Main Menu Human", "Hax", "human");
		// self add_option("Hax", "^7B Tier [{+gostand}]", ::submenu, "B Tier");
		// self add_option("Hax", "^7S Tier [{+gostand}]", ::submenu, "S Tier");
		
		// self add_menu("B Tier", "Hax", self.menu.menuopt[ "Hax"], "human");
		// self add_option("B Tier", "^7Sentry Gun / ^2$" + level.itemprice[ "Human"][ "Hax"][ "Sentry"], ::givesg, "B Tier");
		// self add_option("B Tier", "^7Jericho Missiles X5 / ^2$" + level.itemprice[ "Human"][ "Hax"][ "Jericho"], ::initjericho, "B Tier");
		// self add_option("B Tier", "^7Electric Cherry / ^2$" + level.itemprice[ "Human"][ "Hax"][ "cherry"], ::electriccherry, "B Tier");
		// self add_option("B Tier", "^7Clone / ^2$" + level.itemprice[ "Human"][ "Hax"][ "Clone"], ::clone, "B Tier");
		// self add_option("B Tier", "^6Gamble ^1Slots ^7/ ^2$" + level.itemprice[ "Human"][ "Hax"][ "Slots"], ::gambleslots, "B Tier");
		// self add_option("B Tier", "^7PRO-Mode / ^2FREE^7", ::togglefov, "B Tier");
		
		// self add_menu("S Tier", "Hax", self.menu.menuopt[ "Hax"], "human");
		// self add_option("S Tier", "^7Jet-Pack / ^3$" + level.itemprice[ "Human"][ "Hax"][ "JetPack"], ::dojetpack, "S Tier");
		// self add_option("S Tier", "^7Super Saiyan 2 ^7/ ^3$" + level.itemprice[ "Human"][ "Hax"][ "SSJ2"], ::supersayan2, "S Tier");
		// self add_option("S Tier", "^5ESP ^7- WallHack / ^3$" + level.itemprice[ "Human"][ "Hax"][ "ESP"], ::espwallhack, "S Tier");
		// self add_option("S Tier", "^7MW2 Nuke / ^1$" + level.itemprice[ "Human"][ "Hax"][ "MW2Nuke"], ::initmw2nuke, "S Tier");
		
		// self add_menu("Equipment", "Main Menu Human", "Equipment", "human");
		// self add_option("Equipment", "^7Claymore / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "claymore_mp"], ::giveequipment, "claymore_mp", "Human");
		// self add_option("Equipment", "^7Sticky Grenade / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "sticky_grenade_mp"], ::giveequipment, "sticky_grenade_mp", "Human");
		// self add_option("Equipment", "^7Frag Grenade / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "frag_grenade_mp"], ::giveequipment, "frag_grenade_mp", "Human");
		// self add_option("Equipment", "^7C4 / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "satchel_charge_mp"], ::giveequipment, "satchel_charge_mp", "Human");
		// self add_option("Equipment", "^7Shock Charge / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "proximity_grenade_mp"], ::giveequipment, "proximity_grenade_mp", "Human");
		// self add_option("Equipment", "^7Concussion Grenade / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "concussion_grenade_mp"], ::giveequipment, "concussion_grenade_mp", "Human");
		// self add_option("Equipment", "^7Flash Grenade / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "flash_grenade_mp"], ::giveequipment, "flash_grenade_mp", "Human");
		// self add_option("Equipment", "^7Trophy System / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "trophy_system_mp"], ::giveequipment, "trophy_system_mp", "Human");
		// self add_option("Equipment", "^7Bouncy Betty / ^2$" + level.itemprice[ "Human"][ "Equipment"][ "bouncingbetty_mp"], ::giveequipment, "bouncingbetty_mp", "Human");
		// self add_option("Equipment", "^7Nova Gas / ^2$" + level.itemprice[ "Human"][ "General"][ "Nova"], ::novagas, "Human");
		
		// self add_menu("Perks", "Main Menu Human", "Perks", "human");
		// self add_option("Perks", "^7No Fall Damage / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_fallheight"], ::giveperk, "specialty_fallheight", "Human");
		// self add_option("Perks", "^7Faster Aiming / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_fastads"], ::giveperk, "specialty_fastads", "Human");
		// self add_option("Perks", "^7Unlimited Sprint / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_unlimitedsprint"], ::giveperk, "specialty_unlimitedsprint", "Human");
		// self add_option("Perks", "^7Faster Weapon Switch / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_fastweaponswitch"], ::giveperk, "specialty_fastweaponswitch", "Human");
		// self add_option("Perks", "^7Hear Zombie Footsteps Better / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_loudenemies"], ::giveperk, "specialty_loudenemies", "Human");
		// self add_option("Perks", "^7Faster Climbing / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_fastmantle"], ::giveperk, "specialty_fastmantle", "Human");
		// self add_option("Perks", "^7Faster Movement / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_movefaster"], ::giveperk, "specialty_movefaster", "Human");
		// self add_option("Perks", "^7Faster Reload / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_fastreload"], ::giveperk, "specialty_fastreload", "Human");
		// self add_option("Perks", "^7Scavenger / ^2$" + level.itemprice[ "Human"][ "Perks"][ "specialty_scavenger"], ::giveperk, "specialty_scavenger", "Human");
		
		// self add_menu("Weapons", "Main Menu Human", "Weapons", "human");
		// self add_option("Weapons", "^7Submachine Guns / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Submachine"], ::submenu, "SubmachineGuns");
		// self add_option("Weapons", "^7Assault Rifles / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Assault"], ::submenu, "AssaultRifles");
		// self add_option("Weapons", "^7Lightmachine Guns / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Lightmachine"], ::submenu, "LightmachineGuns");
		// self add_option("Weapons", "^7Shotguns / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Shotguns"], ::submenu, "Shotguns");
		// self add_option("Weapons", "^7Sniper Rifles / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Snipers"], ::submenu, "SniperRifles");
		// self add_option("Weapons", "^7Pistols / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Pistols"], ::submenu, "Pistols");
		// self add_option("Weapons", "^7Launchers / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Launchers"], ::submenu, "Launchers");
		// self add_option("Weapons", "^7Specials / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "Specials"], ::submenu, "Specials");
		// self add_option("Weapons", "^7Super Specials / ^2$" + level.itemprice[ "Human"][ "Weapons"][ "SuperSpecials"], ::submenu, "SuperSpecials");
		// self add_option("Weapons", "^7Wonder Weapons / ^1XXXX", ::submenu, "AlienGuns");
		
		// self add_menu("SubmachineGuns", "Weapons", self.menu.menuopt[ "Weapons"][ 0], "human");
		// self add_option("SubmachineGuns", "MP7", ::replaceweapon, "mp7_mp", "Submachine");
		// self add_option("SubmachineGuns", "PDW-57", ::replaceweapon, "pdw57_mp", "Submachine");
		// self add_option("SubmachineGuns", "Vector-K10", ::replaceweapon, "vector_mp", "Submachine");
		// self add_option("SubmachineGuns", "MSMC", ::replaceweapon, "insas_mp", "Submachine");
		// self add_option("SubmachineGuns", "Chicom CQB", ::replaceweapon, "qcw05_mp", "Submachine");
		// self add_option("SubmachineGuns", "Skorpion EVO", ::replaceweapon, "evoskorpion_mp", "Submachine");
		// self add_option("SubmachineGuns", "Peacekeeper", ::replaceweapon, "peacekeeper_mp", "Submachine");
		
		// self add_menu("AssaultRifles", "Weapons", self.menu.menuopt[ "Weapons"][ 1], "human");
		// self add_option("AssaultRifles", "MTAR", ::replaceweapon, "tar21_mp", "Assault");
		// self add_option("AssaultRifles", "Type 25", ::replaceweapon, "type95_mp", "Assault");
		// self add_option("AssaultRifles", "SWAT-556", ::replaceweapon, "sig556_mp", "Assault");
		// self add_option("AssaultRifles", "FAL OSW", ::replaceweapon, "sa58_mp", "Assault");
		// self add_option("AssaultRifles", "M27", ::replaceweapon, "hk416_mp", "Assault");
		// self add_option("AssaultRifles", "SCAR-H", ::replaceweapon, "scar_mp", "Assault");
		// self add_option("AssaultRifles", "SMR", ::replaceweapon, "saritch_mp", "Assault");
		// self add_option("AssaultRifles", "M8A1", ::replaceweapon, "xm8_mp", "Assault");
		// self add_option("AssaultRifles", "AN-94", ::replaceweapon, "an94_mp", "Assault");
		
		// self add_menu("Shotguns", "Weapons", self.menu.menuopt[ "Weapons"][ 2], "human");
		// self add_option("Shotguns", "R870 MCS", ::replaceweapon, "870mcs_mp", "Shotguns");
		// self add_option("Shotguns", "S12", ::replaceweapon, "saiga12_mp", "Shotguns");
		// self add_option("Shotguns", "KSG", ::replaceweapon, "ksg_mp", "Shotguns");
		// self add_option("Shotguns", "M1216", ::replaceweapon, "srm1216_mp", "Shotguns");
		
		// self add_menu("LightmachineGuns", "Weapons", self.menu.menuopt[ "Weapons"][ 3], "human");
		// self add_option("LightmachineGuns", "MK 48", ::replaceweapon, "mk48_mp", "Lightmachine");
		// self add_option("LightmachineGuns", "QBB LSW", ::replaceweapon, "qbb95_mp", "Lightmachine");
		// self add_option("LightmachineGuns", "LSAT", ::replaceweapon, "lsat_mp", "Lightmachine");
		// self add_option("LightmachineGuns", "HAMR", ::replaceweapon, "hamr_mp", "Lightmachine");
		
		// self add_menu("SniperRifles", "Weapons", self.menu.menuopt[ "Weapons"][ 4], "human");
		// self add_option("SniperRifles", "SVU-AS", ::replaceweapon, "svu_mp", "Snipers");
		// self add_option("SniperRifles", "DSR 50", ::replaceweapon, "dsr50_mp", "Snipers");
		// self add_option("SniperRifles", "Ballista", ::replaceweapon, "ballista_mp", "Snipers");
		// self add_option("SniperRifles", "XPR-50", ::replaceweapon, "as50_mp", "Snipers");
		
		// self add_menu("Pistols", "Weapons", self.menu.menuopt[ "Weapons"][ 5], "human");
		// self add_option("Pistols", "Five-seven", ::replaceweapon, "fiveseven_mp", "Pistols");
		// self add_option("Pistols", "Tac-45", ::replaceweapon, "fnp45_mp", "Pistols");
		// self add_option("Pistols", "B23R", ::replaceweapon, "beretta93r_mp", "Pistols");
		// self add_option("Pistols", "Executioner", ::replaceweapon, "judge_mp", "Pistols");
		// self add_option("Pistols", "KAP-40", ::replaceweapon, "kard_mp", "Pistols");
		
		// self add_menu("Launchers", "Weapons", self.menu.menuopt[ "Weapons"][ 6], "human");
		// self add_option("Launchers", "SMAW", ::replaceweapon, "smaw_mp", "Launchers");
		// self add_option("Launchers", "RPG", ::replaceweapon, "usrpg_mp", "Launchers");
		
		// self add_menu("Specials", "Weapons", self.menu.menuopt[ "Weapons"][ 7], "human");
		// self add_option("Specials", "Riot Shield", ::replaceweapon, "riotshield_mp", "Specials");
		// self add_option("Specials", "Ballistic Knife", ::replaceweapon, "knife_ballistic_mp", "Specials");
		// self add_option("Specials", "Crossbow", ::replaceweapon, "crossbow_mp+stackfire", "Specials");
		
		// self add_menu("SuperSpecials", "Weapons", self.menu.menuopt[ "Weapons"][ 8], "human");
		// self add_option("SuperSpecials", "Grenade Launcher", ::replaceweapon, "m32_wager_mp", "SuperSpecials");
		// self add_option("SuperSpecials", "Minigun", ::replaceweapon, "minigun_wager_mp", "SuperSpecials");
		
		// self add_menu("AlienGuns", "Weapons", self.menu.menuopt[ "Weapons"][ 9], "human");
		// self add_option("AlienGuns", "^7RayGun / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "RayGun"], ::initraygun, "AlienGuns");
		// self add_option("AlienGuns", "^7Porters X2 RayGun / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "PortGan"], ::initportgun, "AlienGuns");
		// self add_option("AlienGuns", "^7RayGun Mark II / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "RayGunM2"], ::initraygunm2, "AlienGuns");
		// self add_option("AlienGuns", "^7Porters Mark II RayGun / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "portGun"], ::initportgunm2, "AlienGuns");
		// self add_option("AlienGuns", "^7ZVX 1337 / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "1337"], ::zvx1337, "AlienGuns");
		// self add_option("AlienGuns", "^7Electric Gun / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "ElectricG"], ::lightgun, "AlienGuns");
		// self add_option("AlienGuns", "^7--- [{+gostand}] ---", ::submenu, "AlienGuns2");
		
		// self add_menu("AlienGuns2", "AlienGuns", self.menu.menuopt[ "AlienGuns"], "human");
		// self add_option("AlienGuns2", "^7Super M16-X99 / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "SMAG"], ::smagnum, "AlienGuns2");
		// self add_option("AlienGuns2", "^7RaMMeR / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "rama"], ::rammer, "AlienGuns2");
		// self add_option("AlienGuns2", "^7Exterminator / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "Exterminator"], ::exterminator, "AlienGuns2");
		// self add_option("AlienGuns2", "^7Mustang & Sally / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "Sally"], ::mustangbro, "AlienGuns2");
		// self add_option("AlienGuns2", "^7Lightning Thunder / ^1$" + level.itemprice[ "Human"][ "Weapons"][ "Thunder"], ::do_lightningthunder, "AlienGuns2");
		
		// self add_menu("Attachments", "Main Menu Human", "Attachments", "human");
		// self add_option("Attachments", "^7FMJ / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "fmj"], ::replacecurrentweaponattachment, "fmj");
		// self add_option("Attachments", "^7Dual Wield / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "dw"], ::replacecurrentweaponattachment, "dw");
		// self add_option("Attachments", "^7Suppressor / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "silencer"], ::replacecurrentweaponattachment, "silencer");
		// self add_option("Attachments", "^7Fast Mag / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "dualclip"], ::replacecurrentweaponattachment, "dualclip");
		// self add_option("Attachments", "^7Extended Clip / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "extclip"], ::replacecurrentweaponattachment, "extclip");
		// self add_option("Attachments", "^7Long Barrel / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "extbarrel"], ::replacecurrentweaponattachment, "extbarrel");
		// self add_option("Attachments", "^7Reflex Sight / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "reflex"], ::replacecurrentweaponattachment, "reflex");
		// self add_option("Attachments", "^7Dual Band Scope / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "ir"], ::replacecurrentweaponattachment, "ir");
		// self add_option("Attachments", "^7Rapid Fire / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "rf"], ::replacecurrentweaponattachment, "rf");
		// self add_option("Attachments", "^7Target Finder / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "rangefinder"], ::replacecurrentweaponattachment, "rangefinder");
		// self add_option("Attachments", "^7ACOG Sight / ^2$" + level.itemprice[ "Human"][ "Attachments"][ "acog"], ::replacecurrentweaponattachment, "acog");
		
		// if (self ishost()) {
		// 	self add_menu("Host", "Main Menu Human", "Host", "human");
		// 	self add_option("Host", "^7Main Modifications", ::submenu, "Mods");
		// 	self add_option("Host", "^7Lobby", ::submenu, "Lobby");
		// 	self add_option("Host", "^7Messages", ::submenu, "Message");
		// 	self add_option("Host", "^7All Players", ::submenu, "AllPlayers");
		// 	self add_option("Host", "^7---- ^5MAPS^7 ----", ::submenu, "Maps");
		// 	self add_option("Host", "^7---- ^1DLC ^5MAPS^7 ----", ::submenu, "Maps2");
		// 	self add_menu("Mods", "Host", self.menu.menuopt[ "Host"], "human");
		// 	self add_option("Mods", "^7Hacks [{+gostand}] ", ::submenu, "Hack");
		// 	self add_option("Mods", "^7Build [{+gostand}] ", ::submenu, "BBuild");
		// 	self add_option("Mods", "^5DVar^7 Unlocks [{+gostand}] ", ::submenu, "Unlocks");
		// 	self add_option("Mods", "^7Supply Drops [{+gostand}] ", ::submenu, "SDrops");
		// 	self add_option("Mods", "^7Equipment Bullets [{+gostand}] ", ::submenu, "MBullets");
		// 	self add_option("Mods", "^7Special Bullets [{+gostand}] ", ::submenu, "SBullets");
			
		// 	self add_menu("Hack", "Mods", self.menu.menuopt[ "Mods"], "human");
		// 	self add_option("Hack", "GOD Mode", ::godmodetoggle, "Hack");
		// 	self add_option("Hack", "No Clip Mode", ::toggleufo, "Hack");
		// 	self add_option("Hack", "All Perks", ::allperkstoggle, "Hack");

		// 	if (getdvar("mapname") == "mp_nuketown_2020") {
		// 		self add_option("Hack", "UFO Spawner", ::ufostoggle, "Hack");
		// 	}

		// 	self add_option("Hack", "ELeGaNcE man", ::initelegance1, "Hack");
		// 	self add_option("Hack", "Rapid Fire", ::rapidfire, "Hack");
			
		// 	self add_menu("BBuild", "Mods", self.menu.menuopt[ "Mods"], "human");
		// 	self add_option("BBuild", "^2Advanced ^7Forge Mode", ::superforgemode, "BBuild");
		// 	self add_option("BBuild", "Flag Warp-Zone", ::initteletoflag, "BBuild");
		// 	self add_option("BBuild", "Pick-Up Mode", ::forgeon, "BBuild");
			
		// 	self add_menu("Unlocks", "Mods", self.menu.menuopt[ "Mods"], "human");
		// 	self add_option("Unlocks", "VSync", ::vsync, "Unlocks");
		// 	self add_option("Unlocks", "FPS Limit", ::fpslimit, "Unlocks");
		// 	self add_option("Unlocks", "Sun Light", ::dolight, "Unlocks");
		// 	self add_option("Unlocks", "Force Host", ::forcehost, "Unlocks");
			
		// 	self add_menu("SDrops", "Mods", self.menu.menuopt[ "Mods"], "human");
		// 	self add_option("SDrops", "Supply Drop |MIX|", ::supplydrop, "SDrops");
		// 	self add_option("SDrops", "Supply Drop |Rapid|", ::supplyrapid, "SDrops");
		// 	self add_option("SDrops", "Supply Drop |ShotGun|", ::supplyshotgun, "SDrops");
		// 	self add_option("SDrops", "Supply Drop |Sniper & Pistol|", ::supplysnp, "SDrops");
		// 	self add_option("SDrops", "Supply Drop |Explosions|", ::supplyexplod, "SDrops");
			
		// 	self add_menu("MBullets", "Mods", self.menu.menuopt[ "Mods"], "human");
		// 	self add_option("MBullets", "^2NORMAL ^7BULLETS", ::stopequipb, "MBullets");
		// 	self add_option("MBullets", "Frag Bulletts", ::selectmltfrag, "MBullets");
		// 	self add_option("MBullets", "Semtex Bulletts", ::selectmltstick, "MBullets");
		// 	self add_option("MBullets", "Concussion Bulletts", ::selectmltconc, "MBullets");
		// 	self add_option("MBullets", "Flash Bulletts", ::selectmltflash, "MBullets");
		// 	self add_option("MBullets", "Axe Bulletts", ::selectmltaxe, "MBullets");
		// 	self add_option("MBullets", "C4 Bulletts", ::selectmltshock, "MBullets");
		// 	self add_option("MBullets", "EMP Bulletts", ::selectmltemp, "MBullets");
		// 	self add_option("MBullets", "Shock Bulletts", ::selectmltc4, "MBullets");
		// 	self add_option("MBullets", "Claymore Bulletts", ::selectmltclaym, "MBullets");
		// 	self add_option("MBullets", "Trophy Bulletts", ::selectmlttrosy, "MBullets");
			
		// 	self add_menu("SBullets", "Mods", self.menu.menuopt[ "Mods"], "human");
		// 	self add_option("SBullets", "CarePackage Bullets", ::docaremaker2, "SBullets");
		// 	self add_option("SBullets", "^2Green Light ^7Bullets", ::initgreenbullet, "SBullets");
		// 	self add_option("SBullets", "^1Red Light ^7Bullets", ::initredbullet, "SBullets");
		// 	self add_option("SBullets", "^3Yellow Light ^7Bullets", ::inityellowbullet, "SBullets");
			
		// 	self add_menu("Lobby", "Host", self.menu.menuopt[ "Host"], "human");
		// 	self add_option("Lobby", "^7Server [{+gostand}] ", ::submenu, "Editing");
		// 	self add_option("Lobby", "^7Fun [{+gostand}] ", ::submenu, "Fun");
		// 	self add_option("Lobby", "^7Mini Maps [{+gostand}] ", ::submenu, "compass");
			
		// 	self add_menu("Editing", "Lobby", self.menu.menuopt[ "Lobby"], "human");
		// 	self add_option("Editing", "^2FIX ^7Game-Mode", ::fixgame, "Editing");
		// 	self add_option("Editing", "^6XP Lobby^6+^5+^7", ::bigxp, "Editing");
		// 	self add_option("Editing", "Anti END Game", ::antiendgametoggle, "Editing");
		// 	self add_option("Editing", "Anti Quit", ::toggleantiquit, "Editing");
		// 	self add_option("Editing", "Anti Join", ::toggleantijoin, "Editing");
		// 	self add_option("Editing", "Anti AFK", ::antiafk, "Editing");
		// 	self add_option("Editing", "Fast Restart", ::fastrestart, "Editing");
		// 	self add_option("Editing", "END Game", ::endgame, "Editing");
		// 	self add_option("Editing", "Death Barrier", ::toggledeathbarriers, "Editing");
			
		// 	self add_menu("Fun", "Lobby", self.menu.menuopt[ "Lobby"], "human");
		// 	self add_option("Fun", "Time Speed", ::changetimescale, "Fun");
		// 	self add_option("Fun", "Knock-Back Lobby", ::knock, "Fun");
		// 	self add_option("Fun", "Long Kill-Cams", ::longkillcam, "Fun");
		// 	self add_option("Fun", "^2$ ^7MONEY ^2$^7 Events", ::events, "Fun");
		// 	self add_option("Fun", "^2$ ^5ULTRA ^7MONEY ^2$^7 Events", ::ultraevents, "Fun");
		// 	self add_option("Fun", "All Players Hear Eachother", ::hearallplayers, "Fun");
			
		// 	self add_menu("compass", "Lobby", self.menu.menuopt[ "Lobby"], "human");
		// 	self add_option("compass", "Comics", ::changeminimap1, "compass");
		// 	self add_option("compass", "Octane", ::changeminimap2, "compass");
		// 	self add_option("compass", "Static", ::changeminimap3, "compass");
		// 	self add_option("compass", "Facebook", ::changeminimap9, "compass");
		// 	self add_option("compass", "Twitter", ::changeminimap4, "compass");
		// 	self add_option("compass", "Treyarch", ::changeminimap5, "compass");
		// 	self add_option("compass", "BO2", ::changeminimap6, "compass");
		// 	self add_option("compass", "Green", ::changeminimap7, "compass");
		// 	self add_option("compass", "White", ::changeminimap8, "compass");
		// 	self add_option("compass", "PS3", ::changeminimap10, "compass");
		// 	self add_option("compass", "^7--- [{+gostand}] ---", ::submenu, "compass2");
			
		// 	self add_menu("compass2", "compass", self.menu.menuopt[ "compass"], "human");
		// 	self add_option("compass2", "XBOX", ::changeminimap11, "compass2");
		// 	self add_option("compass2", "Nuclear", ::changeminimap12, "compass2");
		// 	self add_option("compass2", "Graffiti", ::changeminimap13, "compass2");
		// 	self add_option("compass2", "Bacon", ::changeminimap14, "compass2");
		// 	self add_option("compass2", "Blue", ::changeminimap15, "compass2");
		// 	self add_option("compass2", "Cyborg", ::changeminimap16, "compass2");
		// 	self add_option("compass2", "Party", ::changeminimap17, "compass2");
			
		// 	self add_menu("Message", "Host", self.menu.menuopt[ "Host"], "human");
		// 	self add_option("Message", "^7Rules [{+gostand}] ", ::submenu, "Rules");
		// 	self add_option("Message", "^7Promotion [{+gostand}] ", ::submenu, "Promo");
		// 	self add_option("Message", "^7Tips [{+gostand}] ", ::submenu, "Guide");
			
		// 	self add_menu("Rules", "Message", self.menu.menuopt[ "Message"], "human");
		// 	self add_option("Rules", "Asking for Money", ::typewritter, "^7RULE 1: Dont ^1ask for money ^7or you will get ^1Kicked/Banned^7", "Rules");
		// 	self add_option("Rules", "Glitching", ::typewritter, "^7RULE 2: Dont ^1Glitch^7 or you will get ^1Kicked/Banned^7", "Rules");
		// 	self add_option("Rules", "Troll Door Opening", ::typewritter, "^7RULE 3: Dont ^1Troll at  the doors^7 or you will get ^1Kicked/Banned^7", "Rules");
		// 	self add_option("Rules", "Troll Zipline", ::typewritter, "^7RULE 4: Dont ^1Troll at the Zipline^7 or you will get ^1Kicked/Banned^7", "Rules");
		// 	self add_option("Rules", "AFK", ::typewritter, "^7RULE 5: Dont ^1Stay AFK^7 or you will get ^1Kicked^7", "Rules");
		// 	self add_option("Rules", "Zombies Move", ::typewritter, "^7RULE 6: Zombies STEP YOUR GAME UP!!", "Rules");
			
		// 	self add_menu("Promo", "Message", self.menu.menuopt[ "Message"], "human");
		// 	self add_option("Promo", "Sub to Skonafid", ::typewritter, "^7Subscribe to ^3YouTube.com/user/skonafid^7", "Promo");
		// 	self add_option("Promo", "Twitch Skonafid", ::typewritter, "^7Say Hello to ^6Twitch-TV^7 www.twitch.tv/skonafid^7", "Promo");
		// 	self add_option("Promo", "Sub to Crystall", ::typewritter, "^7Subscribe to ^3YouTube.com/user/CrystallizedCrew^7", "Promo");
		// 	self add_option("Promo", "Do Heart FM | T -Skonafid- ^1YouTube^7", ::doheart, "Promo");
		// 	self add_option("Promo", "Do Heart [HOST] -Skonafid- ^6Twitch^7", ::doheartog, "Promo");
		// 	self add_option("Promo", "Buy Mods", ::typewritter, "^7Buy ^2Unlock All ^7and ^2Prestige ^7for ^25$^7", "Promo");
			
		// 	self add_menu("Guide", "Message", self.menu.menuopt[ "Message"], "human");
		// 	self add_option("Guide", "Tactical Insertion", ::typewritter, "TIP 1: ^1Zombies ^7Use your ^5Tactical Insertion", "Guide");
		// 	self add_option("Guide", "Shop", ::typewritter, "TIP 2: ^2Buy ^7Stuff from the ^2$ Shop $^7 [{+speed_throw}] + [{+melee}] For the ^1Menu^7", "Guide");
		// 	self add_option("Guide", "Health", ::typewritter, "TIP 3: ^7Buy ^1Health ^7so you dont die so easily", "Guide");
		// 	self add_option("Guide", "Quick Health", ::typewritter, "TIP 4: ^7Buy ^1Quick Health ^7by pressing [{+speed_throw}] + [{+actionslot 4}]", "Guide");
		// 	self add_option("Guide", "Quick FOV", ::typewritter, "TIP 5: ^2Enable ^5FOV ^7by pressing [{+speed_throw}] + [{+actionslot 3}]", "Guide");
		// 	self add_option("Guide", "XP Tutorial", ::typewritter, "TIP 6: ^7Buying The ^1NUKE ^7 Will give you ^255k XP^7", "Guide");
		// 	self add_option("Guide", "Get To Bunkers", ::typewritter, "TIP 7: ^7Find a Bunker Quickly to Survive!!", "Guide");
			
		// 	self add_menu("AllPlayers", "Host", self.menu.menuopt[ "Host"], "human");
		// 	self add_option("AllPlayers", "Give All Players ^2500 $^7", ::giveallcash, 500, "AllPlayers");
		// 	self add_option("AllPlayers", "Give All Players ^22000 $^7", ::giveallcash, 2000, "AllPlayers");
		// 	self add_option("AllPlayers", "Give All Players ^1500 Health^7", ::giveallhealth, 500, "AllPlayers");
		// 	self add_option("AllPlayers", "Give All Players All Perks", ::giveallperks, "AllPlayers");
		// 	self add_option("AllPlayers", "Give All Players Max Ammo", ::giveallammo, "AllPlayers");
		// 	self add_option("AllPlayers", "Give All Players Random Camo", ::camoall, "AllPlayers");
		// 	self add_option("AllPlayers", "Teleport All Players To Crosshair", ::telealltocrosshair, "AllPlayers");
		// 	self add_option("AllPlayers", "Teleport All Players To...", ::teleportallplayers, "locationSelector", "AllPlayers");
			
		// 	self add_menu("Maps", "Host", self.menu.menuopt[ "Host"], "human");
		// 	self add_option("Maps", "Nuketown", ::changemap, "mp_nuketown_2020", "Maps");
		// 	self add_option("Maps", "Hijacked", ::changemap, "mp_hijacked", "Maps");
		// 	self add_option("Maps", "Express", ::changemap, "mp_express", "Maps");
		// 	self add_option("Maps", "Meltdown", ::changemap, "mp_meltdown", "Maps");
		// 	self add_option("Maps", "Drone", ::changemap, "mp_drone", "Maps");
		// 	self add_option("Maps", "Carrier", ::changemap, "mp_carrier", "Maps");
		// 	self add_option("Maps", "Overflow", ::changemap, "mp_overflow", "Maps");
		// 	self add_option("Maps", "Slums", ::changemap, "mp_slums", "Maps");
		// 	self add_option("Maps", "Turbine", ::changemap, "mp_turbine", "Maps");
		// 	self add_option("Maps", "Raid", ::changemap, "mp_raid", "Maps");
		// 	self add_option("Maps", "Cargo", ::changemap, "mp_dockside", "Maps");
		// 	self add_option("Maps", "Yemen", ::changemap, "mp_socotra", "Maps");
			
		// 	self add_menu("Maps2", "Host", self.menu.menuopt[ "Host"], "human");
		// 	self add_option("Maps2", "Downhill", ::changemap, "mp_downhill", "Maps2");
		// 	self add_option("Maps2", "Mirage", ::changemap, "mp_mirage", "Maps2");
		// 	self add_option("Maps2", "Hydro", ::changemap, "mp_hydro", "Maps2");
		// 	self add_option("Maps2", "Grind", ::changemap, "mp_skate", "Maps2");
		// 	self add_option("Maps2", "Magma", ::changemap, "mp_magma", "Maps2");
		// 	self add_option("Maps2", "Frost", ::changemap, "mp_frostbite", "Maps2");
		// 	self add_option("Maps2", "Studio", ::changemap, "mp_studio", "Maps2");
		// 	self add_option("Maps2", "Dig", ::changemap, "mp_dig", "Maps2");
		// 	self add_option("Maps2", "Vertigo", ::changemap, "mp_vertigo", "Maps2");
		// 	self add_option("Maps2", "Rush", ::changemap, "mp_paintball", "Maps2");
		// 	self add_option("Maps2", "Detour", ::changemap, "mp_detour", "Maps2");
		// 	self add_option("Maps2", "Takeoff", ::changemap, "mp_takeoff", "Maps2");
			
		// 	self add_menu("PlayersMenu", "Main Menu Human", "human");
		// 	for (i = 0; i < 12; i++) {
		// 		self add_menu("pOpt " + i, "PlayersMenu", "human");
		// 	}

		// } else if (self.status == "zombie") {
		// 	self add_menu("Main Menu Zombie", undefined, "The Shop (ZombieLand ^12.0^7)", "Unverified");
		// 	self add_option("Main Menu Zombie", "General", ::submenu, "GeneralZombie", "General");
		// 	self add_option("Main Menu Zombie", "Equipment", ::submenu, "EquipmentZombie", "Equipment");

		// 	if (self ishost()) {
		// 		self add_option("Main Menu Zombie", "Host", ::submenu, "Host", "Host");
		// 		self add_option("Main Menu Zombie", "Clients", ::submenu, "PlayersMenu", "Players");
		// 	}

		// 	self add_menu("GeneralZombie", "Main Menu Zombie", "General", "zombie");
		// 	self add_option("GeneralZombie", "^1+100 ^7Health | [{+speed_throw}] + [{+actionslot 4}] | / ^2$" + level.itemprice[ "Zombie"][ "General"][ "Health"], ::addhealth, 100, "Zombie");
		// 	self add_option("GeneralZombie", "^7UAV / ^2$" + level.itemprice[ "Zombie"][ "General"][ "UAV"], ::giveuav, "Zombie");
		// 	self add_option("GeneralZombie", "^7Infrared Vision / ^2$" + level.itemprice[ "Zombie"][ "General"][ "Infrared"], ::giveinfraredvision, "Zombie");
		// 	self add_option("GeneralZombie", "^72X ^7Speed / ^2$" + level.itemprice[ "Zombie"][ "General"][ "2XSPD"], ::speedx2, "Zombie");
		// 	self add_option("GeneralZombie", "^7Metal Zombie / ^2$" + level.itemprice[ "Zombie"][ "General"][ "RiotMan"], ::riotman, "Zombie");
		// 	self add_option("GeneralZombie", "^7Invisible For 20 Seconds / ^1$" + level.itemprice[ "Zombie"][ "General"][ "Invisible"], ::invisible, 20);
		// 	self add_option("GeneralZombie", "^7Slow Humans For 30 Seconds / ^1$" + level.itemprice[ "Zombie"][ "General"][ "SlowHumans"], ::slowhumans, 30);
		// 	self add_option("GeneralZombie", "^7--- [{+gostand}] ---", ::submenu, "Page3Z");
			
		// 	self add_menu("Page3Z", "GeneralZombie", self.menu.menuopt[ "GeneralZombie"], "Zombie");
		// 	self add_option("Page3Z", "^7Flying Zombie / ^3$" + level.itemprice[ "Zombie"][ "General"][ "Devil"], ::fzbi, "Page3Z");
		// 	self add_option("Page3Z", "^7Exploding Zombie / ^2$" + level.itemprice[ "Zombie"][ "General"][ "Bomber"], ::suicidebomb, "Page3Z");
		// 	self add_option("Page3Z", "^7Zombie King / ^1$" + level.itemprice[ "Zombie"][ "General"][ "ZKing"], ::zombieking, "Page3Z");
		// 	self add_option("Page3Z", "^7Fat Zombie / ^3$" + level.itemprice[ "Zombie"][ "General"][ "Fat"], ::fatzombie, "Page3Z");
		// 	self add_option("Page3Z", "^7HellHound / ^2$" + level.itemprice[ "Zombie"][ "General"][ "HellH"], ::hellhound, "Page3Z");
		// 	self add_option("Page3Z", "^73RD Person / ^2FREE^7", ::setthirdperson, "Page3Z");
			
		// 	self add_menu("EquipmentZombie", "Main Menu Zombie", "Equipment", "Zombie");
		// 	self add_option("EquipmentZombie", "^7Tomahawk / ^2$" + level.itemprice[ "Zombie"][ "Equipment"][ "hatchet_mp"], ::giveequipment, "hatchet_mp", "Zombie");
		// 	self add_option("EquipmentZombie", "^7EMP Grenade / ^2$" + level.itemprice[ "Zombie"][ "Equipment"][ "emp_grenade_mp"], ::giveequipment, "emp_grenade_mp", "Zombie");
		// 	self add_option("EquipmentZombie", "^7Smoke Grenade / ^2$" + level.itemprice[ "Zombie"][ "Equipment"][ "willy_pete_mp"], ::giveequipment, "willy_pete_mp", "Zombie");
		// 	self add_option("EquipmentZombie", "^7CS GO Knife / ^2FREE^7", ::bg_giveplayerweapon, "knife_mp", "Zombie");
		// 	if(self ishost()) {
				
		// 		self add_menu("Host", "Main Menu Zombie", "Host");
		// 		self add_option("Host", "^7Main Modifications", ::submenu, "Mods");
		// 		self add_option("Host", "^7Lobby", ::submenu, "Lobby");
		// 		self add_option("Host", "^7Messages", ::submenu, "Message");
		// 		self add_option("Host", "^7All Players", ::submenu, "AllPlayers");
		// 		self add_option("Host", "^7---- ^5MAPS^7 ----", ::submenu, "Maps");
		// 		self add_option("Host", "^7---- ^1DLC ^5MAPS^7 ----", ::submenu, "Maps2");
				
		// 		self add_menu("Mods", "Host", self.menu.menuopt[ "Host"], "human");
		// 		self add_option("Mods", "^7Hacks [{+gostand}] ", ::submenu, "Hack");
		// 		self add_option("Mods", "^7Build [{+gostand}] ", ::submenu, "BBuild");
		// 		self add_option("Mods", "^5DVar^7 Unlocks [{+gostand}] ", ::submenu, "Unlocks");
		// 		self add_option("Mods", "^7Supply Drops [{+gostand}] ", ::submenu, "SDrops");
		// 		self add_option("Mods", "^7Equipment Bullets [{+gostand}] ", ::submenu, "MBullets");
		// 		self add_option("Mods", "^7Special Bullets [{+gostand}] ", ::submenu, "SBullets");
				
		// 		self add_menu("Hack", "Mods", self.menu.menuopt[ "Mods"], "human");
		// 		self add_option("Hack", "GOD Mode", ::godmodetoggle, "Hack");
		// 		self add_option("Hack", "No Clip Mode", ::toggleufo, "Hack");
		// 		self add_option("Hack", "All Perks", ::allperkstoggle, "Hack");

		// 		if(getdvar("mapname") == "mp_nuketown_2020") {
		// 			self add_option("Hack", "UFO Spawner", ::ufostoggle, "Hack");
		// 		}

		// 		self add_option("Hack", "ELeGaNcE man", ::initelegance1, "Hack");
		// 		self add_option("Hack", "Rapid Fire", ::rapidfire, "Hack");
				
		// 		self add_menu("BBuild", "Mods", self.menu.menuopt[ "Mods"], "human");
		// 		self add_option("BBuild", "^2Advanced ^7Forge Mode", ::superforgemode, "BBuild");
		// 		self add_option("BBuild", "Flag Warp-Zone", ::initteletoflag, "BBuild");
		// 		self add_option("BBuild", "Pick-Up Mode", ::forgeon, "BBuild");
				
		// 		self add_menu("Unlocks", "Mods", self.menu.menuopt[ "Mods"], "human");
		// 		self add_option("Unlocks", "VSync", ::vsync, "Unlocks");
		// 		self add_option("Unlocks", "FPS Limit", ::fpslimit, "Unlocks");
		// 		self add_option("Unlocks", "Sun Light", ::dolight, "Unlocks");
		// 		self add_option("Unlocks", "Force Host", ::forcehost, "Unlocks");
				
		// 		self add_menu("SDrops", "Mods", self.menu.menuopt[ "Mods"], "human");
		// 		self add_option("SDrops", "Supply Drop |MIX|", ::supplydrop, "SDrops");
		// 		self add_option("SDrops", "Supply Drop |Rapid|", ::supplyrapid, "SDrops");
		// 		self add_option("SDrops", "Supply Drop |ShotGun|", ::supplyshotgun, "SDrops");
		// 		self add_option("SDrops", "Supply Drop |Sniper & Pistol|", ::supplysnp, "SDrops");
		// 		self add_option("SDrops", "Supply Drop |Explosions|", ::supplyexplod, "SDrops");
				
		// 		self add_menu("MBullets", "Mods", self.menu.menuopt[ "Mods"], "human");
		// 		self add_option("MBullets", "^2NORMAL ^7BULLETS", ::stopequipb, "MBullets");
		// 		self add_option("MBullets", "Frag Bulletts", ::selectmltfrag, "MBullets");
		// 		self add_option("MBullets", "Semtex Bulletts", ::selectmltstick, "MBullets");
		// 		self add_option("MBullets", "Concussion Bulletts", ::selectmltconc, "MBullets");
		// 		self add_option("MBullets", "Flash Bulletts", ::selectmltflash, "MBullets");
		// 		self add_option("MBullets", "Axe Bulletts", ::selectmltaxe, "MBullets");
		// 		self add_option("MBullets", "C4 Bulletts", ::selectmltshock, "MBullets");
		// 		self add_option("MBullets", "EMP Bulletts", ::selectmltemp, "MBullets");
		// 		self add_option("MBullets", "Shock Bulletts", ::selectmltc4, "MBullets");
		// 		self add_option("MBullets", "Claymore Bulletts", ::selectmltclaym, "MBullets");
		// 		self add_option("MBullets", "Trophy Bulletts", ::selectmlttrosy, "MBullets");
				
		// 		self add_menu("SBullets", "Mods", self.menu.menuopt[ "Mods"], "human");
		// 		self add_option("SBullets", "CarePackage Bullets", ::docaremaker2, "SBullets");
		// 		self add_option("SBullets", "^2Green Light ^7Bullets", ::initgreenbullet, "SBullets");
		// 		self add_option("SBullets", "^1Red Light ^7Bullets", ::initredbullet, "SBullets");
		// 		self add_option("SBullets", "^3Yellow Light ^7Bullets", ::inityellowbullet, "SBullets");
				
		// 		self add_menu("Lobby", "Host", self.menu.menuopt[ "Host"], "human");
		// 		self add_option("Lobby", "^7Server [{+gostand}] ", ::submenu, "Editing");
		// 		self add_option("Lobby", "^7Fun [{+gostand}] ", ::submenu, "Fun");
		// 		self add_option("Lobby", "^7Mini Maps [{+gostand}] ", ::submenu, "compass");
				
		// 		self add_menu("Editing", "Lobby", self.menu.menuopt[ "Lobby"], "human");
		// 		self add_option("Editing", "^2FIX ^7Game-Mode", ::fixgame, "Editing");
		// 		self add_option("Editing", "^6XP Lobby^6+^5+^7", ::bigxp, "Editing");
		// 		self add_option("Editing", "Anti END Game", ::antiendgametoggle, "Editing");
		// 		self add_option("Editing", "Anti Quit", ::toggleantiquit, "Editing");
		// 		self add_option("Editing", "Anti Join", ::toggleantijoin, "Editing");
		// 		self add_option("Editing", "Anti AFK", ::antiafk, "Editing");
		// 		self add_option("Editing", "Fast Restart", ::fastrestart, "Editing");
		// 		self add_option("Editing", "END Game", ::endgame, "Editing");
		// 		self add_option("Editing", "Death Barrier", ::toggledeathbarriers, "Editing");
				
		// 		self add_menu("Fun", "Lobby", self.menu.menuopt[ "Lobby"], "human");
		// 		self add_option("Fun", "Time Speed", ::changetimescale, "Fun");
		// 		self add_option("Fun", "Knock-Back Lobby", ::knock, "Fun");
		// 		self add_option("Fun", "Long Kill-Cams", ::longkillcam, "Fun");
		// 		self add_option("Fun", "^2$ ^7MONEY ^2$^7 Events", ::events, "Fun");
		// 		self add_option("Fun", "^2$ ^5ULTRA ^7MONEY ^2$^7 Events", ::ultraevents, "Fun");
		// 		self add_option("Fun", "All Players Hear Eachother", ::hearallplayers, "Fun");
				
		// 		self add_menu("compass", "Lobby", self.menu.menuopt[ "Lobby"], "human");
		// 		self add_option("compass", "Comics", ::changeminimap1, "compass");
		// 		self add_option("compass", "Octane", ::changeminimap2, "compass");
		// 		self add_option("compass", "Static", ::changeminimap3, "compass");
		// 		self add_option("compass", "Facebook", ::changeminimap9, "compass");
		// 		self add_option("compass", "Twitter", ::changeminimap4, "compass");
		// 		self add_option("compass", "Treyarch", ::changeminimap5, "compass");
		// 		self add_option("compass", "BO2", ::changeminimap6, "compass");
		// 		self add_option("compass", "Green", ::changeminimap7, "compass");
		// 		self add_option("compass", "White", ::changeminimap8, "compass");
		// 		self add_option("compass", "PS3", ::changeminimap10, "compass");
		// 		self add_option("compass", "^7--- [{+gostand}] ---", ::submenu, "compass2");
				
		// 		self add_menu("compass2", "compass", self.menu.menuopt[ "compass"], "human");
		// 		self add_option("compass2", "XBOX", ::changeminimap11, "compass2");
		// 		self add_option("compass2", "Nuclear", ::changeminimap12, "compass2");
		// 		self add_option("compass2", "Graffiti", ::changeminimap13, "compass2");
		// 		self add_option("compass2", "Bacon", ::changeminimap14, "compass2");
		// 		self add_option("compass2", "Blue", ::changeminimap15, "compass2");
		// 		self add_option("compass2", "Cyborg", ::changeminimap16, "compass2");
		// 		self add_option("compass2", "Party", ::changeminimap17, "compass2");
				
		// 		self add_menu("Message", "Host", self.menu.menuopt[ "Host"], "human");
		// 		self add_option("Message", "^7Rules [{+gostand}] ", ::submenu, "Rules");
		// 		self add_option("Message", "^7Promotion [{+gostand}] ", ::submenu, "Promo");
		// 		self add_option("Message", "^7Tips [{+gostand}] ", ::submenu, "Guide");
				
		// 		self add_menu("Rules", "Message", self.menu.menuopt[ "Message"], "human");
		// 		self add_option("Rules", "Asking for Money", ::typewritter, "^7RULE 1: Dont ^1ask for money ^7or you will get ^1Kicked/Banned^7", "Rules");
		// 		self add_option("Rules", "Glitching", ::typewritter, "^7RULE 2: Dont ^1Glitch^7 or you will get ^1Kicked/Banned^7", "Rules");
		// 		self add_option("Rules", "Troll Door Opening", ::typewritter, "^7RULE 3: Dont ^1Troll at  the doors^7 or you will get ^1Kicked/Banned^7", "Rules");
		// 		self add_option("Rules", "Troll Zipline", ::typewritter, "^7RULE 4: Dont ^1Troll at the Zipline^7 or you will get ^1Kicked/Banned^7", "Rules");
		// 		self add_option("Rules", "AFK", ::typewritter, "^7RULE 5: Dont ^1Stay AFK^7 or you will get ^1Kicked^7", "Rules");
		// 		self add_option("Rules", "Zombies Move", ::typewritter, "^7RULE 6: Zombies STEP YOUR GAME UP!!", "Rules");
				
		// 		self add_menu("Promo", "Message", self.menu.menuopt[ "Message"], "human");
		// 		self add_option("Promo", "Sub to Skonafid", ::typewritter, "^7Subscribe to ^3YouTube.com/user/skonafid^7", "Promo");
		// 		self add_option("Promo", "Twitch Skonafid", ::typewritter, "^7Say Hello to ^6Twitch-TV^7 www.twitch.tv/skonafid^7", "Promo");
		// 		self add_option("Promo", "Sub to Crystall", ::typewritter, "^7Subscribe to ^3YouTube.com/user/CrystallizedCrew^7", "Promo");
		// 		self add_option("Promo", "Do Heart FM | T -Skonafid- ^1YouTube^7", ::doheart, "Promo");
		// 		self add_option("Promo", "Do Heart [HOST] -Skonafid- ^6Twitch^7", ::doheartog, "Promo");
		// 		self add_option("Promo", "Buy Mods", ::typewritter, "^7Buy ^2Unlock All ^7and ^2Prestige ^7for ^25$^7", "Promo");
				
		// 		self add_menu("Guide", "Message", self.menu.menuopt[ "Message"], "human");
		// 		self add_option("Guide", "Tactical Insertion", ::typewritter, "TIP 1: ^1Zombies ^7Use your ^5Tactical Insertion", "Guide");
		// 		self add_option("Guide", "Shop", ::typewritter, "TIP 2: ^2Buy ^7Stuff from the ^2$ Shop $^7 [{+speed_throw}] + [{+melee}] For the ^1Menu^7", "Guide");
		// 		self add_option("Guide", "Health", ::typewritter, "TIP 3: ^7Buy ^1Health ^7so you dont die so easily", "Guide");
		// 		self add_option("Guide", "Quick Health", ::typewritter, "TIP 4: ^7Buy ^1Quick Health ^7by pressing [{+speed_throw}] + [{+actionslot 4}]", "Guide");
		// 		self add_option("Guide", "Quick FOV", ::typewritter, "TIP 5: ^2Enable ^5FOV ^7by pressing [{+speed_throw}] + [{+actionslot 3}]", "Guide");
		// 		self add_option("Guide", "XP Tutorial", ::typewritter, "TIP 6: ^7Buying The ^1NUKE ^7 Will give you ^255k XP^7", "Guide");
		// 		self add_option("Guide", "Get To Bunkers", ::typewritter, "TIP 7: ^7Find a Bunker Quickly to Survive!!", "Guide");
				
		// 		self add_menu("AllPlayersZ", "HostZ", self.menu.menuopt[ "HostZ"]);
		// 		self add_option("AllPlayersZ", "Give All Players ^2500 $^7", ::giveallcash, 500, "AllPlayersZ");
		// 		self add_option("AllPlayersZ", "Give All Players ^22000 $^7", ::giveallcash, 2000, "AllPlayersZ");
		// 		self add_option("AllPlayersZ", "Give All Players ^1500 Health^7", ::giveallhealth, 500, "AllPlayersZ");
		// 		self add_option("AllPlayersZ", "Give All Players All Perks", ::giveallperks, "AllPlayersZ");
		// 		self add_option("AllPlayersZ", "Give All Players Max Ammo", ::giveallammo, "AllPlayersZ");
		// 		self add_option("AllPlayersZ", "Give All Players Random Camo", ::camoall, "AllPlayersZ");
		// 		self add_option("AllPlayersZ", "Teleport All Players To Crosshair", ::telealltocrosshair, "AllPlayersZ");
		// 		self add_option("AllPlayersZ", "Teleport All Players To...", ::teleportallplayers, "locationSelector", "AllPlayersZ");
				
		// 		self add_menu("MapsZ", "HostZ", self.menu.menuopt[ "HostZ"]);
		// 		self add_option("MapsZ", "Nuketown", ::changemap, "mp_nuketown_2020", "MapsZ");
		// 		self add_option("MapsZ", "Hijacked", ::changemap, "mp_hijacked", "MapsZ");
		// 		self add_option("MapsZ", "Express", ::changemap, "mp_express", "MapsZ");
		// 		self add_option("MapsZ", "Meltdown", ::changemap, "mp_meltdown", "MapsZ");
		// 		self add_option("MapsZ", "Drone", ::changemap, "mp_drone", "MapsZ");
		// 		self add_option("MapsZ", "Carrier", ::changemap, "mp_carrier", "MapsZ");
		// 		self add_option("MapsZ", "Overflow", ::changemap, "mp_overflow", "MapsZ");
		// 		self add_option("MapsZ", "Slums", ::changemap, "mp_slums", "MapsZ");
		// 		self add_option("MapsZ", "Turbine", ::changemap, "mp_turbine", "MapsZ");
		// 		self add_option("MapsZ", "Raid", ::changemap, "mp_raid", "MapsZ");
		// 		self add_option("MapsZ", "Cargo", ::changemap, "mp_dockside", "MapsZ");
		// 		self add_option("MapsZ", "Yemen", ::changemap, "mp_socotra", "MapsZ");
				
		// 		self add_menu("MapsZ2", "HostZ", self.menu.menuopt[ "HostZ"]);
		// 		self add_option("MapsZ2", "Downhill", ::changemap, "mp_downhill", "MapsZ2");
		// 		self add_option("MapsZ2", "Mirage", ::changemap, "mp_mirage", "MapsZ2");
		// 		self add_option("MapsZ2", "Hydro", ::changemap, "mp_hydro", "MapsZ2");
		// 		self add_option("MapsZ2", "Grind", ::changemap, "mp_skate", "MapsZ2");
		// 		self add_option("MapsZ2", "Magma", ::changemap, "mp_magma", "MapsZ2");
		// 		self add_option("MapsZ2", "Frost", ::changemap, "mp_frostbite", "MapsZ2");
		// 		self add_option("MapsZ2", "Studio", ::changemap, "mp_studio", "MapsZ2");
		// 		self add_option("MapsZ2", "Dig", ::changemap, "mp_dig", "MapsZ2");
		// 		self add_option("MapsZ2", "Vertigo", ::changemap, "mp_vertigo", "MapsZ2");
		// 		self add_option("MapsZ2", "Rush", ::changemap, "mp_paintball", "MapsZ2");
		// 		self add_option("MapsZ2", "Detour", ::changemap, "mp_detour", "MapsZ2");
		// 		self add_option("MapsZ2", "Takeoff", ::changemap, "mp_takeoff", "MapsZ2");
		// 		self add_menu("PlayersMenu", "Main Menu Zombie", "zombie");

		// 		for (i = 0; i < 12; i++) {
		// 			self add_menu("pOpt " + i, "PlayersMenu", "zombie");
		// 		}
		// 	}
		// }
	}
}

menuCloseOnDeath() {
    level endon("game_ended");
    self endon("disconnect");
    self endon("destroy_menu");

    for (;;) {
        self waittill("death");
        self.menu.closeondeath = 1;

        if (self.status == "human") {
            self submenu("Main Menu (Human)", "Main Menu (Human)");
        } else if (self.status == "zombie") {
            self submenu("Main Menu (Zombie)", "Main Menu (Zombie)");
        }

        closemenu();
    }
}

closemenu() {
	self.menu.options fadeovertime(0.1);
	self.menu.options.alpha = 0;
	self.menu.background scaleovertime(0.25, 0, 0);
	self.menu.background fadeovertime(0.25);
	self.menu.background.alpha = 0;
	self.menu.title fadeovertime(0.25);
	self.menu.title.alpha = 0;
	self.menu.scroller scaleovertime(0.1, 0, 0);
	self.menu.scroller fadeovertime(0.1);
	self.menu.scroller.alpha = 0;
	self.menu.open = 0;
}


updateplayersmenu() {
	self.menu.menucount["PlayersMenu"] = 0;
	for (i = 0; i < 12; i++) {
		player = level.players[i];
		name = player.name;
		playersizefixed -= 1;

		if (self.menu.curs["PlayersMenu"] > playersizefixed) {
			self.menu.scrollerpos["PlayersMenu"] = playersizefixed;
			self.menu.curs["PlayersMenu"] = playersizefixed;
		}

		self add_option("PlayersMenu", verificationtocolor(player.status) + player.name, ::submenu, "pOpt " + i, verificationtocolor(player.status) + player.name);
		self add_menu_alt("pOpt " + i, "PlayersMenu");
		self add_option("pOpt " + i, "Main [{+gostand}]", ::submenu, "Paa " + i, "Main");
		self add_option("pOpt " + i, "Money [{+gostand}]", ::submenu, "Mani " + i, "Money");
		self add_option("pOpt " + i, "Health [{+gostand}]", ::submenu, "Halt " + i, "Health");
		self add_option("pOpt " + i, "Weapon [{+gostand}]", ::submenu, "Ase " + i, "Weapon");
		self add_menu("Paa " + i, "pOpt " + i);
        self add_option("Paa " + i, "Teleport To Me", ::teletome, player);
		self add_option("Paa " + i, "Teleport To Him/Her", ::teletohim, player);
        self add_option("Paa " + i, "Give 55K XP", ::rankupplayer, player);
		self add_option("Paa " + i, "Kill", ::killplayer, player);
		self add_option("Paa " + i, "Kick", ::kickplayer, player);
		self add_option("Paa " + i, "Ban", ::banplayer, player);
		// removed freeze since plutonium anyway fixed it
		// self add_option("Paa " + i, "Freeze PS3/XBOX", ::freezetheps3, player);
		self add_menu("Mani " + i, "pOpt " + i);
		self add_option("Mani " + i, "Give ^2500 $^7", ::giveplayercash, 500, player);
		self add_option("Mani " + i, "Give ^21000 $^7", ::giveplayercash, 1000, player);
		self add_option("Mani " + i, "Give ^22500 $^7", ::giveplayercash, 2500, player);
		self add_option("Mani " + i, "Give ^25000 $^7", ::giveplayercash, 5000, player);
		self add_option("Mani " + i, "Take ^2-500 $^7", ::takeplayercash, 500, player);
		self add_option("Mani " + i, "Take ^2-1000 $^7", ::takeplayercash, 1000, player);
		self add_option("Mani " + i, "Take ^2-2500 $^7", ::takeplayercash, 2500, player);
		self add_option("Mani " + i, "Take ^2-5000 $^7", ::takeplayercash, 5000, player);
		self add_menu("Halt " + i, "pOpt " + i);
		self add_option("Halt " + i, "Give ^1500 Health^7", ::giveplayerhealth, 500, player);
		self add_option("Halt " + i, "Give ^11000 Health^7", ::giveplayerhealth, 1000, player);
		self add_option("Halt " + i, "Give ^12500 Health^7", ::giveplayerhealth, 2500, player);
		self add_option("Halt " + i, "Give ^15000 Health^7", ::giveplayerhealth, 5000, player);
		self add_option("Halt " + i, "Take ^1-500 Health^7", ::takeplayerhealth, 500, player);
		self add_option("Halt " + i, "Take ^1-1000 Health^7", ::takeplayerhealth, 1000, player);
		self add_option("Halt " + i, "Take ^1-2500 Health^7", ::takeplayerhealth, 2500, player);
		self add_option("Halt " + i, "Take ^1-5000 Health^7", ::takeplayerhealth, 5000, player);
		self add_menu("Ase " + i, "pOpt " + i);
		self add_option("Ase " + i, "Give MP7", ::giveplayerweapon, "mp7_mp+extclip++mms", player);
		self add_option("Ase " + i, "Give Vector-K10", ::giveplayerweapon, "vector_mp+mms++extclip", player);
		self add_option("Ase " + i, "Give SCAR-H", ::giveplayerweapon, "scar_mp+mms+extclip", player);
		self add_option("Ase " + i, "Give DSR", ::giveplayerweapon, "dsr50_mp+fmj+dualclip+steadyaim", player);
		self add_option("Ase " + i, "Give 870-MCS", ::giveplayerweapon, "870mcs_mp+steadyaim+extbarrel", player);
		self add_option("Ase " + i, "Give All Perks", ::giveplayerperks, player);
		self add_option("Ase " + i, "Take Weapon From Player", ::takewepfromplayer, player);
		self add_option("Ase " + i, "Take All Weapons From Player", ::takewepsfromplayer, player);
		wait 0.01;
	}
}

verificationtocolor(status) {
	if (status == "zombie") {
        return "^1";
    }

    return "^6";
}

submenu(input, title) {
	self.menu.options scripts\mp\zombieland\overflow::destroyelement();
	if (!isdefined(title)) {
		title = self.menu.subtitle[input];
	}

	if (input == "Main Menu Human" || input == "Main Menu Zombie") {
		self thread storetext(input, "Shop (ZombieLand " + level.__version__ + ")");
	} else if (input == "PlayersMenu") {
		self updateplayersmenu();
		self thread storetext(input, "Players");
	} else {
		self thread storetext(input, title);
	}

	self.curmenu = input;
	self.menu.scrollerpos[self.curmenu] = self.menu.curs[self.curmenu];
	self.menu.curs[input] = self.menu.scrollerpos[input];
	
    if (!self.menu.closeondeath) {
		self.menu.scroller moveovertime(0.1);
	    self.menu.scroller.y += self.menu.curs[self.menu.currentmenu] * 18.1;
	}
}

add_menu_alt(menu, prevmenu) {
	self.menu.getmenu[menu] = menu;
	self.menu.menucount[menu] = 0;
	self.menu.previousmenu[menu] = prevmenu;

}

add_menu(menu, prevmenu, menutitle, status) {
	self.menu.status[menu] = status;
	self.menu.getmenu[menu] = menu;
	self.menu.scrollerpos[menu] = 0;
	self.menu.curs[menu] = 0;
	self.menu.menucount[menu] = 0;
	self.menu.subtitle[menu] = menutitle;
	self.menu.previousmenu[menu] = prevmenu;
}

add_option(menu, text, func, arg1, arg2) {
	menu = self.menu.getmenu[menu];
	num = self.menu.menucount[menu];
	self.menu.menuopt[menu][num] = text;
	self.menu.menufunc[menu][num] = func;
	self.menu.menuinput[menu][num] = arg1;
	self.menu.menuinput1[menu][num] = arg2;
	self.menu.menucount[menu] += 1;
}

storeshaders() {
	self.menu.background = self drawshader("white", 200, 140, 0, 0, (0, 0, 0), 0, 1, 0);
	self.menu.scroller = self drawshader("white", 200, 160, 250, 18, (1, 0, 800), 0, 2, 0);

}

storetext(menu, title) {
	self.menu.currentmenu = menu;
	string = "";
	self.menu.title destroyelement();
	self.menu.title = drawtext(title, "objective", 2, 200, 110, (1, 1, 1), 0, (255, 0, 0), 0, 3, 0);
	self.menu.title fadeovertime(0.3);
	self.menu.title.alpha = 1;

	for (i=0; i<self.menu.menuopt[menu].size; i++) {
		string = string + self.menu.menuopt[menu][i] + "";
	}

	self.menu.options scripts\mp\zombieland\overflow::destroyelement();
	self.menu.options = drawtext(string, "objective", 1.5, 200, 160, (1, 1, 1), 0, (0, 0, 0), 0, 4);
	self.menu.options fadeovertime(0.3);
	self.menu.options.alpha = 1;

}