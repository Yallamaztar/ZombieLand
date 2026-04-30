#include scripts\mp\zombieland\utils;
#include scripts\mp\zombieland\players;

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
            zombie = randomPlayer();
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

teamMonitor() {
    self endon("disconnect");

    for(;;) {
        if (IsAlive(self) && self.pers["team"] != "axis" && self.starting_zombie) {
            self [[level.axis]]();
            self.status = "zombie";

            wait_network_frame();
            self notify("menuresponse", "changeclass", "class_smg");
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

        wait 0.05;
    }
}

customTeamMonitor() {
	self endon("disconnect");
	for(;;) {
        self waittill("joined_team");
        
        wait 0.1;
        if(self.pers["team"] == "axis" && self.status == "human") {
            self [[level.allies]]();
            self.status = "human";
            wait 0.1;
            self notify("menuresponse", "changeclass", "class_smg");
        }

        if(self.pers["team"] == "allies" && self.status == "zombie") {
            self [[level.axis]]();
            self.status = "zombie";
            wait 0.1;
            self notify("menuresponse", "changeclass", "class_smg");
            self thread maps\mp\gametypes\_globallogic_ui::closemenus();
        }
        
        wait 0.05;
    }
}


hudMonitor() {
    level endon("game_ended");
    level endon("winner_declared");
    self endon("disconnect");

    self scripts\mp\zombieland\hud::storehuds();
    self.current_kills = self.pers["kills"];
    self.current_deaths = self.pers["deaths"];
    self.current_assists = self.pers["assists"];

    for(;;) {
        if (self.give_cash) {
            if (self.human_died) {
                if (self.status == "human") {
                    self.money += level.survivor_cash_bonus;
                    self IPrintLn("You have been given ^6$" + level.survivor_cash_bonus + "^7 for surviving!");
                }

                self.human_died = 0;
                wait_network_frame();
            }

            if (self.current_kills != self.pers["kills"]) {
                if (self.status == "human") {
                    self.money += level.money_per_kill * self.money_multiplier;
                    self.current_kills = self.pers["kills"];
                } else if (self.status == "zombie") {
                    self.money += self.money + level.money_per_kill_zombie * self.money_multiplier;
                    self.current_kills = self.pers["kills"];
                }
            }

            if (self.current_assists != self.pers["assists"]) {
                if (self.status == "human") {
                    self.money += level.money_per_assist * self.money_multiplier;
                    self.current_assists = self.pers["assists"];
                } else if (self.status == "zombie") {
                    self.money += self.money + level.money_per_assist_zombie * self.money_multiplier;
                    self.current_assists = self.pers["assists"];
                }
            }

            if (self.status == "zombie" && self.current_deaths != self.pers["deaths"]) {
                self.money += self.money + level.money_per_death_zombie * self.money_multiplier;
                self.current_deaths = self.pers["deaths"];
                self thread resetPerks();
                self Show();
                self notify("stop_linking_model");
                self.link_model Delete();
            }
        } else {
            self.current_kills = self.pers["kills"];
            self.current_deaths = self.pers["deaths"];
            self.current_assists = self.pers["assists"];
            wait_network_frame();
        }

        self.health_value SetValue(self.health);
        self.money_value SetValue(self.money);
        wait 0.05;
    }
}

healthMonitor() {
    level endon("game_ended");
	self endon("disconnect");
	self endon("infected");
	self endon("normal_health");
	
	self.health_monitor = 1;
	for(;;) {
        if (!self.adding_health) {
            if (self.health > 100) {
                self.max_health = self.health;
            }
        }

        if (self.health < 100) {
            self.max_health = 100;
            self.health_monitor = 0;
            self notify("normal_health");
        }

        wait 0.01;
    }
}

weaponMonitor() {
    level endon("game_ended");
	level endon("winner_declared");
	self endon("disconnect");
	
	for(;;) {
        if (level.zombiefication_time != 0 && level.inprematchperiod && isalive(self) && self.status == "human") {
            self.current_weapon = self getcurrentweapon();
            if (self.current_weapon != level.player_spawn_weapon) {
                self.status = "human";
                self scripts\mp\zombieland\utils::giveWeapons(self.status);
                wait 1;
            }
        }
        wait 0.05;
	}
}