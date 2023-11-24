public class Collection {


    public void getnames(){
             
      Map<String,String> names = new Map<String,String>();


        names.put('m1','Amit');       
        names.put('m2','Raj	');
        names.put('m3','Prem');
        names.put('m4','Sandy');
        System.debug('Result' + names.get('m1'));

		names.put('m1','Manoj');
        System.debug('Result' + names.get('m1'));

         Set<String> nm = names.keySet();
        
        for(String v: nm){
		System.debug(names.get(v));
        
        }

		List<String> n = names.values();
        for(String k: n){
		System.debug('Valuse from get vlaues '+ k);
        }        

    }
 
}