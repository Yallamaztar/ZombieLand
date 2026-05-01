randomPlayer() {
    return level.players[randomint(level.players.size)];
}

cleanName() {
    name = GetSubStr(self.name, 0, self.name.size);

    for (i=0; i<name.size; i++) {
        if (self.name[i] == "]") {
            break;
        }

        wait 0.01;
    }

    if (self.name.size != i) {
        name = GetSubStr(self.name, i + 1, self.name.size);
    }

    return name;
}

setForEveryone(key, value) {
    foreach (player in level.players) {
        player.key = value;
    }
}

isInfected() {
    return level.infected_players[self scripts\mp\zombieland\players::cleanName()] == "infected";
}

isInInfected() {
    return isdefined (level.infected_players[self scripts\mp\zombieland\players::cleanName()]);
}

setInfected(state) {
    if (state) {
        level.infected_players[self scripts\mp\zombieland\players::cleanName()] = "infected";
    } else {
        level.infected_players[self scripts\mp\zombieland\players::cleanName()] = undefined;
    }
}

resetPerks() {
    self.xsped = 0;
    self.fatty = 0;
    self.metallo = 0;
    self.terrorista = 0;
    self.doge = 0;
}

resetStats() {
    self.status = 0;
    self.human_died = 0;
    self.threads_ready = 0;
    self.starting_zombie = 0;
    self.menu_init = 0;
    self.give_cash = 1;
    self.money = 50;
    self.health = 100;
    self.money_multiplier = 1;
}