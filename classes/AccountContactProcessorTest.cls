@isTest
public class AccountContactProcessorTest {

    // Test case to create and update Account and Contact with valid data
    @isTest
    public static void testCreateAndUpdateAccountContact_ValidData() {
        // Start the test context
        Test.startTest();

        // Define valid data for the Account and Contact
        String accountName = 'Test Account';
        String contactFirstName = 'John';
        String contactLastName = 'Doe';

        // Call the method from AccountContactProcessor
        String result = AccountContactProcessor.createAndUpdateAccountContact(accountName, contactFirstName, contactLastName);

        // Assert that the result message is correct
        System.assertEquals('Account and Contact created and updated successfully', result);

        // Query the Account and Contact to verify their updates
        Account account = [SELECT Name FROM Account WHERE Name = :accountName + ' - Updated' LIMIT 1];
        Contact contact = [SELECT LastName FROM Contact WHERE LastName = :contactLastName + ' - Updated' LIMIT 1];

        // Assert that the Account and Contact have been updated correctly
        System.assertNotEquals(null, account);
        System.assertEquals(accountName + ' - Updated', account.Name);
        
        System.assertNotEquals(null, contact);
        System.assertEquals(contactLastName + ' - Updated', contact.LastName);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Account name
    @isTest
    public static void testCreateAndUpdateAccountContact_EmptyAccountName() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Account name
        String result = AccountContactProcessor.createAndUpdateAccountContact('', 'John', 'Doe');

        // Assert that the correct error message is returned
        System.assertEquals('Account or Contact information is missing', result);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Contact information
    @isTest
    public static void testCreateAndUpdateAccountContact_MissingContactInfo() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Contact information
        String result = AccountContactProcessor.createAndUpdateAccountContact('Test Account', '', 'Doe');

        // Assert that the correct error message is returned
        System.assertEquals('Account or Contact information is missing', result);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing both Account and Contact information
    @isTest
    public static void testCreateAndUpdateAccountContact_MissingBothInfo() {
        // Start the test context
        Test.startTest();

        // Call the method with missing both Account and Contact information
        String result = AccountContactProcessor.createAndUpdateAccountContact('', '', '');

        // Assert that the correct error message is returned
        System.assertEquals('Account or Contact information is missing', result);

        // Stop the test context
        Test.stopTest();
    }
}