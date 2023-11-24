public class GetAccountsWithOpportunities {
  public void main() {
    // Get all Opportunities
    Opportunity[] opportunities = [SELECT Id,Account.Id FROM Opportunity];

    // Get the Account IDs for each Opportunity
    Set<String> accountIds = new Set<String>();
    for (Opportunity opportunity : opportunities) {
      accountIds.add(opportunity.AccountId);
    }

    // Get all Accounts that match the Account IDs
    Account[] accounts = [SELECT Id, Name FROM Account WHERE Id IN :accountIds];

    // Print the results
    for (Account account : accounts) {
      System.debug(account.Id + ' - ' + account.Name);
    }
  }
}