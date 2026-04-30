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
	if (!IsDefined(title)) {
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