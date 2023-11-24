public class MySchedule implements Schedulable {

    public void execute(schedulableContext sc){
        
        MYBatch mb= new MYBatch();
        database.executeBatch(mb);
    }

}