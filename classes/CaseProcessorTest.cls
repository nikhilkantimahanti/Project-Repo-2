@isTest
public class CaseProcessorTest {

    // Test case to create and update Account, Contact, and Case with valid data
    @isTest
    public static void testCreateAndUpdateCase_ValidData() {
        // Start the test context
        Test.startTest();

        // Define valid data for the Account, Contact, and Case
        String accountName = 'Test Account';
        String contactFirstName = 'John';
        String contactLastName = 'Doe';
        String caseSubject = 'Test Case Subject';
        String caseDescription = 'Test Case Description';

        // Call the method from CaseProcessor
        String result = CaseProcessor.createAndUpdateCase(accountName, contactFirstName, contactLastName, caseSubject, caseDescription);

        // Assert that the result message is correct
        System.assertEquals('Case, Account, and Contact created and updated successfully', result);

        // Query the Account, Contact, and Case to verify their updates
        Account account = [SELECT Name FROM Account WHERE Name = :accountName + ' - Updated' LIMIT 1];
        Contact contact = [SELECT LastName FROM Contact WHERE LastName = :contactLastName + ' - Updated' LIMIT 1];
        Case caseRecord = [SELECT Subject, Description FROM Case WHERE Subject = :caseSubject + ' - Updated' LIMIT 1];

        // Assert that the Account, Contact, and Case have been updated correctly
        System.assertNotEquals(null, account);
        System.assertEquals(accountName + ' - Updated', account.Name);

        System.assertNotEquals(null, contact);
        System.assertEquals(contactLastName + ' - Updated', contact.LastName);

        System.assertNotEquals(null, caseRecord);
        System.assertEquals(caseSubject + ' - Updated', caseRecord.Subject);
        System.assertEquals(caseDescription + ' - Updated', caseRecord.Description);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Case Subject
    @isTest
    public static void testCreateAndUpdateCase_MissingCaseSubject() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Case Subject
        String result = CaseProcessor.createAndUpdateCase('Test Account', 'John', 'Doe', '', 'Test Case Description');

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields', result);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Case Description
    @isTest
    public static void testCreateAndUpdateCase_MissingCaseDescription() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Case Description
        String result = CaseProcessor.createAndUpdateCase('Test Account', 'John', 'Doe', 'Test Case Subject', '');

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields', result);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Account name
    @isTest
    public static void testCreateAndUpdateCase_MissingAccountName() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Account name
        String result = CaseProcessor.createAndUpdateCase('', 'John', 'Doe', 'Test Case Subject', 'Test Case Description');

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields', result);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Contact first name
    @isTest
    public static void testCreateAndUpdateCase_MissingContactFirstName() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Contact first name
        String result = CaseProcessor.createAndUpdateCase('Test Account', '', 'Doe', 'Test Case Subject', 'Test Case Description');

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields', result);

        // Stop the test context
        Test.stopTest();
    }
}