Application Log
    - the object to LOG all the ERRORs in org


1. Log all the errors of Batch Apex
    - Platform event-triggered flow to LISTEN BatchApexErrorEvent --> This flow will LISTEN to any error which is thrown from ANY Batch class of the org. And create one application log for that.
        
        - use Create Record element
            - create application log

2. In all triggers, handlers, helpers or any apex code, in catch we will PUBLISH another platform event(appLog__e)
    - create a PE Flow to insert a record in ApplicationLog__c custom object


