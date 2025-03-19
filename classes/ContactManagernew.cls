public class ContactManagernew {
    // A list to store contacts
    private List<Contact> phoenixContactList;

    // Constructor to initialize the list
    public ContactManagernew() {
        phoenixContactList = new List<Contact>();
    }

    // Method to add a contact to the list
    public void addPhoenixContact(Contact newContact) {
        phoenixContactList.add(newContact);
    }

    // Method to retrieve all contacts
    public List<Contact> getAllPhoenixContacts() {
        return phoenixContactList;
    }

    // Method to remove a contact by Id
    public void releasePhoenixContact(Id contactId) {
        for (Integer i = 0; i < phoenixContactList.size(); i++) {
            if (phoenixContactList[i].Id == contactId) {
                phoenixContactList.remove(i);
                break;
            }
        }
    }
}