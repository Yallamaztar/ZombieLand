wait_network_frame() {
    wait 0.1;
}

spawnbots() {
	if (!level.bots_have_been_spawned) {
        for (i=0; i < level.amount_of_bots_to_spawn; i++) {
			spawnbot();
			wait 0.075;
		}
		level.bots_have_been_spawned = 1;
	}
}

spawnbot() {
	maps\mp\bots\_bot::spawn_bot("autoassign");
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

senderror(errortype) {
    if (errortype == "MoreMoney") {
        self iprintln("^1Error: ^7You Do Not Have Enough Money For This Item");
    } else if (errortype == "InvalidWeaponAttachment") {
        self iprintln("^1Error: ^7You Cannot Put This Attachment On This Weapon");
    } else if (errortype == "InvalidWeapon") {
        self iprintln("^1Error: ^7You Are Holding An Invalid Weapon");
    } else if (errortype == "AlreadyHasWeapon") {
        self iprintln("^1Error: ^7You Already Own This Weapon");
    } else if (errortype == "AlreadyHasAttachment") {
        self iprintln("^1Error: ^7You Already Have This Attachment");
    } else if (errortype == "MaxAmmo") {
        self iprintln("^1Error: ^7You Already Have Maximum Ammo For This Weapon");
    } else if (errortype == "AlreadyHasUAV") {
        self iprintln("^1Error: ^7You Already Have A UAV");
    } else if (errortype == "MaxTurrets") {
        self iprintln("^1Error: ^7Max Number of Turrets Reached!");
    } else if (errortype == "AlreadyHaveEquipment") {
        self iprintln("^1Error: ^7You Already Have This Equipment");
    } else if (errortype == "HasPerk") {
        self iprintln("^1Error: ^7You Already Have This Perk");
    } else if (errortype == "AlreadyInvisible") {
        self iprintln("^1Error: ^7You Are Already Invisible");
    } else if (errortype == "AlreadySlowedHumans") {
        self iprintln("^1Error: ^7Humans Have Already Been Slowed");
    } else if (errortype == "AlreadyHasInfrared") {
        self iprintln("^1Error: ^7You Already Have Infrared Vision");
    } else if (errortype == "AlreadyHasInfiniteAmmo") {
        self iprintln("^1Error: ^7You Already Have Infinite Ammo");
    }
}