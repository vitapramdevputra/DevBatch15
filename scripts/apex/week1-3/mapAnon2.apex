map<string, integer> map1 = new map<string, integer>();
//in map, we PUT key value pair
map1.put('one', 101);
map1.put('two', 202);
map1.put('three', 303);
system.debug(map1);

integer v1 = map1.get('one');//101
integer v2 = map1.get('two');//202

set<string> s1 = map1.keySet();
//{one, two, three}

for(string eachKey: s1){
    system.debug('each key is ' + eachKey);
    //one
    //two
    //three
    integer eachValue = map1.get(eachKey);
    //one   -> 101
    //two   -> 202
    //three -> 303
    system.debug('each value is ' + eachValue);
}
