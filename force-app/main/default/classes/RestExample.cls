@RestResource(urlMapping='/myAccount/*')

Global class RestExample {

    @httpGet
    global static List<Account> getAccount(){
        return [select id, name from account];
    
    }

    @httpPost
    global static void createAccount(String actName){
        Account a = new Account();
		a.name= actName;
        insert a;

    }

	@httpDelete
    global static void deleteAccount(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String rid = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
		Account act = [select id,name from account where id= :rid];
        
        delete act;
        
    }

}