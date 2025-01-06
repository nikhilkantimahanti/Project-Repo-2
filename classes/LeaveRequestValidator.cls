public class LeaveRequestValidator {

    // Method to create an account with a given name
    public static Account createAccount(String accountName) {
        if (String.isBlank(accountName)) {
            throw new IllegalArgumentException('Account name cannot be blank');
        }

        Account newAccount = new Account(Name = accountName);
        insert newAccount;
        return newAccount;
    }

    // Method to update account name
    public static Account updateAccountName(Id accountId, String newName) {
        if (accountId == null || String.isBlank(newName)) {
            throw new IllegalArgumentException('Account ID and name cannot be null or blank');
        }

        Account accountToUpdate = [SELECT Id, Name FROM Account WHERE Id = :accountId LIMIT 1];
        accountToUpdate.Name = newName;
        update accountToUpdate;
        return accountToUpdate;
    }

    // Method to delete an account
    public static void deleteAccount(Id accountId) {
        if (accountId == null) {
            throw new IllegalArgumentException('Account ID cannot be null');
        }

        Account accountToDelete = [SELECT Id FROM Account WHERE Id = :accountId LIMIT 1];
        delete accountToDelete;
    }
}