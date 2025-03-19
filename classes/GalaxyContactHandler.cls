public class GalaxyContactHandler {
    // A list to store contacts
    private List<Contact> cosmicContactList;

    // Constructor to initialize the list
    public GalaxyContactHandler() {
        cosmicContactList = new List<Contact>();
    }

    // Method to add a contact to the list
    public void addCosmicContact(Contact newContact) {
        cosmicContactList.add(newContact);
    }

    // Method to get all contacts
    public List<Contact> getAllCosmicContacts() {
        return cosmicContactList;
    }

    // Method to delete a contact by Id
    public void deleteCosmicContact(Id contactId) {
        for (Integer i = 0; i < cosmicContactList.size(); i++) {
            if (cosmicContactList[i].Id == contactId) {
                cosmicContactList.remove(i);
                break;
            }
        }
    }
}