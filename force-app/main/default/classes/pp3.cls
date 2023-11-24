@RestResource(urlMapping='/mytestUrl/*')
Global class pp3 {
    	@httpGet
        global static List<Invoice__c> getInvoice(){
            return [select id from Invoice__c];  
        }
     
    	@httpPost
        global static void setData(List<Invoice__c> i){
            insert i;
        }
    
    	@httpDelete
    	global static void deleteInv(){
        RestRequest req = RestContext.request;
        String invId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Invoice__c  inv = [select id from Invoice__c where id = :invId];
        delete inv;
    	}	
}