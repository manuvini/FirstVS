public class SOQL3 {
    
    public static void run(){
        
       

        List<Merchandise__C> merch = [select id, name from Merchandise__C where Merchandise_Stock__c > 500];
        for(Merchandise__C m:merch){
            System.debug(m);
        }
       
          List<Account> act = [select id, name from Account];
        for(Account m:act){
            System.debug(m);
        }
    
    }

}