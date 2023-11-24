global class SOAPExample {
    
    webService static Account getAccount(String actID){
        
        Account act = [select id, name from account where id=:actID];

        return act;
    }

}