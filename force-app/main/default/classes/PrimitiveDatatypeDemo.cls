public class PrimitiveDatatypeDemo {
    public void print1(){
        //we will create some datatype variables and print it.
        string batchName = 'Batch 15';
        integer totalCandidates = 54; //will this work?
        boolean isAdminCompleted = true;

        string batchDescription = batchName + ' has ' + totalCandidates + ' candidates, and is the best';
        system.debug(batchDescription);
        system.debug('isAdminCompleted => ' + isAdminCompleted);
    }

    public void print2(){
        Decimal d1 = 788.4564;
        system.debug('d1 is ' + d1);

        Long l1 = 78746987464L;
        system.debug(l1);

        Double dd1 = 998787987.64;
        system.debug('dd1 ' + dd1);

        id accId = '0013x00002RfRdAAAV';//will this work?
        system.debug('acc id is ' + accId);

        //all datatypes are INHERITED from object
        object obj1 = 99;
        object obj2 = 'assign string to object';
        object obj3 = true;
        object obj4 = l1;
        object obj5 = accId;
        system.debug( obj1);
        system.debug( obj2);
        system.debug( obj3);
        system.debug( obj4);
        system.debug( obj5);
    }
}