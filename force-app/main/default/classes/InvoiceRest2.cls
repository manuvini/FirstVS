@RestResource(urlMapping='/MyInvoice2/*')
global class InvoiceRest2 {
    @httpGet
    global static List<Invoice__c> AllInvoice() {
        return [Select id, Name from Invoice__c];

    }
    
    
   	//{"Des":["123","456","creted by workbench inv"]}
    @httpPost
    global static void CreateInvoice(List<String> Des) {
        List<Invoice__c> inv = new List<Invoice__c>();
        Invoice__c i ;
        for(String str:Des)
        {
            i = new Invoice__c();
            i.Invoice_Desc__c=str;
            inv.add(i);          
        }
        insert inv ;
    }


	
    	@httpDelete
        global static void deleteAccount(){
 
 
            RestRequest req = RestContext.request;
            String InvoiceId = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
            Invoice__c inv = [select id,name from Invoice__c where id= :InvoiceId];
            delete inv;
        }
 
}