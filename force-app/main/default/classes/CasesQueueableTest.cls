@isTest
public class CasesQueueableTest {
    @isTest
   public static void testCases1() {
        //1. prepare data
        list<case> listCase = new list<case>();
        //we want to insert more than 200 cases in ONE DML.
        for (Integer i = 0; i < 505; i++) {
            Case c = new case(subject = 'there is a bug', Description = 'resolve it man', Status = 'New', Origin ='Web' );
            listCase.add(c);
        }
        insert listCase;

        Account ac = new account(name = 'Default Test Acc'); 
        insert ac;

        //2. start test and stop test
        //2.1 enqueue job
        Test.startTest();
        CasesQueueable cq2 = new CasesQueueable(ac.id, listCase); //this will call LINE 8
        system.enqueueJob(cq2);
        Test.stopTest();

        //3. assert
        list<case> allCases = [select id, AccountId from case where accountid != null];
        assert.areEqual(505, allCases.size());
        assert.isTrue(allCases[0].accountId != null);
   }
}