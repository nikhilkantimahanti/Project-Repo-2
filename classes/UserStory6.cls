public class UserStory6 {
    public static void displayContactNames(Id accountId) {
        List<Contact> contacts = [SELECT FirstName, LastName FROM Contact WHERE AccountId = :accountId];
        
        for (Contact c : contacts) {
            System.debug('Contact Name: ' + c.FirstName + ' ' + c.LastName);
        }

        if (contacts.isEmpty()) {
            System.debug('No contacts found for this account.');
        }
    }
}