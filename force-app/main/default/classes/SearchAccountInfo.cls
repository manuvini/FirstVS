public class SearchAccountInfo {
    @auraEnabled(cacheable=true)
    public static List<Account> getAccountDetails(String actName){
        actName= '%'+actName+'%';
        return [select id , name from account where name like :actName];
    }

}