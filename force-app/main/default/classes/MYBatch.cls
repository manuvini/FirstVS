public class MYBatch implements Database.Batchable<sObject> 
{
	public Database.QueryLocator start(Database.BatchableContext bc)
    {
        String q= 'SELECT id, name FROM account';
        return Database.getQueryLocator(q);
    }
    public void execute(Database.BatchableContext bc,List<Account> act)
    {
        for(Account a:act)
        {
            a.name=a.name+'_SecondUpdate';
        }
        custom();
        update act;
    }
    public void custom(){
        System.debug('Custom Method in Apex Class Of Batch');
    }
    
    public void finish(Database.BatchableContext bc){
        PriceUpdate p = new PriceUpdate();
        database.executeBatch(p);
        
    }
}