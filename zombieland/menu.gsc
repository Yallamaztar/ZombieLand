createMenu() {
    if (self.status == "zombies" || self.status == "human") {
        if (!self.menu_init) {
            self.menu_init = 1;
            self thread initMenu();
            self thread menuCloseOnDeath();
        }
    }
}

initMenu() {
    self endon("disconnect");
    self endon("destroy_menu");
    self endon("game_ended");

    for(;;) {
        self.menu = SpawnStruct();
        self.menu.open = 0;
        self.menu.background = self scripts\mp\zombieland\hud::drawshader( "white", 200, 140, 0, 0, ( 0, 0, 0 ), 0, 1, 0 );
	    self.menu.scroller = self scripts\mp\zombieland\hud::drawshader( "white", 200, 160, 250, 18, ( 1, 0, 800 ), 0, 2, 0 );
        
        self.toggleables = SpawnStruct();
        wait 0.1;
    }
}

menuCloseOnDeath() {
    level endon("game_ended");
    self endon("disconnect");
    self endon("destroy_menu");

    for(;;) {
        self waittill("death");
        self.menu.closeondeath = 1;

        if(self.status == "human") {
            self submenu("Main Menu (Human)", "Main Menu (Human)");
        } else if (self.status == "zombie") {
            self submenu("Main Menu (Zombie)", "Main Menu (Zombie)");
        }


        closemenu();
    }
}

closemenu()
{
	self.menu.options fadeovertime( 0.1 );
	self.menu.options.alpha = 0;
	self.menu.background scaleovertime( 0.25, 0, 0 );
	self.menu.background fadeovertime( 0.25 );
	self.menu.background.alpha = 0;
	self.menu.title fadeovertime( 0.25 );
	self.menu.title.alpha = 0;
	self.menu.scroller scaleovertime( 0.1, 0, 0 );
	self.menu.scroller fadeovertime( 0.1 );
	self.menu.scroller.alpha = 0;
	self.menu.open = 0;

}


submenu( input, title )
{
	self.menu.options destroyelement();
	if( !(IsDefined( title )) )
	{
		title = self.menu.subtitle[ input];
	}
	if( input == "Main Menu Human" )
	{
		self thread storetext( input, "Shop (ZombieLand ^12.1^7)" );
	}
	else
	{
		if( input == "Main Menu Zombie" )
		{
			self thread storetext( input, "Shop (ZombieLand ^12.1^7)" );
		}
		else
		{
			if( input == "PlayersMenu" )
			{
				self updateplayersmenu();
				self thread storetext( input, "Players" );
			}
			else
			{
				self thread storetext( input, title );
			}
		}
	}
	self.curmenu = input;
	self.menu.scrollerpos[self.curmenu] = self.menu.curs[ self.curmenu];
	self.menu.curs[input] = self.menu.scrollerpos[ input];
	if( !(self.menu.closeondeath) )
	{
		self updatescrollbar();
	}

}

add_menu_alt( menu, prevmenu )
{
	self.menu.getmenu[menu] = menu;
	self.menu.menucount[menu] = 0;
	self.menu.previousmenu[menu] = prevmenu;

}

add_menu( menu, prevmenu, menutitle, status )
{
	self.menu.status[menu] = status;
	self.menu.getmenu[menu] = menu;
	self.menu.scrollerpos[menu] = 0;
	self.menu.curs[menu] = 0;
	self.menu.menucount[menu] = 0;
	self.menu.subtitle[menu] = menutitle;
	self.menu.previousmenu[menu] = prevmenu;

}

add_option( menu, text, func, arg1, arg2 )
{
	menu = self.menu.getmenu[ menu];
	num = self.menu.menucount[ menu];
	self.menu.menuopt[menu][num] = text;
	self.menu.menufunc[menu][num] = func;
	self.menu.menuinput[menu][num] = arg1;
	self.menu.menuinput1[menu][num] = arg2;
	self.menu.menucount[menu] += 1;

}