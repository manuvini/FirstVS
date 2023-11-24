@RestResource(urlMapping='/getInvoice/*')
Global class restTets {
    @httpGet
    global static List<Invoice__c> getInvoice(){
        List<Invoice__c> inv = [select id,name from Invoice__c ];
        return inv;
    } 
    
    @httpPost
	global static void setInvoice(String des){
        Invoice__c i = new Invoice__c();
       	i.Invoice_Desc__c = des;
        insert i;
    
    }
    
    @httpDelete 
    global static void deleteInvoice(){
        RestRequest req = RestContext.request;
        String invId = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
		Invoice__c i = [select id ,name from Invoice__c where id = :invID];
        delete i;
    }
    
    
}