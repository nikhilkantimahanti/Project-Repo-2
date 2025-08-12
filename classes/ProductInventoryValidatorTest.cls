@isTest
public class ProductInventoryValidatorTest {
    
    @isTest
    static void testValidateInventory() {
        // Create test data for Product2 and Account (Standard Salesforce Objects)
        Product2 testProduct = new Product2(Name = 'Test Product', IsActive = true, Family = 'Test Family');
        insert testProduct;
        
        // Create test Account records
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;

        // Create test Opportunity for the Account
        Opportunity testOpportunity = new Opportunity(Name = 'Test Opportunity', 
                                                      AccountId = testAccount.Id, 
                                                      StageName = 'Prospecting', 
                                                      CloseDate = System.today().addDays(30));
        insert testOpportunity;
        
        // Create an instance of the class to be tested
        ProductInventoryValidator validator = new ProductInventoryValidator();
        
        // Test the validateInventory method
        Test.startTest();
        validator.validateInventory();
        Test.stopTest();
        
        // Check that Account was updated (basic check)
        Account updatedAccount = [SELECT Id, Name FROM Account WHERE Id = :testAccount.Id];
        System.assert(updatedAccount.Name.contains('Updated'), 'Account name should be updated.');
        
        // Check that the Opportunity record exists
        Opportunity existingOpportunity = [SELECT Id, Name FROM Opportunity WHERE Id = :testOpportunity.Id];
        System.assertNotEquals(existingOpportunity, null, 'Opportunity should exist.');
        
        // Ensure no exceptions were thrown and everything worked as expected
        System.debug('Test executed successfully.');
    }
}