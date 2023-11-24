public class OppTriggerClass {
    public static void checkStatus(List<Opportunity> oppOld,List<Opportunity> oppNew){
        for(Opportunity opOld :oppOld){
            for(Opportunity opNew :oppNew){
                if(opOld.StageName=='closed won'&&opNew.StageName=='closed lost'){
             	opNew.NextStep ='escalate to manager';
    
            }
            
        }
        
    }
  }

}