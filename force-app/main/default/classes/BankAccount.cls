public class BankAccount {
    //data members
        //OR
    //class variables or global variable
    public string accountNumber;
    private decimal balance;
    string accountHolderName;
    string bankName;

    //rules of constructor
    //constructor.
    public BankAccount(){
        //constructor is automatically called when we create new instance. --> new BankAccount() -> this will invoke constructor. 
        system.debug('constructor called.');
        balance = 0; //assign some default value to data member
        printBalance();
    }
    //create parameterzied constructor and assign class variables.
    public BankAccount(string accNumber, decimal balance, string accHolderName, string bName){
        //assign class variables value
        accountNumber = accNumber;
        //this.balace means class variables
        this.balance = balance;
        accountHolderName = accHolderName;
        bankName = bName;
    }   

    public void setBalance(decimal bal){
        balance = bal;
    }

    public void deposit(decimal amount){
        balance = balance + amount;
        system.debug('print after deposit');
        printBalance();
    }

    public void withdraw(decimal amount){
        balance = balance - amount;
        system.debug('print after withdraw');
        printBalance();
    }
    
    public void printDetails(){
        //we can create variables here, which we CAN use ONLY inside this method
            //local variable
        datetime printTime = datetime.now();
        
        system.debug('-----');
        system.debug('print datetime is ' + printTime);
        system.debug('-----');

        system.debug('acc number: ' + accountNumber);
        system.debug('acc balance: ' + balance);
        system.debug(' accountHolderName: ' + accountHolderName);
        system.debug('acc bankName: ' + bankName);
    }

    @testvisible
    private void printBalance(){
        system.debug('balance is ' + balance);
    }
}