public class OpportunityManagerNik {
    // Method to create a new opportunity
    public Opportunity createOpportunity(String name, Id accountId, Decimal amount) {
        Opportunity newOpportunity = new Opportunity(
            Name = name,
            AccountId = accountId,
            Amount = amount,
            CloseDate = Date.today().addMonths(1),
            StageName = 'Prospecting'
        );
        system.debug('test the statement');
        insert newOpportunity;
        return newOpportunity;
    }

    // Method to get opportunities by stage
    public List<Opportunity> getOpportunitiesByStage(String stage) {
        return [SELECT Id, Name, Amount, StageName FROM Opportunity WHERE StageName = :stage];
    }
    
}