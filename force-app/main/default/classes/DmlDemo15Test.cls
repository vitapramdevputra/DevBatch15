@isTest
public class DmlDemo15Test {
    //each TESt METHOD is considered as separated transaction for LIMITs
    //full governor limits available (100 soql, 150 dml, 10k records to update, 50k recordss)
    @isTest
    private static void testDML1() {
        //this is create one record. 
            //Where? It will NOT create record in the org.
        DmlDemo15.dmlInsertDemo1(); 

        //how to assert if record is created?
        //soql
        list<account> listAcc = [select id, name from account];
        
        system.assertEquals(1, listAcc.size());
        Assert.areEqual(1, listAcc.size());

        Assert.areEqual('Salesforce', listAcc[0].name);
        Assert.areNotEqual('softinnovas', listAcc[0].name);//not equal then it will pass the test
    }

     //full governor limits available (100 soql, 150 dml, 10k records to update, 50k recordss)
    @isTest
    public static void testDML2(){
        
        //call method
        DmlDemo15.dmlInsertDemoCO1();
        //assert
            //soql to get records
        list<department__c> listdep = [select id, name__c from department__c];
        system.assertEquals(1, listdep.size());
        assert.areequal(1, listdep.size());
        Assert.areEqual('Human Resource', listdep[0].name__c);
    }

     //full governor limits available (100 soql, 150 dml, 10k records to update, 50k recordss)
    @isTest
    private static void testDML3() {
        //prepare data
        Account acc3 = new account(name = 'acc test');
        insert acc3;


        //call method
        DmlDemo15.dmlUpdateDemo2();
        
        //what to assert?
            // what functionality is our method implemeting?
            //method is updating name
            //we will assert is name is updated.
        
        account accAssert = [select id, name from account where id = :acc3.Id];
        Assert.areEqual('Softinnovas Inc.', accAssert.Name);
    }

    //full governor limits available (100 soql, 150 dml, 10k records to update, 50k recordss)
    @isTest
    private static void testDML4() {
        //prepare data
            //what data?
        Department__c dept = new Department__c(Name__c = 'QA');
        insert dept;

        //call method
        DmlDemo15.insertRelatedRec2();

        //assert
            //what to assert?
        Employee__c emp = [select id, name, first_name__c, last_name__c, Department__c from Employee__c where Department__c = :dept.id limit 1];
        Assert.areEqual('Don', emp.First_Name__c);
    }

    //full governor limits available (100 soql, 150 dml, 10k records to update, 50k recordss)
    @isTest
    private static void testDML5() {
        //prepare data
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 1555; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
           
            //add account to list
            listAcc.add(ac);
        }

        //if list is not empty then only insert
        if (!listAcc.isEmpty()) {
            insert listAcc;//insert 155 accounts
        }
        //in data preparation part we are consuming some limits.
        
        //RESET governor limit 
        Test.startTest();
        //governor limits are RESET.
            //full governor limits available (100 soql, 150 dml, 10k records to update, 50k recordss)
        //call method
            //this method a little LESS limit available. (we consumed some while preparing data)
        DmlDemo15.bulkUpdateRight();
        Test.stopTest();

        //assertion
        account acc = [select id, name from account limit 1];
        assert.isTrue(acc.name.contains('v2'));

    }

}