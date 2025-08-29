@IsTest
private class NKOpportunityStageUpdaterTest {

    @IsTest
    static void testFillMissingStages_NormalCases() {
        Account acc = new Account(Name = 'Test Acc');
        insert acc;

        List<Opportunity> opps = new List<Opportunity>{
            new Opportunity(Name = 'Opp 1', CloseDate = Date.today().addDays(10), AccountId = acc.Id, StageName = null),
            new Opportunity(Name = 'Opp 2', CloseDate = Date.today().addDays(20), AccountId = acc.Id, StageName = ''),
            new Opportunity(Name = 'Opp 3', CloseDate = Date.today().addDays(30), AccountId = acc.Id, StageName = 'Closed Won')
        };
        insert opps;

        Test.startTest();
        List<Opportunity> updated = NKOpportunityStageUpdater.fillMissingStages(opps);
        Test.stopTest();

        System.assertEquals(2, updated.size(), 'Two opportunities should be updated');
        System.assertEquals('Prospecting', updated[0].StageName);
        System.assertEquals('Prospecting', updated[1].StageName);
        System.assertEquals('Closed Won', opps[2].StageName, 'Existing stage should remain unchanged');
    }

    @IsTest
    static void testNullAndEmptyInputs() {
        Test.startTest();
        List<Opportunity> result1 = NKOpportunityStageUpdater.fillMissingStages(new List<Opportunity>());
        System.assertEquals(0, result1.size(), 'Empty input should return empty list');

        List<Opportunity> result2 = NKOpportunityStageUpdater.fillMissingStages(null);
        System.assertEquals(0, result2.size(), 'Null input should return empty list');
        Test.stopTest();
    }
}