List<Salesforce_Project__c> listSP = new List<Salesforce_Project__c>();
for (Integer i = 0; i < 5; i++) {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'trigger check ' + i;
        sp.Status__c = 'New';
        listSP.add(sp);
}

insert listSP;