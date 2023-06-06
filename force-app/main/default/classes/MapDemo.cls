public class MapDemo {
    public static void mapStringInteger() {
        //string -> key
        //value  -> integer
        //Map<key DT, value DT>
        map<string, integer> map1 = new map<string, integer>();
        //in map, we PUT key value pair
        map1.put('one', 101);
        map1.put('two', 202);
        map1.put('three', 303);
        map1.put('one',1001);
        system.debug(map1);

    }
}


        List<integer> l = map1.values(); //is it clear?



        Map<string, string> map2;
        map<string, integer> map3;
        map<integer, string> map4;

        map<string, decimal> map5;
        set<string> s5 = map5.keySet();
        list<decimal> l5 = map5.values();

        map<boolean, string> map6; //how many max values possible?
        map<date, string> map7;

        map<string, list<string>> map8; //?????
    }
}