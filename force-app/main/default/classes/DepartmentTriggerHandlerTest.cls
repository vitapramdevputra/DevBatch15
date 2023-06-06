@isTest
public class DepartmentTriggerHandlerTest {
    @isTest
    private static void testFuture1() {
        List<department__c> listDep = new list<department__c>{
            new Department__c(name__c = 'TEST'),
            new Department__c(name__c = 'Trigger'),
            new Department__c(name__c = 'Soql'),
            new Department__c(name__c = 'Dml')
        };

        Test.startTest();
        //while inserting department, trigger will call future method, which inserts employee
        insert listDep;
        Test.stopTest();

        // set<id> setIds = new set<id> {listDep[0].id, listDep[1].id};
        // DepartmentTriggerHandler.createDefaultEmployee(setIds);

        //ASSERT
        List<Employee__c> listEmp = [select id, first_name__c from employee__c];
        assert.areEqual(4, listEmp.size());
        for (employee__c e : listEmp) {
            //assert.areEqual('Richard', e.first_name__c);
            system.assertEquals('Richard', e.First_Name__c);
        }
    }
}
