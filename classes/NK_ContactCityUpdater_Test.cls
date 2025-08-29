@IsTest
private class NK_ContactCityUpdater_Test {

    @IsTest
    static void testFillMissingMailingCities() {
        // Create Account with BillingCity
        Account acc = new Account(Name = 'Test Account', BillingCity = 'New York');
        insert acc;

        // Create Contacts - some with MailingCity, some without
        List<Contact> contacts = new List<Contact>{
            new Contact(FirstName = 'John', LastName = 'Doe', AccountId = acc.Id, MailingCity = null),
            new Contact(FirstName = 'Jane', LastName = 'Smith', AccountId = acc.Id, MailingCity = ''),
            new Contact(FirstName = 'Sam', LastName = 'Brown', AccountId = acc.Id, MailingCity = 'Boston')
        };
        insert contacts;

        // Run method
        Test.startTest();
        List<Contact> updatedContacts = NK_ContactCityUpdater.fillMissingMailingCities(contacts);
        Test.stopTest();

        // Verify results
        System.assertEquals('New York', updatedContacts[0].MailingCity, 'Should be filled from Account');
        System.assertEquals('New York', updatedContacts[1].MailingCity, 'Should be filled from Account');
        System.assertEquals('Boston', updatedContacts[2].MailingCity, 'Should remain unchanged');
    }

    @IsTest
    static void testEmptyAndNullInputs() {
        Test.startTest();
        List<Contact> result1 = NK_ContactCityUpdater.fillMissingMailingCities(new List<Contact>());
        System.assertEquals(0, result1.size(), 'Empty list should return empty');

        List<Contact> result2 = NK_ContactCityUpdater.fillMissingMailingCities(null);
        System.assertEquals(0, result2.size(), 'Null input should return empty');
        Test.stopTest();
    }
}