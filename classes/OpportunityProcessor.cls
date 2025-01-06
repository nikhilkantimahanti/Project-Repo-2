public class OpportunityProcessor {

    // Method to create Account, Contact, and Opportunity, then update them
    public static String createAndUpdateOpportunity(String accountName, String contactFirstName, String contactLastName, String opportunityName, Decimal opportunityAmount) {
        if (String.isEmpty(accountName) || String.isEmpty(contactFirstName) || String.isEmpty(contactLastName) || String.isEmpty(opportunityName) || opportunityAmount <= 0) {
            return 'Missing required fields or invalid Opportunity amount';
        }

        // Create a new Account record
        Account newAccount = new Account(Name = accountName);
        insert newAccount;

        // Create a new Contact record and associate it with the Account
        Contact newContact = new Contact(FirstName = contactFirstName, LastName = contactLastName, AccountId = newAccount.Id);
        insert newContact;

        // Create a new Opportunity record and associate it with the Account and Contact
        Opportunity newOpportunity = new Opportunity(
            Name = opportunityName,
            AccountId = newAccount.Id,
            ContactId = newContact.Id,
            Amount = opportunityAmount,
            StageName = 'Prospecting',
            CloseDate = System.today().addMonths(1)
        );
        insert newOpportunity;

        // Update the Opportunity amount
        newOpportunity.Amount = opportunityAmount + 1000; // Adding 1000 to the Opportunity amount for the update
        update newOpportunity;

        // Update the Contact's Last Name
        newContact.LastName = contactLastName + ' - Updated';
        update newContact;

        // Update the Account's Name
        newAccount.Name = accountName + ' - Updated';
        update newAccount;

        return 'Opportunity, Account, and Contact created and updated successfully';
    }
}