public class DepartmentsBatch implements Database.batchable<sObject> {
    //start
    public Database.QueryLocator start(Database.BatchableContext bc){
        system.debug('inside start method');
        return Database.getQueryLocator([select id, number_of_employees__c, (select id from employees__r) from Department__c]);
    }

    public void execute(Database.BatchableContext bc, list<department__c> scopeDep){
        system.debug('inside execute method');
        for (Department__c eachDep : scopeDep) {
            //how to get count of employees?
            if (eachDep.Employees__r != null) {
                 eachDep.number_of_employees__c  = eachDep.Employees__r.size();
            }
        }
        update scopeDep;
    }

    public void finish(Database.BatchableContext bc){
        system.debug('finished.');
    }
}