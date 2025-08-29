public class NKOpportunityStageUpdater {
    /**
     * Ensures Opportunities have a StageName.
     * If StageName is null/blank, sets it to 'Prospecting'.
     * @param opps List of Opportunity records.
     * @return List<Opportunity> Updated opportunities.
     */
    public static List<Opportunity> fillMissingStages(List<Opportunity> opps) {
        if (opps == null || opps.isEmpty()) {
            return new List<Opportunity>();
        }

        List<Opportunity> toUpdate = new List<Opportunity>();

        for (Opportunity o : opps) {
            if (o.StageName == null || o.StageName.trim() == '') {
                o.StageName = 'Prospecting';
                toUpdate.add(o);
            }
        }

        if (!toUpdate.isEmpty()) {
            update toUpdate;
        }

        return toUpdate;
    }
}