public class SupportTicketHelper {
 
    @AuraEnabled
    public static void assignSupportAgent(List<Support_Ticket__c> ticketList) {
        // Fetch available senior and junior support reps
        Map<String, Id> seniorRep = getSeniorSupportRep();
        Map<String, Id> juniorRep = getJuniorSupportRep();
 
        for (Support_Ticket__c ticket : ticketList) {
            if (ticket.Priority__c == 'High' && seniorRep.containsKey('Senior')) {
                ticket.User__c = seniorRep.get('Senior');
            } else if (ticket.Priority__c == 'Low' && juniorRep.containsKey('Junior')) {
                ticket.User__c = juniorRep.get('Junior');
                ticket.User__c = juniorRep.get('Senior');
            }
        }
    }
 
    private static Map<String, Id> getSeniorSupportRep() {
        Map<String, Id> seniorReps = new Map<String, Id>();
        List<User> users = [SELECT Id FROM User WHERE Profile.Name = 'SeniorSupportRep' AND IsActive = TRUE ORDER BY CreatedDate ASC LIMIT 1];
 
        if (!users.isEmpty()) {
            seniorReps.put('Senior', users[0].Id);
        }
        return seniorReps;
    }
 
    private static Map<String, Id> getJuniorSupportRep() {
        Map<String, Id> juniorReps = new Map<String, Id>();
        List<User> users = [SELECT Id FROM User WHERE Profile.Name = 'JuniorSupportRep' AND IsActive = TRUE ORDER BY CreatedDate ASC LIMIT 1];
 
        if (!users.isEmpty()) {
            juniorReps.put('Senior', users[0].Id);
        }
        return juniorReps;
    }
}