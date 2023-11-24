public class AccTri {

    public static void handleOwnership(List<Account> acc){
        for(Account a:acc){
            if(a.Industry == 'Education'){
                a.Ownership = 'Public';
            }
        }
        
    }

}