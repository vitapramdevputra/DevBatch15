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
}