@IsTest
private class NKContactEmailFillerTest {

    @IsTest
    static void testFillEmails_NormalCases() {
        Account acc = new Account(Name = 'Test Acc');
        insert acc;

        List<Contact> contacts = new List<Contact>{
            new Contact(FirstName = 'John', LastName = 'Doe', AccountId = acc.Id, Email = null),
            new Contact(FirstName = 'Jane', LastName = 'Smith', AccountId = acc.Id, Email = ''),
            new Contact(FirstName = 'Sam', LastName = 'Green', AccountId = acc.Id, Email = 'sam.green@example.com')
        };
        insert contacts;

        Test.startTest();
        List<Contact> updated = NKContactEmailFiller.fillMissingEmails(contacts);
        Test.stopTest();

        System.assertEquals(2, updated.size(), 'Two contacts should be updated');
        System.assert(updated[0].Email.contains('john.doe@default.com'));
        System.assert(updated[1].Email.contains('jane.smith@default.com'));
        System.assertEquals('sam.green@example.com', contacts[2].Email, 'Existing email should remain unchanged');
    }

    @IsTest
    static void testFillEmails_MissingNames() {
        Account acc = new Account(Name = 'Test Acc 2');
        insert acc;

        List<Contact> contacts = new List<Contact>{
            new Contact(AccountId = acc.Id, FirstName = null, LastName = null, Email = null)
        };
        insert contacts;

        Test.startTest();
        List<Contact> updated = NKContactEmailFiller.fillMissingEmails(contacts);
        Test.stopTest();

        System.assertEquals(1, updated.size(), 'Should update contact with null names');
        System.assertEquals('unknown.unknown@default.com', updated[0].Email);
    }

    @IsTest
    static void testNullAndEmptyInputs() {
        Test.startTest();
        List<Contact> result1 = NKContactEmailFiller.fillMissingEmails(new List<Contact>());
        System.assertEquals(0, result1.size(), 'Empty input should return empty list');

        List<Contact> result2 = NKContactEmailFiller.fillMissingEmails(null);
        System.assertEquals(0, result2.size(), 'Null input should return empty list');
        Test.stopTest();
    }
}