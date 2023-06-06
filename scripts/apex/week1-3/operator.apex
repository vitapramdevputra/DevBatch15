integer a = 15;
integer b = 11;

b += a; 

system.debug(a);//15
system.debug(b);//26

a += b;
//a = a + b
//a = 15 + 26
system.debug(a);//41
system.debug(b);//26

string s = 'Hello';
s += ' everybody';
system.debug(s);

s += a;
system.debug(s);


// boolean b = ((a>b) || (a==b)); //t
// boolean c = (((a>b) || (a==b))  && false  ); //false

// boolean d = !(b && c); //true


integer x = 15;

x -=25;
system.debug(x);

integer y = 10;

x -= y;
//x = x - y
//x = -10 - 10;
system.debug(x);
system.debug(y);


integer i = 5;
i++; // i = i + 1; 
i++; //7
i++; //8
i++; //9

system.debug(i);

i--; //i = i - 1; 9-1;8
i--;//7
i--;//6

i = 0; //will this work?
i--; //-1?