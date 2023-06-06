public class DmlDemo2 {
    public static void insertRelatedRec2() {
        //get latest created department
            //create one employee for that department.
        
        Department__c d = [select id from Department__c order by CreatedDate desc limit 1];

        //create new instance
        Employee__c e = new Employee__c();
        e.First_Name__c = 'Don';
        e.Last_Name__c = 'Eladio';
        e.Salary__c = 500000;
        e.Department__c = d.Id;//clear
        e.Country__c = 'Mexico';
        insert e;
        system.debug('emp ' + e);
    }   


    //DO NOT TRY this at home
    public static void insertBulkWRONG() {
        //150 dmls are available in one apex execution (or transaction)

        for (Integer i = 0; i < 155; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
            //insert statement executes.
            //dml inside loop
            insert ac;
        }
    }

    public static void soqlWrong() {
        for (Integer i = 0; i < 105; i++) {

            account acc = [select id from account limit 1];
            system.debug(acc);
        }
    }

    public static void bulkInsertRight() {
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 155; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
           
            //add account to list
            listAcc.add(ac);
        }

        //if list is not empty then only insert
        if (!listAcc.isEmpty()) {
            insert listAcc;//insert 155 accounts
        }
       // Number of DML statements: 1 out of 150
       // Number of DML rows: 155 out of 10000
    }
    public static void bulkInsertRight2() {
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 155; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
           
            //add account to list
            listAcc.add(ac);
        }

        //if list is not empty then only insert
        if (!listAcc.isEmpty()) {
            insert listAcc;//insert 155 accounts
        }
       // Number of DML statements: 1 out of 150
       // Number of DML rows: 155 out of 10000
    }

    public static void bulkUpdateWrong() {
        list<account> listAcc = [select id, name, Description from account];
        for (account eachAcc : listAcc) {
            eachAcc.Description = 'updated';
            //update each account
            update eachAcc;//do not write DML inside loops.
        }
    }

    public static void bulkUpdateRight() {
        list<account> listAcc = [select id, name from account where CreatedDate = TODAY];
        for (account eachAcc : listAcc) {
            //string temp = eachAcc.name + ' v2';
            eachAcc.name = eachAcc.name + ' v2';
        }
        //update the list
        update listAcc;//1 dml will update all the accounts created today.
    }

    //Req: update account record description field, 
        //if active field is 'no' or blank, then udpate description to 'inactive'

    public static void accountUpdate() {
        //fetch all the accounts in list.
            //update accounts if active is blank or no.

        list<account> allAccounts = [select id, name, description, active__c from account]; //500

        //update 250 if active field is blank or no.
        list<account> updateAccList = new list<account>();


        for (account eachAcc : allAccounts) {
            if (eachacc.active__c == 'No' || string.isBlank(eachAcc.Active__c) ) {
                //update description
                eachAcc.Description = 'inactive';
                updateAccList.add(eachAcc);
            }
        }

        update updateAccList;

    }
}