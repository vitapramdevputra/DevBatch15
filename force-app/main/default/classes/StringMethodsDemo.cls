public class StringMethodsDemo {
    public void stringMethod1(){
        system.debug('practice string methods');
        string sDesc = 'learning string methods in apex language.';

        //1. Req: length methods returns integer
                    //sDesc -> string variable for which we want to find length
                    //length() -> string method which returns us length of string
        integer strLength = sDesc.length();
        system.debug('length of string is ' + strLength);

        //2. CONVERT sDesc to UPPERCASE
            //we use method .toUpperCase();
                //which returns string by converting a string to UPPERCASE
        string upSDesc = sDesc.toUpperCase();
        system.debug('uppercase string ==> ' + upSDesc);

        //3. check if string contains 'apex' in it
        boolean checkApex = sDesc.contains('apex');
        system.debug('check if string contains apex ==> ' + checkApex);

        //3.b check if string contains salesforce
        boolean checkSalesforce = sDesc.contains('salesforce');
        system.debug('check if string contains salesforce ==> ' + checkSalesforce);

        //3.c check if string contains Apex
        boolean checkApex2 = sDesc.contains('Apex');
        system.debug('Apex contains in string ==> ' + checkApex2);

        //containsIgnoreCase means --> apex == Apex == APEX == aPEX == APex
        boolean checkApex3 = sDesc.containsIgnoreCase('Apex'); //case insensitive method
        system.debug('Apex contains ignore case in string ==> ' + checkApex3);
    }

    public void stringMethod2(){
        //1. trim
        string username = ' vitap r  ';
        system.debug('actual length ' + username.length());
        username = username.trim();//is this line understandable?
            //username = 'vitap r'; (removing spaces from before and after string)
        system.debug('after trim ' + username);
        system.debug(username.length());

        string username2 = 'vitap';
        //check if username is same as username2
        boolean checkNames = username.equals(username2);
        system.debug('check if username is same as username2 ==> ' + checkNames);

        boolean checkNames2 = username.equals('Vitap R');//equals method is case sensitive
        system.debug('check if username is same as Vitap R ==> ' + checkNames2);

        boolean checkNames3 = username.equalsIgnoreCase('Vitap R');//equalsIgnoreCase method is case insensitive
        system.debug('check if username is same as Vitap R(ignorecase) ==> ' + checkNames3);

        
    }
}