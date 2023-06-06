public class ForEachLoopAgain {
    public static void listForEach1() {
        list<integer> l1 = new list<integer>{1,5,6,7,10};
        for (integer i : l1) {
            system.debug(i);
            //i -> 1
            //i -> 5
            //i -> 6
            //i -> 7
            //i -> 10
        }
        
    }

     public static void listForEach2() {
        list<integer> l1 = new list<integer>{1,5,6,7,10};
        //s = 1 + 5 + 6 + 7 + 10
        integer sum = 0;
        string str = '';
        for (integer i : l1) {
            sum += i;
            str += i + ' || ';
        }
        system.debug(sum);
        system.debug(str);
    }

    public static void printCountryForEach() {
        set<string> c = new set<string>{
            'Germany',
            'Phillipines',
            'Nigeria',
            'Mexico',
            'Canada',
            'United Kingdom',
            'United States'
        };

        set<string> c2 = new set<string>();
        
        for (string eachCountry : c) {
            system.debug(eachCountry);
            integer len = eachCountry.length();
            if (len > 8) {
                c2.add(eachCountry);
            }
        }
        
        system.debug('c2 is ' + c2);
        
    }

}