@isTest
public class TaskProcessorTest {

    // Test case to create and update Account, Contact, and Task with valid data
    @isTest
    public static void testCreateAndUpdateTask_ValidData() {
        // Start the test context
        Test.startTest();

        // Define valid data for the Account, Contact, and Task
        String accountName = 'Test Account';
        String contactFirstName = 'Alice';
        String contactLastName = 'Smith';
        String taskSubject = 'Follow up on opportunity';
        String taskStatus = 'Not Started';

        // Call the method from TaskProcessor
        String result = TaskProcessor.createAndUpdateTask(accountName, contactFirstName, contactLastName, taskSubject, taskStatus);

        // Assert that the result message is correct
        System.assertEquals('Task, Account, and Contact created and updated successfully', result);

        // Query the Account, Contact, and Task to verify their updates
        Account account = [SELECT Name FROM Account WHERE Name = :accountName + ' - Updated' LIMIT 1];
        Contact contact = [SELECT LastName FROM Contact WHERE LastName = :contactLastName + ' - Updated' LIMIT 1];
        Task task = [SELECT Subject, Status FROM Task WHERE Subject = :taskSubject + ' - Updated' LIMIT 1];

        // Assert that the Account, Contact, and Task have been updated correctly
        System.assertNotEquals(null, account);
        System.assertEquals(accountName + ' - Updated', account.Name);

        System.assertNotEquals(null, contact);
        System.assertEquals(contactLastName + ' - Updated', contact.LastName);

        System.assertNotEquals(null, task);
        System.assertEquals(taskSubject + ' - Updated', task.Subject);
        System.assertEquals('Completed', task.Status);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Task Subject
    @isTest
    public static void testCreateAndUpdateTask_MissingTaskSubject() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Task Subject
        String result = TaskProcessor.createAndUpdateTask('Test Account', 'Alice', 'Smith', '', 'Not Started');

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields', result);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Task Status
    @isTest
    public static void testCreateAndUpdateTask_MissingTaskStatus() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Task Status
        String result = TaskProcessor.createAndUpdateTask('Test Account', 'Alice', 'Smith', 'Follow up on opportunity', '');

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields', result);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Account name
    @isTest
    public static void testCreateAndUpdateTask_MissingAccountName() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Account name
        String result = TaskProcessor.createAndUpdateTask('', 'Alice', 'Smith', 'Follow up on opportunity', 'Not Started');

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields', result);

        // Stop the test context
        Test.stopTest();
    }

    // Test case for missing Contact first name
    @isTest
    public static void testCreateAndUpdateTask_MissingContactFirstName() {
        // Start the test context
        Test.startTest();

        // Call the method with missing Contact first name
        String result = TaskProcessor.createAndUpdateTask('Test Account', '', 'Smith', 'Follow up on opportunity', 'Not Started');

        // Assert that the correct error message is returned
        System.assertEquals('Missing required fields', result);

        // Stop the test context
        Test.stopTest();
    }
}