#include maps\mp\gametypes\_hud;
#include maps\mp\gametypes\_hud_util;
#include maps\mp\gametypes\_hud_message;

infobar() {
    level endon("game_ended");
	level.infobar_background = level drawshader("white", -50, -40, 1000, 25, (0, 0, 0), 0.5, 7, 1);
	level.infobar_background.alignx = "center";
	level.infobar_background.aligny = "top";
	level.infobar_background.horzalign = "center";
	level.infobar_background.vertalign = "top";
	level.infobar_background.sort = 1;

    text = "^6zombie^7land (^6v" + level.__version__ + "^7)    |    open ^6menu^7 with ^6[{+speed_throw}]^7 + ^6[{+melee}]^7    |    ^6select^7 with ^6[{+gostand}]^7    |    go ^6back^7 with ^6[{+actionslot 2}]^7    |    ^6join^7 our discord: " + GetDvar("ui_discord_url");  
	level.infobar_text = level drawtext(text, "default", 1.5, 715, -35, (1, 1, 1), 1, (0, 0, 0), 0, 7, 1);
    while (level.enable_information_bar) {
		level.infobar_text.alignx = "center";
		level.infobar_text.aligny = "top";
		level.infobar_text.horzalign = "center";
		level.infobar_text.vertalign = "top";
		level.infobar_text.sort = 100;

		if(level.infobar_text.x == -1100) {
			level.infobar_text.x = 815;
		} else {
			level.infobar_text moveovertime(16);
			level.infobar_text.x = -1100;
			wait 16;
		}

		wait 0.05;
    }
}

drawshader(shader, x, y, width, height, color, alpha, sort, allclients) {
	if(!IsDefined(allclients)) {
		allclients = 0;
	}
	
	if(!allclients) {
		hud = newclienthudelem(self);
	} else {
		hud = newhudelem();
	}

	hud.elemtype = "icon";
	hud.color = color;
	hud.alpha = alpha;
	hud.sort = sort;
	hud.children = [];
	hud setparent(level.uiparent);
	hud setshader(shader, width, height);
	hud.x = x;
	hud.y = y;
	return hud;

}

drawtext(text, font, fontscale, x, y, color, alpha, glowcolor, glowalpha, sort, allclients) {
	if(!IsDefined(allclients)) {
		allclients = 0;
	}
	
	if(!allclients) {
		hud = self createfontstring(font, fontscale);
	} else {
		hud = level createserverfontstring(font, fontscale);
	}
	
	hud scripts\mp\zombieland\overflow::setelementtext(text);
	hud.x = x;
	hud.y = y;
	hud.color = color;
	hud.alpha = alpha;
	hud.glowcolor = glowcolor;
	hud.glowalpha = glowalpha;
	hud.sort = sort;
	hud.alpha = alpha;
	return hud;
}

destroyhuds() {
	foreach(player in level.players) {
		player.money_hud maps\mp\gametypes\_hud_util::destroyelem();
		player.money_hud scripts\mp\zombieland\overflow::destroyelement();
		player.health_hud maps\mp\gametypes\_hud_util::destroyelem();
		player.health_hud scripts\mp\zombieland\overflow::destroyelement();
		player.health_value maps\mp\gametypes\_hud_util::destroyelem();
		player.health_value scripts\mp\zombieland\overflow::destroyelement();
		player.money_value maps\mp\gametypes\_hud_util::destroyelem();
		player.money_value scripts\mp\zombieland\overflow::destroyelement();
	}

	level.infobar_text maps\mp\gametypes\_hud_util::destroyelem();
	level.infobar_text scripts\mp\zombieland\overflow::destroyelement();
}