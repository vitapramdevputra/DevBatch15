StringMethodsDemo sm1 = new StringMethodsDemo();
sm1.stringMethod2();
sm1.stringMethod1();


//a, A

string s1 = 'salesforce';
//contains method returns boolean
boolean s1contains1 = s1.contains('SALES');
//in apex string is usually case sensitive
//system.debug(s1);
System.debug(s1contains1);

string s2 = s1.toUpperCase();
system.debug(s1);//salesforce
system.debug(s2);//SALESFORCE

string s = 'efe';
string s1 = 'EFE';

system.debug(s.equals(s1));//false
system.debug(s.equalsIgnoreCase(s1));//true





string s22 = 'My name is Bond. James Bond.';
//M-> 0
//y-> 1
// -> 2
//n ->3
integer indexOfBond = s22.indexOf('Bond');
system.debug(indexOfBond);

integer indexOfAlpacino = s22.indexOf('Alpacino');
system.debug(indexOfAlpacino);




string str1 = 'Welcome to Softinnovas bootcamp. Ready to learn?';
string str2 = str1.remove('to');
system.debug(str2);

string str3 = str1.removeEndIgnoreCase('EARN?');
system.debug(str3);



integer i = 55;
integer j = 84;

//5584
string iStr = string.valueOf(i);
string jStr = string.valueOf(j);
system.debug(iStr + jStr);