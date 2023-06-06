list<contact> l = new list<contact>();

Contact c = new contact();
c.LastName  = 'cnt trigger 3';
l.add(c);

system.debug('----');

Contact c1 = new contact();
c1.LastName  = 'cnt trigger 4';
l.add(c1);

insert l; //each DML 


List<account> listAcc = new list<account>();
for (Integer i = 0; i < 5; i++) {
    account ac = new account();
    ac.Name = 'acc trigger bulk ' + i;
    //add account to list
    listAcc.add(ac);
}
insert listAcc;



Trigger.isBefore
Trigger.isAfter
Trigger.isInsert
Trigger.isUpdate
Trigger.isDelete

Trigger.new
    - list<sObject>
    - new records (latest created or updated records)
    - is it available in before insert?
        - Yes, it is available. NO ID. No createddate, no createdby.
            - why no ID?    
                - record is NOT YET Saved.
    - is it available in after insert?
        - Yes. With Id. 
    - Before update and after update?
        - Yes. With Id.
        - what would be name in before update?
            - trigger.new name:
        - what would be name in after update?
            - trigger.new name:
Trigger.old
    - list<sObject>
    - old record or immediate previous data
    - Available in Before insert and after insert?
        - No. It is null. Why? 
            - There was no previous records. 
    - Available in Before update and after update?
        - yes. 
    -  Example: old name would be Lux.

Trigger.oldMap
    - map<id, sObject>
    - available?
        - update. Before update, and After update.
    
Trigger.newMap
    - map<id, sObject>
    - Available?
        - After insert, and before and after update


When to use Before Trigger?
    (before insert, before update, before delete)
    - Validation. 
    - update any field of same records.

When to use After Trigger?
    - DML - if we want to insert/update/delete related records
    - if we need ID while inserting
    - long running process we prefer to do it in After 
    - we can also validate in after if it is long running process.

