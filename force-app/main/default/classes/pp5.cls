public class pp5  {

    
    public static void test(){
        List<Account> act = [select id, name from Account];
        for(Account a: act){
            System.debug(a);
        }
        
        
        List<Merchandise__c> merch = [select id from Merchandise__c where merchandise__c.merchandise_stock__c >5000];
        for(Merchandise__c m: merch){
            System.debug(m);
        }
        
             
    }
}