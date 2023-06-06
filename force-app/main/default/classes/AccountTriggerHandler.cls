public class AccountTriggerHandler {

    public static void updateAccDescription(List<account> accTriggerNew, List<Account> accTriggerOld, 
                                        Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
        //go through each record
        for(account eachAcc: accTriggerNew){
            //check if insert, then active is set to YES
            boolean updateDesc = false;
            if(Trigger.isInsert && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
            //check if update
            if(Trigger.isUpdate){
                //check if active field is changed. And new active field is 'Yes'
                    //check if old acc active != new acc active
                if(eachAcc.Active__c != accTriggerOldMap.get(eachAcc.id).Active__c && eachAcc.Active__c == 'Yes'){
                   updateDesc = true;
                }
            }
            
            if(updateDesc){
                eachAcc.Description = 'Account is now active. Enjoy buddy!';
            }
        }
    }

    public static void updateVIPContacts(List<account> accTriggerNew, List<Account> accTriggerOld, 
        Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {

            //We are updating 10 account records.
                //in 6 records we are updating VIP field
                //in 4 records we are updating phone field
            //our automation should work only on 6 account records in which VIP field is updated
            
            //new SET of account id for which VIP field is changed.
            set<id> accIds = new set<id>();
            for (account newAcc : accTriggerNew) {
                //check if VIP is changed
                if (newAcc.vip__c != accTriggerOldMap.get(newAcc.id).VIP__c) {
                    accIds.add(newAcc.Id);
                }
            }

            //we have acc ids for which VIP is changed. (ex: 6 account)
            //GET all contacts of all those account where VIP is changed, and set the NEW VIP value
                //total 20 contact for 6 accounts
                    //update VIP field in all 20 contacts.
                        //set VIP field same as its account's VIP field
            
            if(!accIds.isEmpty()){
                //GET all contacts of all those account where VIP is changed, and set the NEW VIP value
                list<contact> listContacts = [select id, name, vip__c, accountid from contact 
                                where accountid in :accIds and leadSource != 'Partner Referral']; 
                for (contact eachContact : listContacts) {
                    //eachContact.vip__c = account's vip field
                    //how to get this contact's account's VIP field 
                    boolean accVIP = accTriggerNewMap.get(eachContact.accountid).vip__c;
                    eachContact.vip__c = accVIP;//set contact's vip field same as account's vip field.
                }
                update listContacts;
            }   
    }

    //just accepting trigger.old.
        //we don't need trigger.oldMap. 
    public static void validateDelete(List<account> accTriggerOld) {
        for (account oldAcc : accTriggerOld) {
            if (oldAcc.active__c == 'Yes') {
                oldAcc.addError('Cannot delete active account.');
            }
        }
    }

    public static void sendRestorationEmail(List<account> accTriggerNew) {
        List<Messaging.SingleEmailMessage> listMessages = new List<Messaging.SingleEmailMessage>();
        for (account newAcc : accTriggerNew) {

            //prepare list of email address where we want to send email message
            List<string> emailAddress = new list<string>();
            emailAddress.add(UserInfo.getUserEmail());

            //Prepare ONE email message.
            Messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
            //set email address list where we want to send email
            msg.setToAddresses(emailAddress);
            msg.setSubject('Account successfully restored: ' + newAcc.name);
            msg.setPlainTextBody('Hello Hello, account is restored successfully. ');
            //add single email to LIST of emails
            listMessages.add(msg);
        }
        Messaging.sendEmail(listMessages);
    }

}