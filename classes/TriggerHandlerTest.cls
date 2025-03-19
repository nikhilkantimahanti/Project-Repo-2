@isTest
public class TriggerHandlerTest {
    
    @isTest
    static void testUpdateOpportunityStage() {
        // Create a test opportunity
        Opportunity opp = new Opportunity(Name = 'Test Opportunity', StageName = 'Prospecting', CloseDate = Date.today());
        insert opp;

        // Update the opportunity stage
        opp.StageName = 'Closed Won';
        
        // Call the trigger handler logic (normally, this would be fired by a trigger)
        Test.startTest();
        TriggerHandler.updateOpportunityStage(new List<Opportunity>{opp});
        Test.stopTest();

        // Verify that the description is updated
        Opportunity updatedOpp = [SELECT Description FROM Opportunity WHERE Id = :opp.Id];
        System.assertEquals('This opportunity is successfully closed!', updatedOpp.Description);
    }
}