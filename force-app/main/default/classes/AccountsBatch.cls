public class AccountsBatch implements Database.batchable<sobject>, database.stateful{
    integer countRecords = 0;
    //first method to execute is START
        //SOQL query to fetch ALL RECORDS which we want to Process
    public Database.QueryLocator start(Database.BatchableContext bc){
        system.debug('batch started');
        //soql
        Database.QueryLocator acc = database.getQueryLocator([select id, name, description, active__c from account]);
        return acc;
    }

    public void execute(Database.BatchableContext bc, list<account> listAcc){
        system.debug('execute method started');
        list<account> updateAcc = new list<account>();
        for (account ac : listAcc) {
            if (ac.active__c != 'No') {
                ac.Description += '..Updated via batch';
                updateAcc.add(ac);
                
            }
        }
        update updateAcc;
        countRecords += updateAcc.size();
        system.debug('records updated in THIS chunk: ' + updateAcc.size());
        system.debug('TOTAL records updated TILL NOW: ' + countRecords);
    }

    public void finish(Database.BatchableContext bc){
        system.debug('BATCH PROCESSED. ENJOY.');
        system.debug('TOTAL records processed is ' + countRecords);
        //HOW MANY records we updated in total?

    }

}