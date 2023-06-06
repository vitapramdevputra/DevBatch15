trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {


    if (Trigger.isBefore && Trigger.isUpdate) {
        //Call handler here.
        ContactTriggerHandler.validateContactUpdate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.validateContactUpdate2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

    // List<contact> conTriggerNew = trigger.new;
    // //trigger.isBefore is true when record reaches BEFORE trigger of timeline
    // if (Trigger.isBefore) {
    //     system.debug('before trigger called.');
    //     if (Trigger.isInsert) {
    //         system.debug('before insert trigger called');
    //     } 
    //     if (Trigger.isUpdate) {
    //         system.debug('before update trigger called');
    //     }
    // }

    // if (Trigger.isAfter) {
    //     system.debug('after trigger called.');
    //      if (Trigger.isInsert) {
    //         system.debug('after insert trigger called');
    //     } 
    //     if (Trigger.isUpdate) {
    //         system.debug('after update trigger called');
    //     }
    // }
}