public class CustomerDataProcessor {

    public static List<Account> createSampleAccounts(Integer count) {
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < count; i++) {
            accounts.add(new Account(Name = 'Test Account ' + i, Industry = 'Technology', Rating = 'Hot'));
        }
        insert accounts;
        return accounts;
    }

    public static List<Contact> createContactsForAccounts(List<Account> accounts) {
        List<Contact> contacts = new List<Contact>();
        for (Account acc : accounts) {
            for (Integer i = 0; i < 2; i++) {
                contacts.add(new Contact(LastName = 'Contact ' + i, Email = 'test' + i + '@example.com', AccountId = acc.Id));
            }
        }
        insert contacts;
        return contacts;
    }

    public static void updateAccountRatings(List<Account> accounts, String newRating) {
        for (Account acc : accounts) {
            acc.Rating = newRating;
        }
        update accounts;
    }

    public static void deleteAllTestAccounts() {
        List<Account> testAccounts = [SELECT Id FROM Account WHERE Name LIKE 'Test Account%'];
        delete testAccounts;
    }

    public static List<Account> getAccountsWithContacts() {
        return [SELECT Id, Name, Rating, Industry, (SELECT Id, LastName, Email FROM Contacts) FROM Account WHERE Name LIKE 'Test Account%'];
    }
}