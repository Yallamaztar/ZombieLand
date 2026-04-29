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

finishgame()
{
	level.timehud fadeovertime(0.5);
	level.timehud.alpha = 0;
	level.clockhud fadeovertime(0.5);
	level.clockhud.alpha = 0;
	level thread destroyhuds();
}

destroyhuds()
{
	foreach(player in level.players)
	{
		player.money_hud maps\mp\gametypes\_hud_util::destroyelem();
		player.money_hud scripts\mp\zombieland\overflow::destroyelement();
		player.health_hud maps\mp\gametypes\_hud_util::destroyelem();
		player.health_hud scripts\mp\zombieland\overflow::destroyelement();
		player.health_value maps\mp\gametypes\_hud_util::destroyelem();
		player.health_value scripts\mp\zombieland\overflow::destroyelement();
		player.money_value maps\mp\gametypes\_hud_util::destroyelem();
		player.money_value scripts\mp\zombieland\overflow::destroyelement();
		wait 0.05;
	}
	level.infobar_text maps\mp\gametypes\_hud_util::destroyelem();
	level.infobar_text scripts\mp\zombieland\overflow::destroyelement();

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