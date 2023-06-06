public class DepartmentTriggerHandler {
    @future
    public static void createDefaultEmployee(set<id> depIds) {
        List<employee__c> listEmp = new List<Employee__c>();
        for (Id eachId : depIds) {
            employee__c e = new employee__c(First_Name__c = 'Richard', Last_Name__c = 'Milles', Department__c = eachId, JoinDate__c = date.today());
            listEmp.add(e);
        }
        insert listEmp;
    }
}