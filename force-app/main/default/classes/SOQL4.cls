public class SOQL4 { 
    public static void run(){       
		List<Opportunity> opList = [select id, account.name from Opportunity ];
        for(Opportunity o: opList){
		System.debug('Opportunity id ' + o.id + ' Associated Account -  '+ o.account.name);
        
        } 
    }
}