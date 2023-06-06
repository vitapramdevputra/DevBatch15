MapDemo.mapStringInteger();


//map of string, string
map<string, string> mapCC = new map<string, string>();
mapCC.put('USA', 'Dollar');
mapCC.put('France', 'Euro');
mapCC.put('Portugal', 'Euro');
mapCC.put('India', 'Rupees');//we added this first
mapCC.put('India', 'Rupee');//then we added same key, another value, it will update the value it KEY exists
mapCC.put('Turkiye', 'Lira');
mapCC.put('El Salvador', 'Bitcoin');
mapCC.put('usa','usd');
mapCC.put('El Salvador', 'BTC');//updates value
system.debug(mapCC);

//get value from map using KEY. method is .get(key)
string currUSA = mapCC.get('USA');
string currIndia = mapCC.get('India');

system.debug(currIndia);

string country = 'Turkiye';
string curr = mapcc.get(country);
system.debug(country + ' curency is ' + curr);

//get all the countries from map
set<string> allCountry = mapCC.keySet();
system.debug('all countries ' + allCountry);

//get all the currencies from map

list<string> allCurrencies = mapCC.values();//it returns all value from the map in list
system.debug('all currencies => ' + allCurrencies);


set<string> allCountries = mapCC.keySet();



for (string eachCountry : allCountries) {
    //get value from MAP.
    string eachCurrency = mapcc.get(eachCountry);//get(key)-> gets value from map
    system.debug('Country is ' + eachCountry + ', Currency is ' +  mapcc.get(eachCountry));
    system.debug('-----')
}





