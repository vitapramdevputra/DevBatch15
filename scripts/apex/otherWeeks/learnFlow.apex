List<account> newAccounts = Trigger.new; 
Map<id, account> newAccountsMap = Trigger.newMap;
Trigger.old, Trigger.oldMap;

List<contact> allContacts = new list<contact>();
//allContacts -> soql to get all contact records where account id = trigger record id

integer counter = 0;
if(accountContacts not null){ //Yes
    //count number of records HERE
    for( : ){
        counter = counter + 1;
    }

} else { //No
   // counter = 0;
}




Account a = new account();
a.name = 'anything';

account a2 = new account();

list<account> listAcc = new list<account>();
listAcc.add(a);
listAcc.add(a2);



Carrr c1 = new Carrr();
c1.name = 'gmc';

Carrr c2 = new Carrr();

List<carrr> listcarrr = new list<carrr>();
listCarrr.add(c1);
listCarrr.add(c2);
