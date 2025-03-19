public class ContactRegistry {
    // A list to store dragon contacts
    private List<Contact> dragonContacts;

    // Constructor to initialize the list
    public ContactRegistry() {
        dragonContacts = new List<Contact>();
    }

    // Method to add a dragon contact
    public void addDragonContact(Contact newDragon) {
        dragonContacts.add(newDragon);
    }

    // Method to retrieve all dragon contacts
    public List<Contact> getAllDragons() {
        return dragonContacts;
    }

    // Method to banish a dragon contact by Id
    public void banishDragonContact(Id dragonId) {
        for (Integer i = 0; i < dragonContacts.size(); i++) {
            if (dragonContacts[i].Id == dragonId) {
                dragonContacts.remove(i);
                break;
            }
        }
    }
}