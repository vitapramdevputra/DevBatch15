public class LoopDemo {
    public void print_1_while(){
         //1. initialize
        integer i =1;
        //2. exit condition
        while(i<=10){
            system.debug(1);
            //3. increment or decrement
            i++;
        }
    }
    //print 1 to 25.
    public void print_int_while(){

        //1. initialize
        integer i = 1;
        //whenever value of i is less than 25, go inside while block
        //2. exit condition
        while( i <= 25){
            system.debug(i);
            //increment or decrement
            i++;
        }
        system.debug('after while i => ' + i);// i will be??

    }

    public void print_int_while2(){

        //1. initialize
        integer i = 1;
        //whenever value of i is less than 25, go inside while block
        //2. exit condition
        system.debug('before while i ==> ' + i); // 1
            // ( 1 <= 3) ==> true? or false?
        while(i <= 3){
            system.debug(i);
            //increment or decrement
            i++;//
        }
        system.debug('after while i => ' + i);// i will be??

    }

    //printing multiple of 5 for n numbers
    public void print5multiple(integer n){
        integer i = 1;
        while (i <= n) {
            //remainder of 5/1, 5/2, 5/3
            integer remainder = math.mod(i, 5);
            if(remainder == 0){
                system.debug(i);
                
            }
            i++;
        }
        
    }
}