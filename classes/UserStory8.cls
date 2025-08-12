public class UserStory8 {
    public static Boolean hasDuplicateDomain(String domain) {
        List<Account> accounts = [SELECT Id, Website FROM Account WHERE Website LIKE :('%' + domain)];
        return accounts.size() > 1;
    }
}