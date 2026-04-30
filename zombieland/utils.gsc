wait_network_frame() {
    wait 0.1;
}

spawnbots() {
	if (!level.botshavebeenspawned) {
        for (i=0; i < level.amountofbotstospawn; i++) {
			spawnbot();
			wait 0.075;
		}
		level.botshavebeenspawned = 1;
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