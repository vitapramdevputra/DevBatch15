 List<account> listAcc = new list<account> {
        new Account(name = 'Rolex', Industry = 'Energy', website = 'account.com'), //1. good guy
        new account(name = 'Timex', Active__c = 'Yes'), //2. good guy
        new Account(name = 'Omega', Active__c = 'Yes'), //3/ good guy
        new account() //4. bad guy
    };
//insert listAcc; //how many accounts will be inserted here?
        //(account or listAcc, allOrNothing)
//Database.insert(listAcc, true) //=> all the records will be inserted (if all are good) or NONE of the record will be inserted (if even 1 is bad).

List<Database.SaveResult> allResults = Database.insert(listAcc, false); //justice => insert good ones, and bad ones will not be inserted.
system.debug('size of saveResult list ==> ' + allResults.size());
//database.insert returns result for each record. Result means, if accout is successfully inserted/updated or it has errors
for (Database.SaveResult result : allResults) {
    //if result isSuccess or not.
    if (result.isSuccess()) {
        system.debug('record inserted successfully. Acc record ID is ' + result.getId());
    } else {
        system.debug('FAILED. FAILURE. BAD GUY. Errors are: ' + result.getErrors());
    }
}

//for insert and update
List<Database.SaveResult> r1 = database.insert(ac, false);
List<Database.SaveResult> r2 = database.update(ac, false);

List<database.deleteresult> r3 = database.delete(ids, false);
List<database.undeleteresult> r4 = database.undelete(ids, false);