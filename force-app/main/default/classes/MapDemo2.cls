public  class MapDemo2 {
    public static void mapItemPrices() {
        //items -> price
        map<string, decimal> map2 = new map<string, decimal>();
        map2.put('apple', 5.5);
        map2.put('pen', 10.5);
        map2.put('pencil', 11.5);
        map2.put('mango', 25.50);
        map2.put('milk', 2.5);
        map2.put('chai', 12.99);
        map2.put('sugar',5.99);
        system.debug('map2 is ' + map2);

        //prepare two maps.
        //1. all items and its prices whose values are less than 10
        //2. all items and its prices whose values are more than 10
        map<string, decimal> lowerMap = new map<string, decimal>();
        map<string, decimal> higherMap = new map<string, decimal>();

        set<string> allItems = map2.keySet();
        for (string eachItem : allItems) {
            //get value of each Item
            decimal eachPrice = map2.get(eachItem);
            if (eachPrice > 10) {
                higherMap.put(eachItem, eachPrice);
                system.debug('HIGHER: ' + eachItem + ' --> ' + eachPrice);
            } else {
                lowerMap.put(eachItem, eachPrice);
                system.debug('LOWER: ' + eachItem + ' --> ' + eachPrice);
            }
        }

        system.debug('higher map is ' + higherMap);
        system.debug('lower map is ' + lowerMap);
    }

    public static string retrieveMonth(integer m) {
        string month = '';

        map<integer, string> monthMap = new map<integer, string>{1 => 'January', 2 => 'February'};
        monthMap.put(3, 'March');

        monthMap.put(4, 'April');
        monthMap.put(5, 'May');
        monthMap.put(6, 'June');

        monthMap.put(7, 'July');
        monthMap.put(8, 'August');
        monthMap.put(9, 'September');

        monthMap.put(10, 'October');
        monthMap.put(11, 'November');
        monthMap.put(12, 'December');

        //get month name from integer m(parameter)

        boolean keyExist  = monthMap.containsKey(m);//true
        if (keyExist) {
            month = monthMap.get(m);
        } else {
            month = 'No such month exists. Please behave buddy';
        }
        
        return month;
    }
}