//fetch account records that were created in previous month (month of may 2023 because we are in June 2023)
List<account> allacc = [select id, name from account where createdDate = last_month];
AccountQueueableExample aq = new AccountQueueableExample();
aq.accList = allAcc;


Id jobId = system.enqueueJob(aq); //this will enqueue our queueable
//monitor the apex job right here.
AsyncApexJob ap = [SELECT Status, JobType, JobItemsProcessed, Id, MethodName, NumberOfErrors FROM AsyncApexJob where id = :jobId];
system.debug(ap);
