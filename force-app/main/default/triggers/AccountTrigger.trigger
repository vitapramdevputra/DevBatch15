trigger AccountTrigger on Account (before insert,after insert, before update,  after update, before delete, after delete, after undelete) {

    system.debug('---');

    if(Trigger.isBefore ){
        if (Trigger.isInsert || Trigger.isUpdate) {
            AccountTriggerHandler.updateAccDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
        if(Trigger.isDelete){
            //call method to validate delete operation
            AccountTriggerHandler.validateDelete(Trigger.Old);
        }
        
    }
    
    if(Trigger.isAfter && Trigger.isUpdate){
        //account after VIP field is update --> update all it's contacts VIP field
        AccountTriggerHandler.updateVIPContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if(Trigger.isAfter && Trigger.isUndelete){
        AccountTriggerHandler.sendRestorationEmail(trigger.new);
    }

    //Execution
        //1. system validation
        //2. before trigger (record is not saved yet. ID is not generated.)
            //change field values HERE (it is allowed because record is NOT saved yet).
        //3. custom validation
        //4. SAVE (ID is generated. Not available for use. Not Committed)
        //5. after trigger (record is saved. ID is generated. Trigger.new is READ ONLY now)















    // //execute code only if trigger is in AFTER UPDATE operation
    // if (Trigger.isAfter && Trigger.isUpdate) {
        
    //     //set<id> -> keyset.
    //     for (Id eachId : trigger.newMap.keyset()) {
            
    //         //how to check if the particular field is changed?
    //         Account oldAcc = trigger.oldMap.get(eachId);
    //         Account newAcc = trigger.newMap.get(eachId);

    //         //if old and new field is different then it is changed.
    //         if (oldAcc.Website != newAcc.Website) {
    //             system.debug('for account : ' + newAcc.Name + ', updated website is ' + newAcc.Website);
    //         }
    //     }
    // }

    // if (Trigger.isAfter && Trigger.isUpdate) {
    //     //old name and new name in one line
    //     //Map<id, account> newAccountsMap = trigger.newMap;
    //     for (Id eachId : trigger.newMap.keyset()) {
            
    //         system.debug('acc id : ' + eachId);

    //         //how to get new Name and Old Name using account id?
    //             //answer: use NewMap, and OldMap
    //         Account oldAccount = trigger.oldMap.get(eachId);
    //         Account newAccount = trigger.newMap.get(eachId);

    //         system.debug('old acc name: ' + oldAccount.name + ', new acc name: ' + newAccount.Name);
    //         system.debug('old acc rating: ' + oldAccount.rating + ', new acc rating: ' + newAccount.rating);
    //     }
    // }


    // if (Trigger.isBefore && Trigger.isInsert) {
    //     system.debug('before insert, trigger.old : ' + trigger.old); 
    //     system.debug('before insert, trigger.new : ' + trigger.new); 
    //     system.debug('before insert, trigger.oldMap : ' + trigger.oldMap); 
    //     system.debug('before insert, trigger.newMap : ' + trigger.newMap); 
    // }
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     system.debug('after insert, trigger.old : ' + trigger.old); 
    //     system.debug('after insert, trigger.new : ' + trigger.new); 
    //     system.debug('after insert trigger.oldMap : ' + trigger.oldMap); 
    //     system.debug('after insert, trigger.newMap : ' + trigger.newMap); 
    // }

    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     system.debug('before update, trigger.old : ' + trigger.old); 
    //     system.debug('before update, trigger.new : ' + trigger.new); 
    //     system.debug('before update trigger.oldMap : ' + trigger.oldMap); 
    //     system.debug('before update, trigger.newMap : ' + trigger.newMap); 
    // }
    // if (Trigger.isAfter && Trigger.isUpdate) {
    //     system.debug('after update, trigger.old : ' + trigger.old); 
    //     system.debug('after update, trigger.new : ' + trigger.new); 
    //     system.debug('after update trigger.oldMap : ' + trigger.oldMap);
    //     system.debug('after update, trigger.newMap : ' + trigger.newMap);  
    // }
    // system.debug('----');


    // if (Trigger.isAfter && Trigger.isUpdate) {
    //     system.debug('after update trigger.old : ' + trigger.old);
    //     //List<account> oldAccounts = trigger.old;
    //     for (Account oldAcc : trigger.old) {
    //         system.debug('old acc id is ' + oldAcc.Id  + ', old acc name is ' + oldAcc.Name);
    //     }
    //     system.debug('--');
    //     system.debug('after update, trigger.new : ' + trigger.new); 
    //     for (Account newAcc : trigger.new) {
    //         system.debug('new acc id is ' + newAcc.Id  + ', new acc name is ' + newAcc.Name);
    //     }

    // }

    // if (Trigger.isBefore && Trigger.isInsert) {
    //     system.debug('before insert, trigger.old : ' + trigger.old); 
    //     system.debug('before insert, trigger.new : ' + trigger.new); 
    // }
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     system.debug('after insert trigger.old : ' + trigger.old); 
    //     system.debug('after insert, trigger.new : ' + trigger.new); 
    // }

    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     system.debug('before update trigger.old : ' + trigger.old); 
    //     system.debug('before update, trigger.new : ' + trigger.new); 
    // }
    // if (Trigger.isAfter && Trigger.isUpdate) {
    //     system.debug('after update trigger.old : ' + trigger.old);
    //     system.debug('after update, trigger.new : ' + trigger.new);  
    // }














    //if we are creating 1 record, we will get 1 record in trigger.new
        //the number of records we are processing in ONE execution, we will get that many number of records in trigger.new
    
    // //trigger.new  is LIST
    // List<account> newAccounts = trigger.new;
    // if (Trigger.isBefore && Trigger.isInsert) {
    //     system.debug('trigger.new before insert : ' + trigger.new);
    //     system.debug('before insert number of records: ' + trigger.new.size());

    //     for (account eachAcc : trigger.new) {
    //         system.debug('before acc id ' + eachAcc.Id);
    //         system.debug('before acc name ' + eachAcc.Name);
    //     }

    // }
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     system.debug('trigger.new after insert : ' + trigger.new);
    //     system.debug('after insert number of records: ' + newAccounts.size());

    //     for (account eachAcc : newAccounts) {
    //         system.debug('after acc id ' + eachAcc.Id);
    //         system.debug('after acc name ' + eachAcc.Name);
    //     }

    // }

    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     //in before update record is not saved
    //     system.debug('trigger.new before update : ' + trigger.new);
    //     system.debug('before update number of records: ' + trigger.new.size());


    // }
    // if (Trigger.isAfter && Trigger.isUpdate) {
    //      //in after update record is saved
    //     system.debug('trigger.new after update : ' + trigger.new);
    //     system.debug('after update number of records: ' + newAccounts.size());
    // }

    

















    // //before insert.  INSERT = CREATE = New Record 
    //     //Two context variables. isInsert && isBefore
    // if(trigger.isInsert && trigger.isBefore){
    //     system.debug('before insert trigger called');
    // }
    //  //after insert. 
    //     //Two context variables. isInsert && isAfter
    // if(trigger.isinsert && trigger.isAfter){
    //      system.debug('after insert trigger called');
    // }

    // //before Update.  Update = Edit = Change Record = 
    //     //Two context variables. isUpdate && isBefore
    // if(trigger.isUpdate && trigger.isBefore){
    //     system.debug('before Update trigger called');
    // }
    //  //after Update. 
    //     //Two context variables. isUpdate && isAfter
    // if(trigger.isUpdate && trigger.isAfter){
    //      system.debug('after Update trigger called');
    // }







    // //.isInsert -> true, while inserting record. ()
    // if(trigger.isInsert){
    //     system.debug('insert account trigger');
    // } 
    // //.isUpdate -> true, while updating record. 
    // if(trigger.isUpdate){
    //     system.debug('update account trigger');
    // }

    // //isBefore will be true when trigger is running in BEFORE save context
    // if(trigger.isBefore){
    //      system.debug('before insert account trigger');
    // } 
    // //isAfter will be true when trigger is running in AFTER save context
    // if(trigger.isAfter){
    //     system.debug('after insert account trigger');
    // }
    
}