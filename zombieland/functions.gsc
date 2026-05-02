teletome(player) {
	if (!player ishost()) {
		self iprintln(player.name + " Teleported to you");
		player setorigin(self.origin);
	}
}

teletohim(player) {
	if (!player ishost()) {
		self iprintlnbold("Teleported to " + player.name);
		self setorigin(player.origin + (-10, 0, 0));
	}
}

rankupplayer(player) {
	if (self ishost()) {
		if (player.rankup == 0) {
			player iPrintLn(self.name + " Has given you 55K XP");
			self iprintln("You gave " + player.name + " ^255K XP^7");
			player.rankup = 1;
			player playsoundtoplayer("mus_lau_rank_up", self);
			player addrankxpvalue("contract", 55000);
		} else {
			self iprintln(player.name + " has already been given ^2XP^7!");
		}
	}
}

killplayer(player) {
	if (self ishost()) {
		if (isalive(player)) {
			player suicide();
		}
		self iprintln("^6" + player.name + " ^7Has Been ^1Eliminated");
	}
}

kickplayer(player) {
	if (self ishost()) {
		var = strtok("ui_errorTitle,ui_errorMessage,ui_errorMessageDebug", ",");
		txt = strtok("Player Kicked:|You have been kicked by " + level.hostname + "Please do not rejoin my lobby Youre too young kid|Go to bed kiddo!", "|");

		for (i = 0; i < var.size; i++) {
			makedvarserverinfo(var[i], txt[i]);
		}

		kick(player getentitynumber());
		iprintln("^6" + player.name + " ^7Has Been ^1Kicked");
	}

}

banplayer(player) {
	if (self ishost()) {
		var = strtok("ui_errorTitle,ui_errorMessage,ui_errorMessageDebug", ",");
		txt = strtok("Player Banned:|You have been Banned by " + level.hostname + "You just got Rekt Youre too young kid|Go to bed kiddo!", "|");

		for (i = 0; i < var.size; i++) {
			makedvarserverinfo(var[i], txt[i]);
		}

		ban(player getentitynumber());
		iprintln("^6" + player.name + " ^7Has Been ^1Banned");
	}
}

giveplayercash(ammount, player) {
	player.money = player.money + ammount;
	player iprintln("^6" + self.name + "^7 has given you ^6$" + ammount);
	self iprintln("^7You have ^6given^7 " + player.name + "^6 $" + ammount);
}

takeplayercash(ammount, player) {
	player.money = player.money - ammount;
	self iprintln("^7You have Taken ^6" + player.name + "^6 $" + ammount);
}

giveplayerhealth(ammount, player) {
	player.health = player.health + ammount;
	player.max_health = player.health;
	if (!player.health_monitor) {
		player thread scripts\mp\zombieland\monitor::healthMonitor();
	}

	player iprintln("^6" + self.name + "^7 has given you ^7 " + ammount + " ^1health");
	self iprintln("^7You have given ^6" + player.name + "^7 " + ammount + " ^1health");
}

takeplayerhealth(ammount, player) {
	player.health = player.health - ammount;
	player.max_health = player.health;
	if (player.healthmonitor) {
		player thread scripts\mp\zombieland\monitor::healthMonitor();
	}

	self iprintln("^7You have Taken ^6" + player.name + "^7 " + ammount + " ^1health");
}

giveplayerweapon(weapon, player) {
	weap = player getcurrentweapon();
	player takeweapon(weap);
	player giveweapon(weapon);
	player switchtoweapon(weapon);
}

giveplayerperks(player) {
	player clearperks();
	player setperk("specialty_additionalprimaryweapon");
	player setperk("specialty_armorpiercing");
	player setperk("specialty_armorvest");
	player setperk("specialty_bulletaccuracy");
	player setperk("specialty_bulletdamage");
	player setperk("specialty_bulletflinch");
	player setperk("specialty_bulletpenetration");
	player setperk("specialty_deadshot");
	player setperk("specialty_delayexplosive");
	player setperk("specialty_detectexplosive");
	player setperk("specialty_disarmexplosive");
	player setperk("specialty_earnmoremomentum");
	player setperk("specialty_explosivedamage");
	player setperk("specialty_extraammo");
	player setperk("specialty_fallheight");
	player setperk("specialty_fastads");
	player setperk("specialty_fastequipmentuse");
	player setperk("specialty_fastladderclimb");
	player setperk("specialty_fastmantle");
	player setperk("specialty_fastmeleerecovery");
	player setperk("specialty_fastreload");
	player setperk("specialty_fasttoss");
	player setperk("specialty_fastweaponswitch");
	player setperk("specialty_finalstand");
	player setperk("specialty_fireproof");
	player setperk("specialty_flakjacket");
	player setperk("specialty_flashprotection");
	player setperk("specialty_gpsjammer");
	player setperk("specialty_grenadepulldeath");
	player setperk("specialty_healthregen");
	player setperk("specialty_holdbreath");
	player setperk("specialty_immunecounteruav");
	player setperk("specialty_immuneemp");
	player setperk("specialty_immunemms");
	player setperk("specialty_immunenvthermal");
	player setperk("specialty_immunerangefinder");
	player setperk("specialty_killstreak");
	player setperk("specialty_longersprint");
	player setperk("specialty_loudenemies");
	player setperk("specialty_marksman");
	player setperk("specialty_movefaster");
	player setperk("specialty_nomotionsensor");
	player setperk("specialty_noname");
	player setperk("specialty_nottargetedbyairsupport");
	player setperk("specialty_nokillstreakreticle");
	player setperk("specialty_nottargettedbysentry");
	player setperk("specialty_pin_back");
	player setperk("specialty_pistoldeath");
	player setperk("specialty_proximityprotection");
	player setperk("specialty_quickrevive");
	player setperk("specialty_quieter");
	player setperk("specialty_reconnaissance");
	player setperk("specialty_rof");
	player setperk("specialty_showenemyequipment");
	player setperk("specialty_stunprotection");
	player setperk("specialty_shellshock");
	player setperk("specialty_sprintrecovery");
	player setperk("specialty_showonradar");
	player setperk("specialty_stalker");
	player setperk("specialty_twogrenades");
	player setperk("specialty_twoprimaries");
	player setperk("specialty_unlimitedsprint");
}

takewepfromplayer(player) {
	self iprintln("Weapon was taken from this scrublord");
	player takeweapon(self getcurrentweapon());
}

takewepsfromplayer(player) {
	self iprintln("Weapons were taken from this scrublord");
	player takeallweapons();
}

giveuav(status) {
	if (self.money >= level.item_price[status]["General"]["UAV"]) {
		if (!IsDefined(self.uav)) {
			self.uav = 1;
			self setclientuivisibilityflag("g_compassShowEnemies", 1);
			self.money = self.money - level.item_price[status]["General"]["UAV"];
			self iprintln("^2UAV ^7Purchased Successfully");
		} else {
			self scripts\mp\zombieland\utils::senderror("AlreadyHasUAV");
		}
	} else {
		self scripts\mp\zombieland\utils::senderror("MoreMoney");
	}
}

addhealth(amount, status) {
	if (self.money >= level.item_price[status]["General"]["Health"]) {
		self.adding_health = 1;
		wait 0.01;

		self.health = self.health + amount;
		self.max_health = self.health;
		self.adding_health = 0;

		if (!self.healthmonitor) {
			self thread scripts\mp\zombieland\monitor::monitorhealth();
		}

		self.money = self.money - level.item_price[status]["General"]["Health"];
		self iprintln("^1+100 Health ^7Purchased Successfully");
	} else {
		self scripts\mp\zombieland\utils::senderror("MoreMoney");
	}
}

refillammo() {
	self.current_weapon = self getcurrentweapon();
	if (self.money >= level.item_price["Human"]["Weapons"]["Ammo"]) {
		if (isvalidweapon(self.current_weapon)) {
			self setweaponammoclip(self.current_weapon, weaponclipsize(self.current_weapon));
			self givemaxammo( self.current_weapon );
			self.money = self.money - level.item_price["Human"]["Weapons"]["Ammo"];
			self iprintln( "^2Max Ammo ^7Purchased Successfully" );
		} else {
			self scripts\mp\zombieland\utils::senderror( "InvalidWeapon" );
		}
	} else {
		self scripts\mp\zombieland\utils::senderror( "MoreMoney" );
	}

}

giveinfraredvision(status) {
	if(self.money >= level.item_price[status]["General"]["Infrared"]) {
		if (!IsDefined(self.infrared_on))) {
			self.infrared_on = 1;
			self iprintln("^2Infrared Vision ^7Purchased Successfully");
			self.money = self.money - level.item_price[status]["General"]["Infrared"];
			self setinfraredvision(1);
			self useservervisionset(1);
			self setvisionsetforplayer(level.remore_mortar_infrared_vision, 1);
		} else {
			self scripts\mp\zombieland\utils::senderror("AlreadyHasInfrared");
		}
	} else {
		self scripts\mp\zombieland\utils::senderror("MoreMoney");
	}
}
