public class OppTest {
    
   public void getDetail(){
        List<opportunity> oppo = [SELECT Id, Name FROM opportunity where account.id = '0015h00001VfqiaAAB'];
        for(opportunity o:oppo){
            System.debug('Hi '+o);
        }
    }
    
     public void getDetail2(){
        List<opportunity> oppo = [select id, name ,accountid from opportunity];
        for(opportunity o:oppo){
            System.debug('Hi '+o.accountid);
        }
    }
}