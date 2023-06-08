public class ExceptionDemo {
    public static void demo1(string str) {
        try {
            string str2 = str.toUpperCase();
            system.debug('str2 is ' + str2);
        } catch (NullPointerException nullEx) {
            system.debug('str is NULL so we cannot convert to uppercase');
            system.debug('exception: ' + nullEx);
        }

        system.debug('code completed.');
    }

    public static void demo2(string n, integer j) {
        try {
            account ac = new account(name = n);
            insert ac;
            system.debug('insert acc: ' + ac);

            integer x = 10/j;
            system.debug('10/j => ' + x);

            account a = [select id, name from account where name != :n];
            system.debug('a => ' + a);
        }  catch (MathException me){
            //throw error message to user
            system.debug('match exception occurred.');
            system.debug('me exception: ' + me);
        } catch(DmlException de){
            system.debug('Dml went wrong buddy..');
            system.debug('Dml Exception message: ' + de.getMessage());
            //email to admins
            //also log errors.
        } catch (Exception Ex) {
            system.debug('something went wrong buddy');
            system.debug('common exception' + ex);
            system.debug('comman exception message: ' + ex.getMessage());
        } finally{
            system.debug('finally finally finally');
        }


        system.debug('code completed. apex is simple.');
    }

    public static account demo3(string n) {
        try {
            account a = [select id, name from account where name = :n limit 1];
            system.debug('a => ' + a);

            account aNew = new account();

            aNew.name = n;
            insert aNew;
            system.debug('insert acc: ' + aNew);
            return anew;
        } catch (QueryException qe){
            system.debug('Query went wrong buddy');
            system.debug(qe);
            return new account();
        } catch (Exception Ex) {
            system.debug('something went wrong buddy');
            system.debug('common exception' + ex);
            system.debug('comman exception message: ' + ex.getMessage());
            return new account();
        } finally{
            system.debug('finally finally finally');
            system.debug('apex is still simple');
        }
       
    }
}