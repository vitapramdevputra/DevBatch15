RankHandler rh = new RankHandler();
string p1 = rh.rankPrize(1);
system.debug(p1);
string p3 = rh.rankPrize(3);
system.debug(p3);
string p4  = rh.rankPrize(5);
system.debug(p4);
string p15 = rh.rankPrize(15);
system.debug(p15);


RankHandler rh2 = new RankHandler();
string ps1 = rh2.rankPrizeSwitch(1);
system.debug(ps1);
string ps3 = rh2.rankPrizeSwitch(3);
system.debug(ps3);
string ps4  = rh2.rankPrizeSwitch(5);
system.debug(ps4);
string ps15 = rh2.rankPrizeSwitch(15);
system.debug(ps15);