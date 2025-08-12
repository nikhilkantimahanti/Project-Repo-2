public class NK_OpportunityHelper {
    /**
     * Updates Opportunity StageName based on Probability.
     * @param oppList List of Opportunity records to update.
     * @return List<Opportunity> Updated opportunities.
     */
    public static List<Opportunity> updateStagesBasedOnProbability(List<Opportunity> oppList) {
        if (oppList == null || oppList.isEmpty()) {
            return new List<Opportunity>();
        }

        for (Opportunity opp : oppList) {
            if (opp.Probability != null) {
                if (opp.Probability >= 75) {
                    opp.StageName = 'Closed Won';
                } else if (opp.Probability >= 50) {
                    opp.StageName = 'Proposal/Price Quote';
                } else if (opp.Probability >= 25) {
                    opp.StageName = 'Qualification';
                } else {
                    opp.StageName = 'Prospecting';
                }
            }
        }

        update oppList;
        return oppList;
    }
}