//Null pointer exception
    string s;
    s.toUpperCase();

    integer i;
    system.debug(i+15);

    list<integer> l77;
    l77.add(10);

//Limit exception
    for (Integer i = 0; i < 200; i++) {
        account a = new account(name = 'acc');
        insert a;
    }

    integer j = 0;
    while(j < 5){
        system.debug(j);
    }

//list exception
List<integer> l1 = new list<integer>{1,58,5};
system.debug('l1 5th element: ' + l1[5]);

//Query Exception 
    //System.QueryException: List has no rows for assignment to SObject
    Account a1 = [select id, name from account where createddate = today limit 1];
    system.debug(a1);

    Account a2 = [select id, name from account where name like '%acc%'];
    system.debug(a2);

//Dml Exception
Account a3 = new account();
insert a3;
system.debug('a3: ' + a3); //this like will not execute.

account a4 = [select id, name from account limit 1];
a4.name = 'chang it';
insert a4;