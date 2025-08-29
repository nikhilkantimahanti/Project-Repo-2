@IsTest
private class NK_CaseTaskCreator_Test {

    @IsTest
    static void testCreateFollowUpTasks() {
        // Create Account + Contact
        Account acc = new Account(Name = 'Acme Inc');
        insert acc;
        Contact con = new Contact(FirstName = 'Test', LastName = 'User', AccountId = acc.Id);
        insert con;

        // Create Cases (Closed + Open)
        List<Case> caseList = new List<Case>{
            new Case(Subject = 'Closed Case', Status = 'Closed', AccountId = acc.Id, ContactId = con.Id, Origin = 'Phone'),
            new Case(Subject = 'Open Case', Status = 'New', AccountId = acc.Id, ContactId = con.Id, Origin = 'Email')
        };
        insert caseList;

        // Call the method
        Test.startTest();
        List<Task> createdTasks = NK_CaseTaskCreator.createFollowUpTasks(caseList);
        Test.stopTest();

        // Validate
        System.assertEquals(1, createdTasks.size(), 'Only closed case should generate a Task');
        System.assertEquals('Follow-up after Case Closure', createdTasks[0].Subject);
        System.assertEquals(caseList[0].Id, createdTasks[0].WhatId, 'Task should relate to Closed Case');
    }

    @IsTest
    static void testEmptyAndNullInput() {
        Test.startTest();
        List<Task> result1 = NK_CaseTaskCreator.createFollowUpTasks(new List<Case>());
        System.assertEquals(0, result1.size(), 'Empty input should return empty list');

        List<Task> result2 = NK_CaseTaskCreator.createFollowUpTasks(null);
        System.assertEquals(0, result2.size(), 'Null input should return empty list');
        Test.stopTest();
    }
}