trigger SupportTicketTrigger on Support_Ticket__c (before insert, before update) {
    if (Trigger.isBefore) {
SupportTicketHelper.assignSupportAgent(Trigger.new);
    }
}