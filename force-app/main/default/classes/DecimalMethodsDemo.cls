public class DecimalMethodsDemo {
    public void practice1(){
        decimal d1 = 7.45124578;
        //setScale will return us decimal
        decimal d1x = d1.setScale(2);
        //print the new decimal
        system.debug(d1x);

        decimal d2 = 88.77554466;
        //doing the same thing directly
        system.debug(d2.setScale(3));

        string s = '88.77';
        decimal ds = decimal.valueOf(s);
        system.debug(s + 5); //88.775 -> when we do '+' operation with string, it concates
        system.debug(ds+5);  //93.77  -> when we do + with integer, decimal it adds
    }

    public void practice2(){
        decimal myMoney = 554.8945;
        //1. create another variable with only 2 decimal points
        decimal myMoney2 = myMoney.setScale(2);
        system.debug(myMoney2);
        
        string myMoney2Str = myMoney2.toPlainString();
        system.debug(myMoney2str);
        
        decimal myMoney3 = Decimal.valueOf(myMoney2Str);
        system.debug(myMoney3);
    }
}