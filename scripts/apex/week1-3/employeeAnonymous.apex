Employee newEmp = new Employee();
//newEmp.name = 'WW';//it is private
newEmp.setName('Walter White');
newEmp.setSalary(15000);

string newEmpName = newEmp.getName();
decimal newEmpSalary = newEmp.getSalary();
system.debug(newEmpName + ' salary is ' + newEmpSalary);

Employee newEmp2 = new Employee();
newEmp2.setName('Jesse Pink');
newEmp2.setSalary(75000);
string newEmp2name = newEmp2.getName();
decimal newEmp2salary = newEmp2.getSalary();
system.debug(newEmp2name + ' salary is ' + newEmp2salary);
