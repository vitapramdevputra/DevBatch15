public class AccountSchedulable implements Schedulable {
    public void execute(SchedulableContext sc){
        //we will execute accounts batch
        AccountsBatch ab = new accountsBatch();
        database.executeBatch(ab, 50);



        //database.executeBatch returns JOB ID.
        //5 is the size of records.
        //batch class new instance
        DepartmentsBatch db = new DepartmentsBatch();
        Id JobId = Database.executeBatch(db, 5);
        system.debug('JOB ID is ' + JobId);
    }
}