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