public class ContactHandler {
    
    // Method to insert new contacts and send a welcome email
    public static void insertContactsAndSendEmails(List<Contact> newContacts) {
        // Insert the new contacts
        try {
            insert newContacts;
            System.debug('Contacts inserted successfully.');
            
            // Send a welcome email to each new contact
            for (Contact contact : newContacts) {
                sendWelcomeEmail(contact);
            }
        } catch (DmlException e) {
            System.debug('An error occurred while inserting contacts: ' + e.getMessage());
        }
    }
    
    // Method to send a welcome email
    private static void sendWelcomeEmail(Contact contact) {
        // Create the email
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setToAddresses(new String[] { contact.Email });
        email.setSubject('Welcome to Our Company!');
        email.setPlainTextBody('Hello ' + contact.FirstName + ',\n\nWelcome to our company! We are excited to have you on board.\n\nBest regards,\nThe Team');
        
        // Send the email
        try {
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { email });
            System.debug('Welcome email sent to ' + contact.Email);
        } catch (EmailException e) {
            System.debug('An error occurred while sending email to ' + contact.Email + ': ' + e.getMessage());
        }
    }
}