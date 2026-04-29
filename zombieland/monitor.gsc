#include scripts\mp\zombieland\utils;

monitorGame() {
    level endon("game_ended");
    level endon("winner_declared");

    for(;;) {
        if (level.inprematchperiod) {
            wait 0.01;
            continue;
        }

        if (level.currentgametime == level.time_to_pause) {
            maps\mp\gametypes\_globallogic_utils::pausetimer();
        }

        level.zombie_count = 0;
        level.human_count = 0;

        foreach(player in level.players) {
            if (player.status == "zombie") {
                level.zombie_count += 1;
            } else if (player.status == "human") {
                level.human_count += 1;
            }

            if (level.zombiefication_in_progress) {
                level.zombie_count = 69420;
            }
        }

        if (!level.zombiefication_in_progress && level.zombiefication_time == 0) {
            level.zombiefication_in_progress = 1;
            zombie = scripts\mp\zombieland\players::randomPlayer();
            zombie Suicide();
            zombie.status = "zombie";
            level.zombie_count += 1;
        }

        if (level.human_count == 0 && level.zombie_count == level.players.size) {
            level thread finishgame();
            level thread endgame("axis", "Zombies Win");
            
            level notify("winner_declared");
            level notify("game_ended");
        }

        if (level.current_game_time == level.game_time) {
            level thread finishgame();
            level thread endgame("allies", "Humans Win");

            level notify("winner_declared");
            level notify("game_ended");
        }

        wait 0.01;
    }
}

endgame() {
    for (i = 5; i > 0; i--) {
        iPrintln("Game ending in " + i);
        wait 1;
    }
    
    level thread maps\mp\gametypes\_globallogic::forceend();
}

finishgame() {
	level.timehud fadeovertime(0.5);
	level.timehud.alpha = 0;
	level.clockhud fadeovertime(0.5);
	level.clockhud.alpha = 0;
	level thread scripts\mp\zombieland\hud::destroyhuds();
}

monitorTimer() {
    level endon("game_ended");
    level endon("winner_declared");

    for(;;) {
        wait 1;
        if (level.timer_spawned && !level.inprematchperiod) {
            if (level.current_game_time != level.game_time) {
                level.current_game_time++;
            } else {
                level notify("timelimit_reached");
            }
        }
    }
}

monitorTeam() {
    self endon("disconnect");

    for(;;) {
        if (IsAlive(self) && self.pers["team"] != "axis" && self.starting_zombie) {
            self [[level.axis]]();
            self.status = "zombie";

            wait_network_frame();
            self notify( "menuresponse", "changeclass", "class_smg" );
            self.starting_zombie = 0;
        }

        if (self.status == "human" && self.pers["team"] == "axis") {
            self [[level.allies]]();
            self.status = "human";

            wait_network_frame();
            self notify("menuresponse", "changeclass", "class_smg");
        }

        if(self.status == "zombie" && self.pers["team"] == "allies") {
		    self [[level.axis]]();
            self.status = "zombie";

            wait_network_frame();
            self notify("menuresponse", "changeclass", "class_smg");
        }

        if (self.status == "human" && self.pers["team"] == "axis") {
            if (level.zombiefication_time <= 0 || level.inprematchperiod) {
                return;
            }

            self [[level.allies]]();
            self.status = "human";
            wait 1;

            if (self.status == "zombie" || level.zombiefication_time <= 0 || self.pers["team"] != "axis") {
		        return;
            }

            self [[level.allies]]();
            self.status = "human";
            wait 0.5;

            self notify("menuresponse", "changeclass", "class_smg");

            if (self.pers["team"] == "axis") {
                self [[level.axis]]();
                self.status = "zombie";

                wait_network_frame();
                self notify("menuresponse", "changeclass", "class_smg");
            }
        }
    }
}