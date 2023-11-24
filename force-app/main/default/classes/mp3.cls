@RestResource(urlMapping='/mytest/*')
Global class mp3 {
    
    	@httpGet
        global static List<Invoice__c> getInvoice(){
            List<Invoice__c> inv = [select id, name from Invoice__c];
            return inv;
        } 
    
    	@httpPost
        global static void addInvoice(List<Invoice__c> inv){
            insert inv;
        }
    
    	@httpDelete
   		 global static void deleteInvoice(){
        RestRequest request = RestContext.request;
        String invId = request.requestURI.subString(request.requestURI.lastIndexOf('/')+1);
        Invoice__c inv = [select id , name from Invoice__c where id = :invId];
        delete(inv);
   	 }
}