public class LeadProcessorNik {
    // Method to create a new lead
    public Lead createLead(String firstName, String lastName, String company) {
        Lead newLead = new Lead(
            FirstName = firstName,
            LastName = lastName,
            Company = company,
            Status = 'New'
        );
        insert newLead;
        return newLead;
    }

    // Method to get leads by status
    public List<Lead> getLeadsByStatus(String status) {
        return [SELECT Id, FirstName, LastName, Company, Status FROM Lead WHERE Status = :status];
    }
}