public class mp1 implements Database.Batchable<sObject>{
    
    public Database.queryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('select id,name from Invoice__c');
        
    }

    public void execute(Database.BatchableContext bc, List<Invoice__c> li){
        for(Invoice__c i:li){
            i.Invoice_Closed_Date__c = Date.today();
            
        }
        update li;
        
        
    }

    public void finish(Database.BatchableContext bc){
        
    }
       
}