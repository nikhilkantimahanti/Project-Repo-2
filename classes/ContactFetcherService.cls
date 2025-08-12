public with sharing class ContactFetcherService {
    
    // Method to fetch a limited number of Contact records
    public static List<Contact> fetchContacts(Integer limitSize) {
        List<Contact> contacts = [SELECT Id, FirstName, LastName, Email 
                                  FROM Contact 
                                  ORDER BY LastName 
                                  LIMIT :limitSize];
        return contacts;
    }
}