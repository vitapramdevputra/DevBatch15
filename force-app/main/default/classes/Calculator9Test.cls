//One TestClass Per class or trigger.
//@isTest annotation is used to make our class as a TEST Class.
@isTest
public class Calculator9Test {
   //create test method inside test class
        //Test method means we are write method to TEST a unit of our actual code
   //req for test method - public or private, static, returns void, and take no parameter
   @isTest
   public static void testMethod1(){
        Calculator9 c = new Calculator9();
        c.add(1.1,8.5);
   }

   @isTest
   private static void testAddMethod(){
        Calculator9 c = new Calculator9();
        integer sum = c.add(5,5);
        //assertion
        system.assertEquals(10, sum); //old way - old code will have this assertion.
        Assert.areEqual(10, sum); //new way - new code should have this assertion.
   }

   @isTest
   private static void testAddMethod2(){
        Calculator9 c = new Calculator9();
        integer sum = c.add(5,5,5);
        //assertion
        system.assertEquals(15, sum); //old way - old code will have this assertion.
        Assert.areEqual(15, sum); //new way - new code should have this assertion.
   }

   @isTest
   private static void testLeapYearCheck(){
        Calculator9 c = new Calculator9();
        boolean b = c.leapYearCheck(date.today());
        system.assert(!b);

        //it will fail if b is true
        Assert.isFalse(b);//this assert will be succesfull if boolean is FALSE
        
        //it will faild if B is false.
        Assert.isTrue(!b);//this assert will be succesfull if boolean is TRUE 

        system.assertEquals(false, b);
        Assert.areEqual(false, b);

   }
}