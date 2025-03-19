public class ContactMerge{
    // A list to store time-related contacts
    private List<Contact> timeContacts;

    // Constructor to initialize the list
    public ContactMerge() {
        timeContacts = new List<Contact>();
    }

    // Method to add a contact
    public void addTimeContact(Contact newTimeContact) {
        timeContacts.add(newTimeContact);
    }

    // Method to retrieve all time-related contacts
    public List<Contact> getAllTimeContacts() {
        return timeContacts;
    }

    // Method to delete a time contact by Id
    public void eraseTimeContact(Id timeContactId) {
        for (Integer i = 0; i < timeContacts.size(); i++) {
            if (timeContacts[i].Id == timeContactId) {
                timeContacts.remove(i);
                break;
            }
        }
    }
}