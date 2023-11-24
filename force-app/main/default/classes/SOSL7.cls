public class SOSL7 {
    public static void run(){
        List<List<sObject>> lsObj = [find 'Tim' in all fields returning account,contact];
        System.debug(lsObj);
    }
}