teletome(player) {
	if(!player ishost()) {
		self iprintln(player.name + " Teleported to you");
		player setorigin(self.origin );
	}

}

teletohim(player) {
	if(!player ishost()) {
		self iprintlnbold("Teleported to " + player.name);
		self setorigin(player.origin + (-10, 0, 0));
	}
}