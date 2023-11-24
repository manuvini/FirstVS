public class BatchTest implements Database.Batchable<sObject> {

    public database.queryLocator start(Database.BatchableContext bc){
	return Database.getqueryLocator('select id, name from Inovice__c');
    
    }
      public void execute(Database.BatchableContext bc,List<Invoice__c> inv){
      
        for(Invoice__c i:inv){
            i.Invoice_Closed_Date__c = Date.today();
        }
        update inv;
        
    }
    
    

    
    public void finish(Database.BatchableContext bc){
        
    }

}