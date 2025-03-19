public class ContactNavigator {
    // A list to store contacts across dimensions
    private List<Contact> quantumContactList;

    // Constructor to initialize the list
    public ContactNavigator() {
        quantumContactList = new List<Contact>();
    }

    // Method to add a contact across dimensions
    public void addQuantumContact(Contact newQuantumContact) {
        quantumContactList.add(newQuantumContact);
    }

    // Method to get all contacts across dimensions
    public List<Contact> getAllQuantumContacts() {
        return quantumContactList;
    }

    // Method to delete a quantum contact by Id
    public void eraseQuantumContact(Id quantumContactId) {
        for (Integer i = 0; i < quantumContactList.size(); i++) {
            if (quantumContactList[i].Id == quantumContactId) {
                quantumContactList.remove(i);
                break;
            }
        }
    }
}