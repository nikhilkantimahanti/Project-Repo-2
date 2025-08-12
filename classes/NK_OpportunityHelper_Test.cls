@IsTest
private class NK_OpportunityHelper_Test {

    @IsTest
    static void testUpdateStages() {
        // Create test data
        List<Opportunity> testOpps = new List<Opportunity>();

        testOpps.add(new Opportunity(
            Name = 'Test Opp Low', 
            StageName = 'Prospecting',
            CloseDate = Date.today().addDays(30),
            Probability = 10
        ));

        testOpps.add(new Opportunity(
            Name = 'Test Opp Mid', 
            StageName = 'Prospecting',
            CloseDate = Date.today().addDays(30),
            Probability = 40
        ));

        testOpps.add(new Opportunity(
            Name = 'Test Opp High', 
            StageName = 'Prospecting',
            CloseDate = Date.today().addDays(30),
            Probability = 60
        ));

        testOpps.add(new Opportunity(
            Name = 'Test Opp Very High', 
            StageName = 'Prospecting',
            CloseDate = Date.today().addDays(30),
            Probability = 90
        ));

        insert testOpps;

        // Call the method
        Test.startTest();
        List<Opportunity> updatedOpps = NK_OpportunityHelper.updateStagesBasedOnProbability(testOpps);
        Test.stopTest();

        // Verify changes
        System.assertEquals('Prospecting', updatedOpps[0].StageName, 'Should remain Prospecting');
        System.assertEquals('Qualification', updatedOpps[1].StageName, 'Should change to Qualification');
        System.assertEquals('Proposal/Price Quote', updatedOpps[2].StageName, 'Should change to Proposal/Price Quote');
        System.assertEquals('Closed Won', updatedOpps[3].StageName, 'Should change to Closed Won');
    }

    @IsTest
    static void testNullOrEmptyList() {
        Test.startTest();
        List<Opportunity> result1 = NK_OpportunityHelper.updateStagesBasedOnProbability(new List<Opportunity>());
        System.assertEquals(0, result1.size(), 'Empty list should return empty');

        List<Opportunity> result2 = NK_OpportunityHelper.updateStagesBasedOnProbability(null);
        System.assertEquals(0, result2.size(), 'Null input should return empty');
        Test.stopTest();
    }
}