string id1 = '0013x00002RfRdAAAV';
id id2 = '0013x00002RfRdAAAV';//THIS is saved to ID datatype

string str = id2;//storing ID to String. And it works.
system.debug(str);

Id id3 = id1;
system.debug('id3 is ' + id3);

string sample = 'humans are a species';
integer sLength = sample.length();
system.debug(sLength);
system.debug(sample.length());


boolean s = sample.equals(88);
system.debug(s);

                            //year, month, day, hour, minute, second
Datetime dt1 = Datetime.newInstance(202, 10, 9, 7, 45, 20);
system.debug(dt1);