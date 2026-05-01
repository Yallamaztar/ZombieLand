zombiesuicide() {
	if (self.suicide == 1) {
		if (self.money >= level.money_per_zombie_death) {
			self.money = self.money - level.money_per_zombie_death * self.money_multiplier;
			self.suicide = 0;
			if (self.status == "zombie") {
				self IPrintLn("^5Why'd You Kill Yourself?");
			}
		}
	}
}

zombiecountdown() {
	level endon("game_ended");
	level endon("winner_declared");
	level endon("zombiefication_done");

	for (;;) {
		if (!level.timer_spawned) {
			level.time_hud = self scripts\mp\zombieland\hud::drawtext("Time Remaining: ", "default", 2, 0, -10, (1, 1, 1), 0, (0, 0, 1), 0.5, 3, 1);
			level.time_hud.alignx = "center";
			level.time_hud.aligny = "top";
			level.time_hud.horzalign = "center";
			level.time_hud.vertalign = "top";
			level.time_hud fadeovertime(0.5);
			level.time_hud.alpha = 1;
			level.clock_hud = self scripts\mp\zombieland\hud::drawtext("", "default", 2, 75, -30, (1, 1, 1), 0, (0, 0, 1), 0.5, 3, 1);
			level.clock_hud.alignx = "center";
			level.clock_hud.aligny = "top";
			level.clock_hud.horzalign = "center";
			level.clock_hud.vertalign = "top";
			level.clock_hud settimer(level.gametime);
			level.clock_hud fadeovertime(0.5);
			level.clock_hud.alpha = 1;
			level.timer_spawned = 1;
		}

		if (!level.inprematchperiod) {
			iprintlnbold("^1Zombiefication In " + (level.zombiefication_time + " Seconds"));
			wait 5;
			level.zombiefication_time = level.zombiefication_time - 5;
		}

		if (level.zombiefication_time == 0) {
			level thread scripts\mp\zombieland\players::randomPlayer();
			iprintlnbold("^1Zombies Have Been Released...");
			level notify("zombiefication_done");
		}

		wait 0.05;
	}
}