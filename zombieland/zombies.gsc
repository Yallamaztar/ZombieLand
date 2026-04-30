zombiesuicide() {
	if(self.suicide == 1) {
		if(self.money >= level.moneyperzombiedeath) {
			self.money = self.money - level.moneyperzombiedeath * self.moneymultiplier;
			self.suicide = 0;
			if(self.status == "zombie") {
				self IPrintLn("^5Why'd You Kill Yourself?");
			}
		}
	}
}