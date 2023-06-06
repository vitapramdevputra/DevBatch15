public class SoqlDemo {
    public static void accountSOQL1() {
        list<account> listAcc = [select id, name, phone, website from account];
        system.debug(listAcc);
        list<contact> listCon = [select id, name, phone from contact];
        system.debug(listCon);
    }

    public static void accountSOQLOneR(){
        account acc = [select id, name, phone, website from account order by createddate desc limit 1];
        system.debug(acc);
        string accName = acc.Name;//field name. Similar to accessing class variable
        system.debug('name of acc is ' + accName);
        system.debug('website of acc is ' + acc.Website);
    }

    public static void accountSOQL3() {
        list<account> listAcc = [select id, name, phone, accountnumber, website from account order by createddate desc];

        for (account eachAcc : listAcc) {
            system.debug('each account record is ' + eachAcc);

            string accName = eachAcc.Name;
            system.debug('account name is ' + accName);
            system.debug('account phone is ' + eachAcc.Phone);
            system.debug('accountnumber is ' + eachAcc.accountnumber);
            system.debug('website is ' + eachAcc.website);//we can get field value only if it is selected.
            system.debug('------');
        }
    }

    public static void accountSoqlFilter() {
        list<account> listAcc1 = [select id, name, website from account where name = 'Lux'];
        system.debug('listAcc1 ' + listAcc1);
    }

    public static void projectSoqlFilter() {
        list<salesforce_project__c> listSP = [select id, name, project_name__c, status__c, description__c from salesforce_project__c where status__c = 'New'];
        system.debug(listSP);
        system.debug('# of records => ' + listSP.size());
    }

    public static void projectSoqlFilter(string status) {
        list<salesforce_project__c> listSP = [select id, name, project_name__c, status__c, description__c from salesforce_project__c where status__c = :status];
        system.debug(listSP);
        system.debug('# of records => ' + listSP.size());
    }


}