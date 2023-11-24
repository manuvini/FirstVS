public class PriceUpdate implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc){
           String q= 'Select id,Merchandise_Price__c from Merchandise__c';
	return Database.getQueryLocator(q);
    }
    
    public void execute(Database.batchableContext bc,List<Merchandise__c> merch){
        for(Merchandise__c m: merch){
            m.Merchandise_Price__c = 105;
            
        }
        update(merch);
        
    }
    
    public void finish(Database.BatchableContext bc){
        
    }
    

}