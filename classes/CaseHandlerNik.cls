public class CaseHandlerNik {
    // Method to create a new case
    public Case createCase(String subject, String description, Id contactId) {
        Case newCase = new Case(
            Subject = subject,
            Description = description,
            ContactId = contactId,
            Status = 'New'
        );
        insert newCase;
        return newCase;
    }

    // Method to get cases by status
    public List<Case> getCasesByStatus(String status) {
        return [SELECT Id, Subject, Status FROM Case WHERE Status = :status];
    }
}