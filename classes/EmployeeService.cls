public with sharing class EmployeeService {
    public static List<Employee_c__c> getHighSalaryEmployees(Decimal minSalary) {
        return [SELECT Id, Name, Salary__c FROM Employee_c__c WHERE Salary__c > :minSalary];
    }
}