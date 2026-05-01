#include maps\mp\gametypes\_hud_util;

overflowfix()
{
	level waittill("connected", player);
	level.stringtable = [];
	level.textelementtable = [];
	textanchor = createserverfontstring("default", 1);
	textanchor setelementtext("Anchor");
	textanchor.alpha = 0;
	
	limit = getLimit();
	if (isdefined(level.stringoptimization)) {
		limit = limit + 172;
	}

	while(!level.gameended) {
		if (!isdefined(textanchor2) && level.stringtable.size >= 100) {
			textanchor2 = createserverfontstring("default", 1);
			textanchor2 setelementtext("Anchor2");
			textanchor2.alpha = 0;
		}

		if (level.stringtable.size >= limit) {
			if (isdefined(textanchor2)) {
				textanchor2 clearalltextafterhudelem();
				textanchor2 destroyelement();
			}

			textanchor clearalltextafterhudelem();

			level.stringtable = [];
			foreach (e in level.textelementtable) {
				if (!(isdefined(self.label))) {
					e setelementtext(e.text);
				} else {
					e setelementvaluetext(e.text);
				}
			}
		}
		wait 0.05;
	}

}

getLimit() {
	switch (getdvar("g_gametype")) {
		case "hctdm":
		case "tdm":
		case "hcdm":
		case "dm":
			return 54;

		case "hcconf":
		case "conf":
			return 53;

		case "oic":
			return 51;

		case "sas":
			return 50;

		case "gun":
		case "shrp":
			return 48;

		case "hchq":
		case "hq":
			return 43;

			case "hcdem":
		case "dem":
		case "hckoth":
		case "koth":
			return 41;

		case "hcdom":
		case "dom":
		case "hcsd":
		case "sd":
			return 38;

		case "hcctf":
		case "ctf":
			return 32;

		case "hconeflag":
		case "oneflag":
			return 25;

		default:
			return 0;
	}
}

setelementtext(text) {
	self settext(text);
	if (self.text != text) {
		self.text = text;
	}

	if (!isinarray(level.stringtable, text)) {
		level.stringtable[level.stringtable.size] = text;
	}

	if (!isinarray(level.textelementtable, self)) {
		level.textelementtable[level.textelementtable.size] = self;
	}
}

setelementvaluetext(text) {
	self.label += text;
	if (self.text != text) {
		self.text = text;
	}

	if (!isinarray(level.stringtable, text)) {
		level.stringtable[level.stringtable.size] = text;
	}

	if (!isinarray(level.textelementtable, self)) {
		level.textelementtable[level.textelementtable.size] = self;
	}

}

destroyelement() {
	if (isinarray(level.textelementtable, self)) {
		arrayremovevalue(level.textelementtable, self);
	}

	if (isdefined(self.elemtype)) {
		self.frame destroy();
		self.bar destroy();
		self.barframe destroy();
	}

	self destroy();

}