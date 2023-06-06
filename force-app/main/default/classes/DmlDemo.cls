public class DmlDemo {
   public static void dmlInsertDemo1() {
        //create one account record.

        //create new instance of account
        account acc = new account();
        acc.Name = 'Salesforce';
        acc.website = 'www.salesforce.com';

        //dml
        insert acc;
        system.debug('inserted acc: ' + acc);
   }

   public static void dmlInsertDemoCO1() {
        //create new instance
        Department__c d = new Department__c();
        
        //set field names
        d.Name__c = 'Human Resource';
        d.Short_Code__c = 'HR';
        //d.last_name__c = 'Mark';
        //insert dml
        insert d; //create RECORD in our ORG. So we can see it in ALL Records.
   }

   public static void dmlInsertDemoCO2() {
        //req: create new record in Salesforce Project object

        //1. create new instance.
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Learn DML';
        sp.Status__c = 'New';

        //create record
        //INSERT statement
        insert sp;
   }

   public static void dmlUpdateDemo1() {
        //create account
        account acc = new account();
        acc.Name = 'Softinnovas';
        system.debug('before insert DML: ' + acc);
        insert acc;
        system.debug('after insert DML: ' + acc);

        //we can update record if we have record id.
        acc.Name = 'Softinnovas INC.';
        acc.Website = 'www.softinnovas.com';

        //update statement
        update acc;
        system.debug('after update dml: ' + acc);
   }

   public static void dmlUpdateDemo2() {
        account acc = [select name from account order by createddate desc limit 1];

        acc.name = 'Softinnovas Inc.';
        //system.debug('website : ' + acc.Website);//NOt work.
        //acc.Website = 'www.sfinnovas.com';//YES.
        update acc;
   }

   //DON't DO THIS. NOT ALLOWED. Danger ahead. Illegal.
   public static void dmlInsertWrong() {
        //create related contact record.
        Contact c = new contact();
        c.lastname = 'Devil';
        //hard-coded id is NOT professional
        c.accountid = '0013x00002SMe9SAAT';//this is NOT good practice.
        insert c;
   }

   public static void dmlInsertDemo3(){
        //soql to get acc record
        account acc = [select id, name from account order by createddate desc limit 1];

        system.debug('acc record is ' + acc);
        //id accountid = acc.id;
        system.debug('acc name is ' + acc.Name);
        //system.debug('acc id is ' + accountid);

        //create related contact.
        contact c = new contact();
        c.lastname = 'Biden';
        //relationship
        c.accountid = acc.id; //get id from account record.

        //insert statement
        insert c;
   }
   


}