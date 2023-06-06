PrimitiveDatatypeDemo2 d1 = new PrimitiveDatatypeDemo2();
d1.printNewDateTime2();
d1.printNewDateTime();
d1.printNewTime();
d1.printNewDate();



 
datetime dt5 = datetime.newInstance(0);
system.debug('dt 5 is ' + dt5); //1970-01-01 midnight

long longTime = 2354878745000l; //milliseconds from 1970 Jan 1 midnight
datetime dt55 = datetime.newInstance(longtime);
system.debug('dt 55 is ' + dt55);