//create new account record
    //pass accid to queueable
Account ac = new account(name = 'Default Acc'); 
insert ac;

//get all cases where accountid is null (orphan cases)
    //pass all cases to queueable
List<case> allCase = [select id, accountid from case where accountid = null];
// //1. normal world
// CasesQueueable cq = new CasesQueueable();//this will call LINE 5
// cq.cases = allCase;
// cq.defaultAccId = ac.id;

//2. consturctor world
CasesQueueable cq2 = new CasesQueueable(ac.id, allCase); //this will call LINE 8

system.enqueueJob(cq2); 
//our class execution will be queues in apex jobs
    //it will be picked by system and it will call execute method