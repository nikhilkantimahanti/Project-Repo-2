@isTest
public class OpportunityProcessorTest {

    // Test case to create and update Account, Contact, and Opportunity with valid data
    @isTest
    public static void testCreateAndUpdateOpportunity_ValidData() {
        // Start the test context
        Test.startTest();

        // Define valid data for the Account, Contact, and Opportunity
        String accountName = 'Test Account';
        String contactFirstName = 'Jane';
        String contactLastName = 'Doe';
        String opportunityName = 'Test Opportunity';
        Decimal opportunityAmount = 5000.00;

        // Call the method from OpportunityProcessor
        String result = OpportunityProcessor.createAndUpdateOpportunity(accountName, contactFirstName, contactLastName, opportunityName, opportunityAmount);

        // Assert that the result message is correct
        System.assertEquals('Opportunity, Account, and Contact created and updated successfully', result);

        // Query the Account, Contact, and Opportunity to verify their updates
        Account account = [SELECT Name FROM Account WHERE Name = :accountName + ' - Updated' LIMIT 1];
        Contact contact = [SELECT LastName FROM Contact WHERE LastName = :contactLastName + ' - Updated' LIMIT 1];
        Opportunity opportunity = [SELECT Amount FROM Opportunity WHERE Name = :opportunityName LIMIT 1];

        // Assert that the Account, Contact, and Opportunity have been updated correctly
        System.assertNotEquals(null, account);
        System.assertEquals(accountName + ' - Updated', account.Name);

        System.assertNotEquals(null, contact);
        System.assertEquals(contactLastName + ' - Updated', contact.LastName);

        System.assertNotEquals(null, opportunity);
        System.assertEquals(opportunityAmount + 1000, opportunity.Amount); // Assert the updated amount

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Opportunity amount
    @isTest
    public static void testCreateAndUpdateOpportunity_MissingOpportunityAmount() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Opportunity amount (zero)
        String result = OpportunityProcessor.createAndUpdateOpportunity('Test Account', 'Jane', 'Doe', 'Test Opportunity', 0);

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields or invalid Opportunity amount', result);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Account name
    @isTest
    public static void testCreateAndUpdateOpportunity_MissingAccountName() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Account name
        String result = OpportunityProcessor.createAndUpdateOpportunity('', 'Jane', 'Doe', 'Test Opportunity', 5000);

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields or invalid Opportunity amount', result);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Contact information
    @isTest
    public static void testCreateAndUpdateOpportunity_MissingContactInfo() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Contact information
        String result = OpportunityProcessor.createAndUpdateOpportunity('Test Account', '', 'Doe', 'Test Opportunity', 5000);

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields or invalid Opportunity amount', result);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Opportunity name
    @isTest
    public static void testCreateAndUpdateOpportunity_MissingOpportunityName() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Opportunity name
        String result = OpportunityProcessor.createAndUpdateOpportunity('Test Account', 'Jane', 'Doe', '', 5000);

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields or invalid Opportunity amount', result);

        // Stop the test context
        Test.stopTest();
    }
}