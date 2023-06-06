public class SPTriggerHandler {

    public static void createDefaultTicket(List<salesforce_project__c> spTriggerNew) {
        //create list<st>
        list<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();
        for (Salesforce_Project__c newSP : spTriggerNew) {
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c = 'Default ST';
            st.Salesforce_Project__c = newSP.Id; //relationship field
            listST.add(st);
        }
        if (!listST.isEmpty()) {
            insert listST;
        }
    }

    public static void validate1(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld, Map<id, Salesforce_Project__c> spTriggerNewMap,Map<id, Salesforce_Project__c> spTriggerOldMap ) {
        //create a set of id of SP
            //add SP for which we have updated status field and updated to completed
        set<id> setSPid = new set<id>();
        for (Salesforce_Project__c newSP : spTriggerNew) {
            if (newSP.Status__c != spTriggerOldMap.get(newSP.Id).status__c && newSP.Status__c == 'Completed') {
                setSPid.add(newSP.Id);
            }
        }
        //get all the tickets of all the SP(status is completed) and where ticket's status is not completed
        List<Salesforce_Ticket__c> listST = [select id, status__c, Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c in :setSPid and status__c != 'Completed'];

        //for each ticket
            //get project id from newMap
                //add error
        for (Salesforce_Ticket__c eachST : listST) {
            salesforce_project__c sp = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            sp.addError('Cannot complete project because all its tickets are NOT completed. Try again later.');
        }
    }

    //pass salesforce project ID in method.
    @future
    public static void updateDescriptionFuture(set<id> spIds){
        system.debug('inside future method');
        //fetch all Salesforce project using project Ids via SOQL
        List<Salesforce_Project__c> listSP = [select id, name, description__c from Salesforce_Project__c where id in :spIds];
        //update description for all projects.
        for (Salesforce_Project__c eachSP : listSP) {
            eachSP.Description__c = 'Updated from future. Ok?';
        }
        update listSP;
        system.debug('future done');
    }

    public static void spStatusCompleted(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld, Map<id, Salesforce_Project__c> spTriggerNewMap,Map<id, Salesforce_Project__c> spTriggerOldMap) {
        set<id> spIds = new set<id>();
        for (Salesforce_Project__c sp : spTriggerNew) {
            if (sp.status__c == 'Completed' && sp.status__c != spTriggerOldMap.get(sp.id).Status__c) {
                spIds.add(sp.id);
            }
        }
        if (!spIds.isEmpty()) {
            //call future method
            completeTickets(spIds);
            
            //completeTickets(list<ST >); --> future method
            //updating list<ST> HERE.
        }
    }

    @future
    private static void completeTickets(set<id> spIds) {
        //we have all the sp ids.
        //get all tickets of all these spids which are NOT COMpleted.
            //update tickets to complete
        List<Salesforce_Ticket__c> allST = [select id, status__c, salesforce_project__c from salesforce_ticket__c where Salesforce_Project__c in :spIds and status__c != 'Completed'];
        for (Salesforce_Ticket__c st : allST) {
            st.Status__c = 'Completed';
        }
        update allST;
    }
}
