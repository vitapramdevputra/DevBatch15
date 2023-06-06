public class Employee2 {
    string name;
    decimal salary;
    public static decimal minSalary = 5000;

    public Employee2(string name, decimal salary) {
        this.name = name;
        this.salary = salary;
    }

    //non-static
    public boolean isSalaryAboveMin(){
        //we are using static variable inside non-static method.
        boolean check = (salary > minSalary);
        return check;
    }
    
    public static void setMinSalary(decimal amount){
        minSalary = amount;
    }

}