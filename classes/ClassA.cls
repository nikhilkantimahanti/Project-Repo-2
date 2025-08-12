public with sharing class ClassA {
    
    // Method to create a new Contact
    public static void createContact(String firstName, String lastName, String email) {
        Contact newContact = new Contact(
            FirstName = firstName,
            LastName = lastName,
            Email = email
        );
        
        try {
            insert newContact;
            System.debug('Contact created with Id: ' + newContact.Id);
        } catch (DmlException e) {
            System.debug('Failed to create contact: ' + e.getMessage());
        }
    }
}