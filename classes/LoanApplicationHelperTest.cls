@isTest
public class LoanApplicationHelperTest {
    @testSetup
    static void setupTestData() {
        // Create a test Account
       //List<Account> acc = new List<Account>(Name = 'Test Customer');
        //insert acc; // Insert account first
 
        // Create a Loan Application record
        Loan_Application__c loan = new Loan_Application__c(
            Approval_Status__c = 'Pending',
           // Customer__c = acc.Id, // Associate Loan Application with created Account
            Interest_Amount__c = 5000,
            Interest_Rate__c = 5,
            Loan_Amount__c = 100000
        );
        insert loan; // Insert Loan Application record
    }
 
    @isTest
    static void testGetLoanApplications() {
        Test.startTest();
        List<LoanApplicationHelper.LoanApplicationWrapper> loans = LoanApplicationHelper.getLoanApplications();
        Test.stopTest();
 
        // Assert that loan applications were retrieved
        System.assert(loans.size() > 0, 'Loan applications should be retrieved');
    }
 
    @isTest
    static void testUpdateLoanApplication() {
        // Fetch the Loan Application record
        Loan_Application__c loan = [SELECT Id FROM Loan_Application__c LIMIT 1];
 
        Test.startTest();
        LoanApplicationHelper.updateLoanApplication(loan.Id, 'Approved', 120000);
        Test.stopTest();
 
        // Retrieve updated record
        Loan_Application__c updatedLoan = [SELECT Approval_Status__c, Loan_Amount__c FROM Loan_Application__c WHERE Id = :loan.Id];
 
        // Assertions
        System.assertEquals('Approved', updatedLoan.Approval_Status__c, 'Approval status should be updated');
        System.assertEquals(120000, updatedLoan.Loan_Amount__c, 'Loan amount should be updated');
    }
}