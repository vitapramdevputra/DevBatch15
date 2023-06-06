global class Carrr {
    //variables created directly inside class 
    //body are called Class Variables

    //IF we DO NOT specify access modifier, it is PRIVATE by default
    private string carNumber;
    public string name;
    public integer mfgYear;
    public string color;
    decimal price;
   
    //class variables are accessible in all methods of the class.
    public void details(){
        system.debug('car number is ' + carNumber);
        system.debug('car name is ' + name);
        system.debug('manufacturing year ' + mfgYear);
        system.debug('color of carrr is ' + color);
        system.debug('price is ' + price);
        printCarAge();
    }

    //constructor is same as class name
    //constructor does not return anything
    //contructor which has NO parameters are called parameterLESS consturctor.
    public carrr(){
        //consturctor code is called automatially when new instance is created

        //constructors are used a lot to assign class variables values by default.
        //constructors are also used to do some operation as soon as object is created.
        
        mfgYear = 2023;
        system.debug('new car is created, consturctor called automatically');
    }

    //access modifier is optional.
    //by default --> private.
    void printCarAge(){
        integer currentYear = date.today().year();
        system.debug('car age is ' + (currentYear - mfgYear));
    }
    
    public carrr(string nm){
        //nm is parameter
        //name is class variable
        name = nm;
        mfgYear = 2023;
    }
    public carrr(string nm, string carnum, string clr, integer yr, decimal pc){
        
        carNumber = carnum;
        color = clr;
        mfgYear = yr;
        price = pc;
        name = nm;
        //automatically do some operation
        details();
    }
}