public class OpportunityPipelineManager {

    public static List<Opportunity> createOpportunitiesForAccount(Id accountId, Integer count) {
        List<Opportunity> opps = new List<Opportunity>();
        for (Integer i = 0; i < count; i++) {
            opps.add(new Opportunity(
                Name = 'Opportunity ' + i,
                StageName = 'Prospecting',
                CloseDate = Date.today().addDays(30 + i),
                Amount = 10000 + (i * 500),
                AccountId = accountId
            ));
        }
        insert opps;
        return opps;
    }

    public static void progressOpportunities(List<Opportunity> opps) {
        for (Opportunity opp : opps) {
            opp.StageName = 'Proposal/Price Quote';
        }
        update opps;
    }

    public static void markOpportunitiesClosedWon(List<Opportunity> opps) {
        for (Opportunity opp : opps) {
            opp.StageName = 'Closed Won';
            opp.CloseDate = Date.today();
        }
        update opps;
    }

    public static List<Opportunity> getClosedWonOpportunities() {
        return [SELECT Id, Name, Amount, StageName, CloseDate FROM Opportunity WHERE StageName = 'Closed Won'];
    }

    public static void deleteAllTestOpportunities() {
        List<Opportunity> opps = [SELECT Id FROM Opportunity WHERE Name LIKE 'Opportunity %'];
        delete opps;
    }
}