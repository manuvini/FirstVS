public class InvoiceSch implements Schedulable{
 
    public void execute(schedulableContext sc){
        Invoice_updates i = new Invoice_updates();
        database.executebatch(i);
    }
 
}