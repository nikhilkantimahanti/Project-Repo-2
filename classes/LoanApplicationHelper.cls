public with sharing class LoanApplicationHelper {
    public class LoanApplicationWrapper {
        public String appNumber { get; set; }
        public String approvalStatus { get; set; }
        public Id customerId { get; set; }
        public Decimal interestAmount { get; set; }
        public Decimal interestRate { get; set; }
        public Decimal loanAmount { get; set; }
        public String currencyIsoCode { get; set; }
    }
 
    public static List<LoanApplicationWrapper> getLoanApplications() {
        List<LoanApplicationWrapper> loanList = new List<LoanApplicationWrapper>();
 
        for (Loan_Application__c loan : [SELECT App_number__c, Approval_Status__c, Customer__c,
                                          Interest_Amount__c, Interest_Rate__c, Loan_Amount__c, CurrencyIsoCode
                                          FROM Loan_Application__c]) {
            LoanApplicationWrapper wrapper = new LoanApplicationWrapper();
            wrapper.appNumber = loan.App_number__c;
            wrapper.approvalStatus = loan.Approval_Status__c;
            wrapper.customerId = loan.Customer__c;
            wrapper.interestAmount = loan.Interest_Amount__c;
            wrapper.interestRate = loan.Interest_Rate__c;
            wrapper.loanAmount = loan.Loan_Amount__c;
            wrapper.currencyIsoCode = loan.CurrencyIsoCode;
 
            loanList.add(wrapper);
        }
        return loanList;
    }
 
    public static void updateLoanApplication(Id loanId, String approvalStatus, Decimal loanAmount) {
        Loan_Application__c loan = [SELECT Id, Approval_Status__c, Loan_Amount__c FROM Loan_Application__c WHERE Id = :loanId LIMIT 1];
        loan.Approval_Status__c = approvalStatus;
        loan.Loan_Amount__c = loanAmount;
        update loan;
      
       
    }
}