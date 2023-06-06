public class AccountHelperUpdate {

   @InvocableMethod
   public static void updateAccountWebsite(List<Id> accIds) {
        List<Account> accList = [SELECT id,name, Website FROM Account WHERE Id in :accIds];
        for (Account  eachAcc : accList) {
            eachAcc.Website='www.softinnovasbatch15.com';
        }
        update accList;
   }
}