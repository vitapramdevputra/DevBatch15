public class ListDemoRev {
    public static void basicForLoop() {
        //traditional for loop
        //fori
            //init   ; exit ; increment or decrement
        
        for (Integer i = 10; i < 20; i++) {
            system.debug('i ==> ' + i);
        }
        
    }

    //calculate the sum between a and b including a and b.
    public static void sumOfN(integer a, integer b) {
        //assuming a < b
        
        //n = 15 + 16 + 17 + 18 + ... + 30;
        integer n = 0;
        for (Integer i = a; i <= b; i++) {
            system.debug('i is ' + i);
            //n = n + i;
            n += i;
        }

        system.debug('sum is ' + n);
        
    }

    public static void isPrimeNumber(integer num){
        //prime means number is ONLY divisible by 1 and the number itself
        // 2,3, 5,7, 11, 13, 17
        
        boolean isPrime = true;

        for (Integer i = 2; i < num; i++) {
            integer remainder = math.mod(num, i);
            if(remainder == 0){
                isPrime = false;
                break;
            }
            //system.debug('math.mod('+ num + ', ' + i +') => ' + remainder);
        }
        if (isPrime) {
            system.debug(num + ' is prime');
        } else {
            system.debug(num + ' is NOT prime');
        }

    }

}