public class MethodsDemo {
    //return TYPE is MUST. 
        //void if we don't want to return anything
    public void welcomeMessage(){
        system.debug('Hi there, welcome to the jungle!');
    }
    //method name = samplePrintMessage
    //# of parameters => 1
    //datatype of parameter is string.
        //message is the VARIABLE name which we use INSIDE method
    public void samplePrintMessage(string message){
        system.debug(message);
    }

    public void newMessage(string name){
        system.debug('Hi ' + name + ', welcome to the world of apex!!');
    }

    //eg: input name = Chris
        //output ==> Hey Chris, nice to meet you buddy
    public string returnMessage(string name){
        system.debug('inside returnMessage method');
        string str = 'Hey ' + name + ', nice to meet you buddy';
        return str;
    }
}