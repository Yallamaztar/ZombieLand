createMenu() {
    if (self.status == "zombies" || self.status == "human") {
        if (!self.menu_init) {
            self.menu_init = 1;
            self thread initMenu();
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
        
        self.toggleables = SpawnStruct();
        
        self.menu.background = self scripts\mp\zombieland\hud::drawshader( "white", 200, 140, 0, 0, ( 0, 0, 0 ), 0, 1, 0 );
	    self.menu.scroller = self scripts\mp\zombieland\hud::drawshader( "white", 200, 160, 250, 18, ( 1, 0, 800 ), 0, 2, 0 );
    
        wait 0.1;
    }
}