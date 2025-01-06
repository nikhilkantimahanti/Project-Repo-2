public class CaseProcessor {

    // Method to create Account, Contact, and Case, then update them
    public static String createAndUpdateCase(String accountName, String contactFirstName, String contactLastName, String caseSubject, String caseDescription) {
        if (String.isEmpty(accountName) || String.isEmpty(contactFirstName) || String.isEmpty(contactLastName) || String.isEmpty(caseSubject) || String.isEmpty(caseDescription)) {
            return 'Missing required fields';
        }

        // Create a new Account record
        Account newAccount = new Account(Name = accountName);
        insert newAccount;

        // Create a new Contact record and associate it with the Account
        Contact newContact = new Contact(FirstName = contactFirstName, LastName = contactLastName, AccountId = newAccount.Id);
        insert newContact;

        // Create a new Case record and associate it with the Account and Contact
        Case newCase = new Case(
            Subject = caseSubject,
            Description = caseDescription,
            AccountId = newAccount.Id,
            ContactId = newContact.Id,
            Status = 'New'
        );
        insert newCase;

        // Update the Case's Subject and Description
        newCase.Subject = caseSubject + ' - Updated';
        newCase.Description = caseDescription + ' - Updated';
        update newCase;

        // Update the Contact's Last Name
        newContact.LastName = contactLastName + ' - Updated';
        update newContact;

        // Update the Account's Name
        newAccount.Name = accountName + ' - Updated';
        update newAccount;

        return 'Case, Account, and Contact created and updated successfully';
    }
}