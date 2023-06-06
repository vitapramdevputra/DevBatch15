trigger EmployeeTrigger on Employee__c (before insert, after insert, before update, after update) {

    if(Trigger.isBefore){
        //call handler HERE.
        EmployeeTriggerHandler.updateJoinDate(Trigger.New);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        //synchronous apex
        system.debug('Inside trigger.');
        system.debug('calling synch method NOW.');
        EmployeeTriggerHandler.synchronousMethod1(Trigger.newMap.keyset());
        system.debug('JUST called synch method. ');

        system.debug('-----');
        system.debug('calling future method NOW.');
        //EmployeeTriggerHandler.futureMethod1(Trigger.newMap.keyset());
        system.debug('JUST called future method. ');
    }
}