@isTest
public class LeadSourceUpdaterTest {

    // Test case to create and update Account, Contact, and Opportunity with valid data
    @isTest
    public static void testCreateAndUpdateOpportunity_ValidData() {
        // Start the test context
        Test.startTest();

        // Define valid data for the Account, Contact, and Opportunity
        String accountName = 'Test Account';
        String contactFirstName = 'Bob';
        String contactLastName = 'Johnson';
        String opportunityName = 'Test Opportunity';
        Decimal opportunityAmount = 10000;

        // Call the method from LeadSourceUpdater
        String result = LeadSourceUpdater.createAndUpdateOpportunity(accountName, contactFirstName, contactLastName, opportunityName, opportunityAmount);

        // Assert that the result message is correct
        System.assertEquals('Opportunity, Account, and Contact created and updated successfully', result);

        // Query the Account, Contact, and Opportunity to verify their updates
        Account account = [SELECT Name FROM Account WHERE Name = :accountName + ' - Updated' LIMIT 1];
        Contact contact = [SELECT LastName FROM Contact WHERE LastName = :contactLastName + ' - Updated' LIMIT 1];
        Opportunity opportunity = [SELECT Name, Amount FROM Opportunity WHERE Name = :opportunityName + ' - Updated' LIMIT 1];

        // Assert that the Account, Contact, and Opportunity have been updated correctly
        System.assertNotEquals(null, account);
        System.assertEquals(accountName + ' - Updated', account.Name);

        System.assertNotEquals(null, contact);
        System.assertEquals(contactLastName + ' - Updated', contact.LastName);

        System.assertNotEquals(null, opportunity);
        System.assertEquals(opportunityName + ' - Updated', opportunity.Name);
        System.assertEquals(opportunityAmount + 5000, opportunity.Amount);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Opportunity Name
    @isTest
    public static void testCreateAndUpdateOpportunity_MissingOpportunityName() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Opportunity Name
        String result = LeadSourceUpdater.createAndUpdateOpportunity('Test Account', 'Bob', 'Johnson', '', 10000);

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields', result);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Opportunity Amount
    @isTest
    public static void testCreateAndUpdateOpportunity_MissingOpportunityAmount() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Opportunity Amount
        String result = LeadSourceUpdater.createAndUpdateOpportunity('Test Account', 'Bob', 'Johnson', 'Test Opportunity', null);

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields', result);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Account name
    @isTest
    public static void testCreateAndUpdateOpportunity_MissingAccountName() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Account name
        String result = LeadSourceUpdater.createAndUpdateOpportunity('', 'Bob', 'Johnson', 'Test Opportunity', 10000);

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields', result);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Contact first name
    @isTest
    public static void testCreateAndUpdateOpportunity_MissingContactFirstName() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Contact first name
        String result = LeadSourceUpdater.createAndUpdateOpportunity('Test Account', '', 'Johnson', 'Test Opportunity', 10000);

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields', result);

        // Stop the test context
        Test.stopTest();
    }
}