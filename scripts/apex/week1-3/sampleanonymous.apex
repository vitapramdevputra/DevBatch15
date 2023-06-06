SampleClass.staticStr = 'Static string';
SampleClass.staticInt = 0;

SampleClass s1 = new SampleClass();
s1.int1 = 10;
s1.str1 = 'A';
s1.details();

SampleClass s2 = new SampleClass();
SampleClass.staticInt++;
s2.int1 = 20;
s2.str1 = 'AB';
s2.details();

SampleClass.staticStr = 'St';
SampleClass.staticInt = 10;
SampleClass.staticDetails();