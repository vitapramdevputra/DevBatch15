Calculator calc = new Calculator();
date bdt = date.newInstance(1990, 10, 9);
boolean bdleapCheck = calc.leapYearCheck(bdt);
system.debug('born on leap year? ' + bdleapCheck);

date dt = date.today();
boolean leapCheck = calc.leapYearCheck(dt);
system.debug(leapCheck);

//calc.add(10,15);//add(integer a, integer b) --> it will automatically recognize from datatype

//calc.add(10.10,15.15);//add(decimal a, decimal b)

integer x = calc.add(10,15,55);
system.debug('x is ' + x);


