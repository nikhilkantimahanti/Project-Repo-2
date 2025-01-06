public class TaskProcessor {

    // Method to create Account, Contact, and Task, then update them
    public static String createAndUpdateTask(String accountName, String contactFirstName, String contactLastName, String taskSubject, String taskStatus) {
        if (String.isEmpty(accountName) || String.isEmpty(contactFirstName) || String.isEmpty(contactLastName) || String.isEmpty(taskSubject) || String.isEmpty(taskStatus)) {
            return 'Missing required fields';
        }

        // Create a new Account record
        Account newAccount = new Account(Name = accountName);
        insert newAccount;

        // Create a new Contact record and associate it with the Account
        Contact newContact = new Contact(FirstName = contactFirstName, LastName = contactLastName, AccountId = newAccount.Id);
        insert newContact;

        // Create a new Task record and associate it with the Account and Contact
        Task newTask = new Task(
            Subject = taskSubject,
            Status = taskStatus,
            WhatId = newAccount.Id,
            WhoId = newContact.Id,
            Priority = 'Normal',
            ActivityDate = System.today().addDays(7)
        );
        insert newTask;

        // Update the Task's Subject and Status
        newTask.Subject = taskSubject + ' - Updated';
        newTask.Status = 'Completed';
        update newTask;

        // Update the Contact's Last Name
        newContact.LastName = contactLastName + ' - Updated';
        update newContact;

        // Update the Account's Name
        newAccount.Name = accountName + ' - Updated';
        update newAccount;

        return 'Task, Account, and Contact created and updated successfully';
    }
}