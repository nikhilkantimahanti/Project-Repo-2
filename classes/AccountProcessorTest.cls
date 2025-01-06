@isTest
public class AccountProcessorTest {
   
    // Test case to create and update account with a valid name
    @isTest
    public static void testCreateAndUpdateAccount_ValidName() {
        // Start the test context
        Test.startTest();
        
        // Define the account name to be used in the test
        String accountName = 'Test Account';
        
        // Call the method from AccountProcessor
        String result = AccountProcessor.createAndUpdateAccount(accountName);
        
        // Assert that the result message is correct
        System.assertEquals('Account created and updated successfully', result);
        
        // Query the account to verify the update
        Account account = [SELECT Name FROM Account WHERE Name = :accountName + ' - Updated' LIMIT 1];
        System.assertNotEquals(null, account);
        System.assertEquals(accountName + ' - Updated', account.Name);
        
        // Stop the test context
        Test.stopTest();
    }
   
    // Test case for an empty account name
    @isTest
    public static void testCreateAndUpdateAccount_EmptyName() {
        // Start the test context
        Test.startTest();
        
        // Call the method with an empty account name
        String result = AccountProcessor.createAndUpdateAccount('');
        
        // Assert that the correct error message is returned
        System.assertEquals('Account name cannot be empty', result);
        
        // Stop the test context
        Test.stopTest();
    }
    
    // Test case for null account name
    @isTest
    public static void testCreateAndUpdateAccount_NullName() {
        // Start the test context
        Test.startTest();
        
        // Call the method with a null account name
        String result = AccountProcessor.createAndUpdateAccount(null);
        
        // Assert that the correct error message is returned
        System.assertEquals('Account name cannot be empty', result);
        
        // Stop the test context
        Test.stopTest();
    }
}