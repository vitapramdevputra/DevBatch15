public class ForLoopDemo {
    //print Hello 10 times
    public void print_Hello(){
        //traditional for loop OR for i loop 
        for(integer i = 1; i <= 17; i++){
            system.debug('hello');
        }
    }

    //0 to n-1
    public void print_N_numbers(integer n){
        string printStr = '';
        for (Integer i = 0; i < n; i++) {
            //system.debug(i);
            printStr += i + ',';
        }
        system.debug(printStr);
        
    }


    public void print_N_numbers2(integer n){
        string s = 'this';
        s += ' is a string';
        for (Integer i = 0; i < n; i++) {
            s += i;
            system.debug(s);//this is a string012345
        }
        system.debug(s);//will this work?
        
        
    }

    public void print_N_odd_numbers(integer startINt, integer endInt){
        string s = '';
        for (Integer i = startINt; i < endInt; i++) {
            //print only if i is ODD.
            
            integer remainder = math.mod(i, 2);
            //when we divide 2 by any number, if remainder is 0 then it is even number
            //if remainder is 1 then it is ODD number
            //1,3,5,7,9
            if (remainder == 1) {
                system.debug(i);
                s += i + ',';
            }
        }
        system.debug(s);

    }

}