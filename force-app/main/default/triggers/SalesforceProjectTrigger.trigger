trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {

    if (Trigger.isAfter && Trigger.isInsert) {
        //call future method
        system.debug('about to call future method');
        SPTriggerHandler.updateDescriptionFuture(Trigger.newMap.keySet());
        system.debug('JUST CALLED future method');

        //call handler method to insert default salesforce ticket.
        SPTriggerHandler.createDefaultTicket(Trigger.New);

    }

    if(Trigger.isBefore && Trigger.isUpdate){
        //call method to validate project completion
        //SPTriggerHandler.validate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        SPTriggerHandler.spStatusCompleted(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}