public class TriggerHandler {
    
    // Method to update Opportunity status when the StageName is changed
    public static void updateOpportunityStage(List<Opportunity> opportunities) {
        for (Opportunity opp : opportunities) {
            if (opp.StageName == 'Closed Won') {
                opp.Description = 'This opportunity is successfully closed!';
            }
        }
        update opportunities;
    }
}