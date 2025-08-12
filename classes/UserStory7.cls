public class UserStory7 {
    public static void convertLead(Id leadId) {
        Database.LeadConvert lc = new Database.LeadConvert();
        lc.setLeadId(leadId);
        lc.setDoNotCreateOpportunity(true);

        Database.LeadConvertResult lcr = Database.convertLead(lc);
        if (!lcr.isSuccess()) {
            System.debug('Lead conversion failed: ' + lcr.getErrors()[0].getMessage());
        }
    }
}