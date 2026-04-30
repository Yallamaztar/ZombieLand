wait_network_frame() {
    wait 0.1;
}

spawnbots() {
	if(!level.botshavebeenspawned) {
        for (i=0; i < level.amountofbotstospawn; i++) {
			spawnbot();
			wait 0.075;
		}
		level.botshavebeenspawned = 1;
	}
}

spawnbot() {
	maps\mp\bots\_bot::spawn_bot("autoassign");
}