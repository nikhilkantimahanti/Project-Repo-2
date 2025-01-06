public class AccountContactProcessor {

    // Method to create an Account and a related Contact, then update them
    public static String createAndUpdateAccountContact(String accountName, String contactFirstName, String contactLastName) {
        if (String.isEmpty(accountName) || String.isEmpty(contactFirstName) || String.isEmpty(contactLastName)) {
            return 'Account or Contact information is missing';
        }

        // Create a new Account record
        Account newAccount = new Account(Name = accountName);
        insert newAccount;

        // Create a new Contact record and associate it with the Account
        Contact newContact = new Contact(FirstName = contactFirstName, LastName = contactLastName, AccountId = newAccount.Id);
        insert newContact;

        // Update the Account name
        newAccount.Name = accountName + ' - Updated';
        update newAccount;

        // Update the Contact's Last Name
        newContact.LastName = contactLastName + ' - Updated';
        update newContact;

        return 'Account and Contact created and updated successfully';
    }
}