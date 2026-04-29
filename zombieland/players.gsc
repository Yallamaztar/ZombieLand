randomPlayer() {
    return level.players[randomint(level.players.size)];
}

cleanName() {
    name = GetSubStr(self.name, 0, self.name.size);

    for (i=0; i<name.size; i++) {
        if (self.name[i] == "]") {
            break;
        }
    }

    if (self.name.size != i) {
        name = GetSubStr(self.name, i + 1, self.name.size);
    }

    return name;
}

setForEveryone(key, value) {
    foreach(player in level.players) {
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