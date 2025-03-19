public class ContactService {
    
    // Method to create contacts for an account
    public static void createContactsForAccount(Id accountId, List<String> contactNames) {
        List<Contact> contactsToInsert = new List<Contact>();
        
        for (String contactName : contactNames) {
            Contact newContact = new Contact(LastName = contactName, AccountId = accountId);
            contactsToInsert.add(newContact);
        }
        
        insert contactsToInsert;
    }
}