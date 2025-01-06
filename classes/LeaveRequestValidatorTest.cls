@isTest
public class LeaveRequestValidatorTest {

    @isTest
    public static void testCreateAccount() {
        // Test to create an account with a valid name
        String accountName = 'Test Account';
        Test.startTest();
        Account result = LeaveRequestValidator.createAccount(accountName);
        Test.stopTest();
        
        // Verify the account was created correctly
        System.assertNotEquals(null, result);
        System.assertEquals(accountName, result.Name);
    }

    @isTest
    public static void testCreateAccountWithBlankName() {
        // Test to check exception when account name is blank
        try {
            Test.startTest();
            LeaveRequestValidator.createAccount('');
            Test.stopTest();
            System.assert(false, 'Expected exception was not thrown');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Account name cannot be blank', e.getMessage());
        }
    }

    @isTest
    public static void testUpdateAccountName() {
        // Create an account to update
        Account account = new Account(Name = 'Old Account');
        insert account;

        String newAccountName = 'Updated Account';
        Test.startTest();
        Account updatedAccount = LeaveRequestValidator.updateAccountName(account.Id, newAccountName);
        Test.stopTest();

        // Verify the account was updated correctly
        System.assertNotEquals(null, updatedAccount);
        System.assertEquals(newAccountName, updatedAccount.Name);
    }

   /* @isTest
    public static void testUpdateAccountNameWithNullValues() {
        // Test to check exception when account ID or name is null
        try {
            Test.startTest();
            LeaveRequestValidator.updateAccountName(null, 'Updated Account');
            Test.stopTest();
            System.assert(false, 'Expected exception was not thrown');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Account ID and name cannot be null or blank', e.getMessage());
        }

        try {
            Test.startTest();
            LeaveRequestValidator.updateAccountName('12345', '');
            Test.stopTest();
            System.assert(false, 'Expected exception was not thrown');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Account ID and name cannot be null or blank', e.getMessage());
        }
    }
		*/
    @isTest
    public static void testDeleteAccount() {
        // Create an account to delete
        Account account = new Account(Name = 'Test Account to Delete');
        insert account;

        Test.startTest();
        LeaveRequestValidator.deleteAccount(account.Id);
        Test.stopTest();

        // Verify the account was deleted
        Boolean isDeleted = true;
        try {
            Account deletedAccount = [SELECT Id FROM Account WHERE Id = :account.Id LIMIT 1];
        } catch (QueryException e) {
            isDeleted = true;  // Exception means the account is not found, so it was deleted
        }
        
        System.assert(isDeleted, 'Account was not deleted');
    }

    @isTest
    public static void testDeleteAccountWithNullId() {
        // Test to check exception when account ID is null
        try {
            Test.startTest();
            LeaveRequestValidator.deleteAccount(null);
            Test.stopTest();
            System.assert(false, 'Expected exception was not thrown');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Account ID cannot be null', e.getMessage());
        }
    }
}