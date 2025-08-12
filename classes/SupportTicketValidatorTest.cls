@isTest
public class SupportTicketValidatorTest {

    @isTest
    static void testValidateSupportTicket() {
        // Create test data for Case, Account, and Contact (standard Salesforce objects)
        
        // Create an Account for testing
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;
        
        // Create a Case for testing (related to the Account)
        Case testCase = new Case(Subject = 'Test Case', Status = 'New', AccountId = testAccount.Id);
        insert testCase;
        
        // Create a Contact for testing (related to the Account)
        Contact testContact = new Contact(FirstName = 'John', LastName = 'Doe', AccountId = testAccount.Id);
        insert testContact;
        
        // Create an instance of the class to be tested
        SupportTicketValidator validator = new SupportTicketValidator();
        
        // Test the validateSupportTicket method
        Test.startTest();
        validator.validateSupportTicket();
        Test.stopTest();
        
        // Check that the Account was updated (basic check)
        Account updatedAccount = [SELECT Id, Name FROM Account WHERE Id = :testAccount.Id];
        System.assert(updatedAccount.Name.contains('Updated'), 'Account name should be updated.');
        
        // Check that the Case exists and is still open
        Case existingCase = [SELECT Id, Status FROM Case WHERE Id = :testCase.Id];
        System.assertEquals(existingCase.Status, 'New', 'Case should be open.');
        
        // Ensure no exceptions were thrown and everything worked as expected
        System.debug('Test executed successfully.');
    }
}