trigger CaseTrigger on Case (before insert) {
    system.debug('before insert case trigger');
    CaseTriggerHandler.recordCount += trigger.size;
    system.debug('number of records processed ' + CaseTriggerHandler.recordCount );

    //print total number of times trigger is executing.
    CaseTriggerHandler.triggerCount++;
    system.debug('number of trigger executing ' + CaseTriggerHandler.triggerCount );
}