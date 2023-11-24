public class SOQL5 {  
    public static void run(){
        List<Account> actList = [select id, name ,(select id from Opportunities) from Account];
        for(Account act: actList){
            List<Opportunity> op = act.Opportunities;
            if(op.size()>0){
                   System.debug('Account name '+ act.name +' Related Opportunities -' + act.Opportunities);
            }
        }
    }
}