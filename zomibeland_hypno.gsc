/*
 * Zombieland (Modernized)
 * Custom zombies-style gamemode for T6MP
 * Version: 0.1.0
 */

main() {
    level.__version__  = "0.1.0";
    
    SetGametypeSetting("prematchperiod", 5);    
    SetGametypeSetting("preroundperiod", 5);

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

        player scripts\mp\zombieland\menu::createMenu();
        wait 0.01;
    }
}