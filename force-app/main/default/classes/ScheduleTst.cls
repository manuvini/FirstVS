public class ScheduleTst implements Schedulable {
    
    public void execute(SchedulableContext sc){
        BatchTest bc = new BatchTest();
        database.executeBatch(bc);
    }

}