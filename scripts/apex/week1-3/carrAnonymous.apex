//invoke = execute = run = fire = called
//this will not work
    //when we have parameterized constructors.
    //and we DO NOT have parameterless constructor.
caRRR bmw = new CArrr(); //new object OR instance of a class.
bmw.details();
// system.debug('--------');
// carrr ford = new carrr();
// ford.details();



caRRR bmw1 = new CArrr('BMW X3');
system.debug(bmw1);
bmw.details();

carrr ford = new carrr();
ford.details();


caRRR bmw2 = new CArrr('BMW X3', 'ABC10001', 'Black', 2020, 450000 );
//access class variable outside of the class.
//dot operator
//we cannot access private variable outside of class.
    // string carName2 = bmw2.name;
    // string carnumber2 = bmw2.carNumber;

carrr ford2 = new carrr('Ford mustang', 'abc1002', 'Red',2023, 550000.50);//will this work?
string ford2Name = ford2.name;
string ford2color = ford2.color;
system.debug('ford 2 name and color are ' + ford2Name + ', ' + ford2color);
system.debug('------------');
//can we update the value of variable?
ford2.name = 'Ford Focus';
ford2.color = 'Silver';
ford2.details();

