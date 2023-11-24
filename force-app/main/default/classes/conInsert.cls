public class conInsert {

    public PageReference doSave() {
        insert(con);
        return new PageReference('https://www.google.com');
    }


   

    public Contact getConInsert() {
        return con;
    }

    Contact con;
    
   public conInsert(){
   con = new Contact();

   }

}