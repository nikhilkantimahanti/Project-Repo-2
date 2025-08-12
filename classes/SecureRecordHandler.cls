public class SecureRecordHandler {
    
    // Method to create an Account with a single Contact
    public static void createAccountAndContact(String accountName, String firstName, String lastName) {
        if (String.isBlank(accountName) || String.isBlank(firstName) || String.isBlank(lastName)) {
            throw new IllegalArgumentException('Account and Contact details must not be blank.');
        }

        Account newAccount = new Account(Name = accountName);
        insert newAccount;

        Contact newContact = new Contact(
            FirstName = firstName,
            LastName = lastName,
            AccountId = newAccount.Id
        );
        insert newContact;
    }

    // Method to update an Account's Annual Revenue
    public static void updateAnnualRevenue(Id accountId, Decimal revenue) {
        if (accountId == null || revenue == null || revenue < 0) {
            throw new IllegalArgumentException('Invalid account ID or revenue amount.');
        }

        Account acc = [SELECT Id FROM Account WHERE Id = :accountId LIMIT 1];
        acc.AnnualRevenue = revenue;
        update acc;
    }
}