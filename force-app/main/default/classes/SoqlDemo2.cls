public class SoqlDemo2 {
    public static void accountContactSOQL() {
        list<contact> listCon = [select id, name, account.name, account.industry, account.annualRevenue, accountid from contact];
        decimal totalRev = 0;
        for (contact eachContact : listCon) {
            system.debug('contact name is ' + eachContact.Name);
            string accName = eachContact.account.name;
            system.debug('account name is ' + accName + ', acc industry is ' + eachContact.account.Industry);

            decimal accRevenue = eachContact.account.AnnualRevenue;
            if (accRevenue != null) {
                totalRev += accRevenue;
            }
            system.debug('account revenue is ' + accRevenue);
            system.debug('---');
        }
        system.debug('total acc revenue ' + totalRev);
    }

    public static void childToParent2() {
      List<Salesforce_Ticket__c> listST = [select id, name, subject__c, status__c, salesforce_project__c,       salesforce_project__r.status__c, salesforce_project__r.project_name__c from salesforce_ticket__c];

      system.debug('st size => ' + listST.size());

      //PRINT ticket subject and project name only for those records where project status is new
      for (Salesforce_Ticket__c eachST : listST) {
        //how to get project's status?
            if (eachST.Salesforce_Project__r.Status__c == 'New') {
                system.debug('ticket name is ' + eachST.Subject__c + ', its project name is ' + eachST.Salesforce_Project__r.Project_Name__c);
            }
      }
    }
}