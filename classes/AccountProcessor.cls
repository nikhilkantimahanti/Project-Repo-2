public class AccountProcessor {  
    // Method to create an Account and update its name
    public static String createAndUpdateAccount(String accountName) {
        // Check if the account name is empty
        if (String.isEmpty(accountName)) {
            return 'Account name cannot be empty';
        }
        
        // Create a new Account record
        Account newAccount = new Account(Name = accountName);
        insert newAccount;
        
        // Update the account name
        newAccount.Name = accountName + ' - Updated';
        update newAccount;
        
        return 'Account created and updated successfully';
    }
}