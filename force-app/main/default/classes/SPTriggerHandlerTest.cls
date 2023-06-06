@isTest
public class SPTriggerHandlerTest {
    
    @isTest
    private static void testCreateTicket1() {
        //500 project
        List<Salesforce_Project__c> listSP = new List<Salesforce_Project__c>();
        for (Integer i = 0; i < 500; i++) {
            Salesforce_Project__c sp = new Salesforce_Project__c(Project_Name__c = 'TEST ' + i, Status__c = 'New');
            listSP.add(sp);
        }
        insert listSP;

        //our trigger and handler is suppose to create 500 default tickets for each project

        //assert if tickets are created
        list<Salesforce_Ticket__c> allTickets = [select id, Subject__c from Salesforce_Ticket__c];
        assert.areEqual(500, allTickets.size());
        assert.isTrue(allTickets[0].subject__c.contains('Default'));
    }
}