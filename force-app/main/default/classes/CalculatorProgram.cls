public class CalculatorProgram {
    public void calc(){
        calculator c = new Calculator();
        system.debug('8,15 add==> ' +  c.add(8, 15));

        system.debug('8,5,15 add==> '  + c.add(8,5,15));
    }
}