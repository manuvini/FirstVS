public class SOSLDemo {

    public void searchText (){
        list<list<sObject>> searchedTxt = [FIND 'gene' in all fields returning Contact(id,name) , Account(id,name)];
        list<Contact> contacts = searchedTxt[0];
        list<Account> accounts = searchedTxt[1];
        if(contacts.size()>0){
            for(Contact c:contacts){
                System.debug('Contact Id - ' + c.id +' Name -'+ c.name);
            }
        }
        if(accounts.size()>0){
            for(Account a:accounts){
                System.debug('Account Id - ' + a.id +' Name -'+ a.name);
            }
        }
     }
}