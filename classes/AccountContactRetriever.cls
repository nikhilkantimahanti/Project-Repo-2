public class AccountContactRetriever {
    // Method to get accounts and their related contacts
    public static List<Account> getAccountsAndContacts() {
        // Query to retrieve accounts and their related contacts
        List<Account> accounts = [SELECT Id, Name, (SELECT Id, FirstName, LastName, Email FROM Contacts) FROM Account];
        return accounts;
    }
}