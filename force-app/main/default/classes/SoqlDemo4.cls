public class SoqlDemo4 {
    public static void groupByQuery() {
        List<AggregateResult> result = [select country__c, count(id), sum(salary__c) from Employee__c group by Country__c];

        for (AggregateResult ar : result) {
            system.debug(ar);
            system.debug('country name is ' + ar.get('country__c'));
            system.debug('number of employees are ' + ar.get('expr0')); //expression0
            system.debug('total salary is ' + ar.get('expr1'));//expression1
        }
    }

    public static void accDynamicSOQL1(string accFieldNames) {

        string query = 'select ';
        query = query + accFieldNames;
        //query += accFieldNames;
        query += ' from account';

        system.debug('final query is::  ' + query);
        list<account> listAcc = database.query(query);
        for (account eachAcc : listAcc) {
            system.debug(eachAcc);
        }
    }
}