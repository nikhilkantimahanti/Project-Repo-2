public class ContactSupervisor {
    // A list to store nebula-related contacts
    private List<Contact> nebulaContacts;

    // Constructor to initialize the list
    public ContactSupervisor() {
        nebulaContacts = new List<Contact>();
    }

    // Method to add a nebula contact
    public void registerNebulaContact(Contact newNebulaContact) {
        nebulaContacts.add(newNebulaContact);
    }

    // Method to get all nebula contacts
    public List<Contact> listNebulaContacts() {
        return nebulaContacts;
    }

    // Method to remove a nebula contact by Id
    public void ejectNebulaContact(Id nebulaContactId) {
        for (Integer i = 0; i < nebulaContacts.size(); i++) {
            if (nebulaContacts[i].Id == nebulaContactId) {
                nebulaContacts.remove(i);
                break;
            }
        }
    }
}