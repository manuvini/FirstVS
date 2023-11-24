public class pp2 implements Schedulable {
    
    public void execute(SchedulableContext sc){
        Database.executeBatch(new pp1());
    }
    

}