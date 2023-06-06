public class MapDemoAgain {
    public static void printMap1() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Monica');
        map1.put(1033, 'Lui');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');
        system.debug(map1);
        
        //WE CAN get value from key
        //CANNOT get KEY from VALUE
        integer rollNo = 1011;
        string studentName = map1.get(rollNo);
        system.debug('student name for 1011 is ' + studentName);


        integer rollNo2 = 1055;
        //print student name if rollNo2 is present, else print
        //map1.containsKey(rollNo2) -> true or false. IT does not return the value
        if (map1.containsKey(rollNo2)) {
            system.debug(rollNo2 + ' student name is ' + map1.get(rollNo2));
        } else {
            system.debug('No such roll no is present in our student records');
        }
    }


    public static void printMap2() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Monica');
        map1.put(1033, 'Lui');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');
        system.debug(map1);

        //to get all the keys we use KEYSET method
        set<integer> allRollNo = map1.keySet(); //this will ALWAYS all keys as set<key_datatype>
        system.debug('number of roll numers? ' + allRollNo.size());
        system.debug('all roll no: ' + allRollNo);

        //to get all the VALUES we use values() method
        //list<value_datatype> -> returned from values() method of MAP
        list<string> allStudent = map1.values();//number of elements will be same as keyset()
        system.debug('all students are ' + allStudent);

        //putAll -> any guesses?
        map<integer, string> m2 = new  map<integer, string>();
        m2.putall(map1);
        system.debug('m2 is ' + m2);
    }

    public static void printMap3() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Monica');
        map1.put(1033, 'Lui');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');
        map1.put(1066, 'Alex');
        map1.put(1077, 'Ben');
        system.debug(map1);

        //1. print 
            //roll no is 1011, student name is 'Amar'
            //roll no is 1022, student name is 'Monica'
            //roll no is 1033, student name is 'Lui'
        
        //THERE is NO for each loop for MAP.
            //we have it for LIST
            //we have it for SET
        
        //1. to get all the keys
        set<integer> allKeys = map1.keySet();
        // all student names -> concate with || 
            //Alex || Amar || Monica 
        string finalStrin = '';
        for (integer rollNo : allKeys) {
            string studentName = map1.get(rollNo);//student name
            system.debug('roll no is ' + rollNo + ', student name is ' + studentName);

            finalStrin += studentName + ' || ';
        }
        system.debug('final string ' + finalStrin.removeEnd(' || '));

        // list<string> allNames= map1.values();
        // for (string eachName : allNames) {
        //     finalStrin += eachName + ' || ';
        // }
    }

    public static void printMap4() {
        map<string, list<string>> m9 = new map<string, list<string>>();
        //key is department name. (string)
        //value is all the memebers of that department. (list<string>)

        list<string> itTeam = new list<string>{'Brian', 'Decker'};
        list<string> salesTeam = new list<string>{'John', 'Jane'};
        list<string> serviceTeam = new list<string>{'Monica', 'Alex'};

        m9.put('IT', itTeam);
        m9.put('Sales', salesTeam);
        m9.put('Service', serviceTeam);

        system.debug(m9);
    }
}