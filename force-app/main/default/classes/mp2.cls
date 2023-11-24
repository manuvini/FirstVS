public class mp2 implements Schedulable {
    
    public void execute(SchedulableContext sc){
        Mp1 m = new Mp1();
        Database.executeBatch(m);
    }

}