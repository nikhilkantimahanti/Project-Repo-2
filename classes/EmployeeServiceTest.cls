@isTest
public class EmployeeServiceTest {
    @isTest
    static void testGetHighSalaryEmployees() {
        Employee_c__c emp = new Employee_c__c(Name='John Doe', Emp_Email__c='john@example.com', Salary__c=120000);
        insert emp;

        Test.startTest();
        List<Employee_c__c> result = EmployeeService.getHighSalaryEmployees(100000);
        Test.stopTest();

        System.assertEquals(1, result.size());
    }
}