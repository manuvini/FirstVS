public class q5Class {
        Contact con;
        String name;
            public q5Class(){
                con = new Contact();
            }
             public pageReference doSave() {
                insert(con);
                return new pageReference('/003/o');
            }
            public Contact getQ5Class() {
            return con;
            }
}