public class SOSL6 {
    
    public static void run(){
        
        List<List<sObject>> lis = [find 'LNT' in all fields returning account,contact];
		System.debug(lis);        
        
    }

}