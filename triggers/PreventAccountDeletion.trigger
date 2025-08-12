trigger PreventAccountDeletion on Account (before delete) {
    // Collect Account IDs being deleted
    Set<Id> accountIds = new Set<Id>();
    for(Account acc : Trigger.old) {
        accountIds.add(acc.Id);
    }

    // Query Contacts linked to those Accounts
    Map<Id, List<Contact>> accountToContactsMap = new Map<Id, List<Contact>>();
    for(Contact con : [SELECT Id, AccountId FROM Contact WHERE AccountId IN :accountIds]) {
        if (!accountToContactsMap.containsKey(con.AccountId)) {
            accountToContactsMap.put(con.AccountId, new List<Contact>());
        }
        accountToContactsMap.get(con.AccountId).add(con);
    }

    // Check and add error if any Contact is found
    for(Account acc : Trigger.old) {
        if(accountToContactsMap.containsKey(acc.Id)) {
            acc.addError('You cannot delete this Account because it has related Contacts.');
        }
    }
}