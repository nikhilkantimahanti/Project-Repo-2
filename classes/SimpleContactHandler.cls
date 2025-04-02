public class SimpleContactHandler {

    // Method to create a new contact and send a welcome email
    public static void createContactAndSendEmail(String firstName, String lastName, String emailAddress) {
        // Create a new contact
        Contact newContact = new Contact();
        newContact.FirstName = firstName;
        newContact.LastName = lastName;
        newContact.Email = emailAddress;

        // Insert the new contact
        try {
            insert newContact;
            System.debug('Contact created successfully.');

            // Send a welcome email
            sendWelcomeEmail(newContact);
        } catch (DmlException e) {
            System.debug('An error occurred while creating the contact: ' + e.getMessage());
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