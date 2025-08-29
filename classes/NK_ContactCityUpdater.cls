public class NK_ContactCityUpdater {
    /**
     * Updates MailingCity on Contacts if blank, using their Account's BillingCity.
     * @param contactList List of Contacts to process.
     * @return List<Contact> Updated contacts.
     */
    public static List<Contact> fillMissingMailingCities(List<Contact> contactList) {
        if (contactList == null || contactList.isEmpty()) {
            return new List<Contact>();
        }

        // Collect Account Ids
        Set<Id> accountIds = new Set<Id>();
        for (Contact con : contactList) {
            if (con.AccountId != null && (con.MailingCity == null || con.MailingCity.trim() == '')) {
                accountIds.add(con.AccountId);
            }
        }

        if (accountIds.isEmpty()) {
            return new List<Contact>();
        }

        // Query Accounts
        Map<Id, Account> accMap = new Map<Id, Account>(
            [SELECT Id, BillingCity FROM Account WHERE Id IN :accountIds]
        );

        // Update MailingCity if needed
        for (Contact con : contactList) {
            if (accMap.containsKey(con.AccountId) && (con.MailingCity == null || con.MailingCity.trim() == '')) {
                con.MailingCity = accMap.get(con.AccountId).BillingCity;
            }
        }

        update contactList;
        return contactList;
    }
}