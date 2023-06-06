@isTest
public class AccountTriggerTest {
    //we don't call test method from any other class.
        //we JUST run test, and system calls each test method on its own.
        //so it can be public or private.
   @IsTest
   static void testAccTrg1(){
        List<account> listAcc = new list<account>();

        Account acc = new account();
        acc.Name = 'JN Test';
        acc.Industry = 'Energy';
        listAcc.add(acc);
        
        Account acc2 = new account();
        acc2.Name = 'UN Test';
        listAcc.add(acc2);

        Account acc3 = new account();
        acc3.Name = 'TN Test';
        listAcc.add(acc3);

        insert listAcc;

        list<account> list1 = [select id, name from account];
        Assert.areEqual(3, list1.size());

        acc2.industry = 'Energy';
        update acc2;

        //delete any one account.
        delete acc2;

        list<account> list2 = [select id, name from account];
        Assert.areEqual(2, list2.size());

        //undelete record
        undelete acc2;

        list<account> list3 = [select id, name from account];
        Assert.areEqual(3, list3.size());
   }
}