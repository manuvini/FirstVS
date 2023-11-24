public class SQLdemo {

    public void getAllAccounts() {

    
        List<Account> act = [select id,name from account];
        for(Account a: act){
            System.debug('Account Id : ' + a.id + 'Account Name: '+ a.name );
        }
    }

    public void getAllMerchandise() {
        List<Merchandise__c> merch = [select id,name from Merchandise__c];
        for(Merchandise__c a: merch){
            System.debug('Merchadise id: '+ a.id +'Merchadise name: ' + a.name);
        }
    }

}