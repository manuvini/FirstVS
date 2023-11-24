public with sharing class MyClass {

    public PageReference doSave() {
        upsert act;
        
        return new PageReference('/apex/success');
        // return new PageReference('https://www.google.com');
    }


    


        Account act;

       public MyClass(){
       
               id i = apexpages.currentpage().getparameters().get('id');
               if (i == null){
               act = new Account();
               
               }else{
                      act = [select id,name from account where id =:i];
        
               }
       
       }

    public Account getMyClass() {
        return act;
    }

}