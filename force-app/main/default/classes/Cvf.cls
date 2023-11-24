public class Cvf {

   

       //declaration
       Contact cat;
       //Construtor
       public Cvf(){
       cat = new Contact();
       
       }
       
       //Get method
       public Contact getCvf() {
        return cat;
       }
    
    
     public PageReference doSave() {
            insert(cat); 
            PageReference p = new PageReference('/apex/manoj');
            return p;
    }




}