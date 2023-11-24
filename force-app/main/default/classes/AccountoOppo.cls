public class AccountoOppo {
    public void getResults(){
        List<Account> acc=[Select id, name, (select id,name from Opportunities) from Account];
        for(Account account:acc){
            System.debug(account);
        }
    }
 
}