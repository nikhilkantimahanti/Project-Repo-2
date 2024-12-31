public class AccountController {

    // Method to update account name
    public static void updateAccountName(Account acc, String newName) {
        if (acc != null && String.isNotBlank(newName)) {
            acc.Name = newName;
            update acc; // Ensure acc is a valid Account object
        } else {
            throw new IllegalArgumentException('Invalid input: Account is null or newName is blank.');
        }
    }

    // Method to delete an account without validation
    public static void deleteAccountWithoutValidation(String accountId) {
        if (String.isNotBlank(accountId)) {
            // Query for the account to delete
            List<Account> accList = [SELECT Id, Name FROM Account WHERE Id = :accountId LIMIT 1];

            // Check if the account exists
            if (!accList.isEmpty()) {
                delete accList[0]; // Delete the first (and only) account in the list
                System.debug('Account deleted successfully: ' + accList[0].Name);
            } else {
                throw new IllegalArgumentException('No account found with the provided ID.');
            }
        } else {
            throw new IllegalArgumentException('Invalid input: accountId is blank.');
        }
    }
}