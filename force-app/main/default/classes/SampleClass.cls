public with sharing class SampleClass {
    public string str1;
    public static string staticStr;
    public integer int1;
    public static integer staticInt;

    public void details(){
        system.debug('str1 ==> ' + str1);
        system.debug('int1 ==> ' + int1);
        system.debug('staticStr ==> ' + staticStr);
        system.debug('staticInt ==> ' + staticInt);
        system.debug('------');
        
    }

    public static void staticDetails(){
        //non-static varialbes.
            //we cannot access non-static members inside static methods
        system.debug('staticStr ==> ' + staticStr);
        system.debug('staticInt ==> ' + staticInt);
        system.debug('------');
    }
}