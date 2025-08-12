public class UserStory4 {
    public static void sendWelcomeEmail(Id userId) {
        User newUser = [SELECT Id, Email, FirstName FROM User WHERE Id = :userId LIMIT 1];
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setToAddresses(new String[] { newUser.Email });
        mail.setSubject('Welcome to Our Platform');
        mail.setPlainTextBody('Hello ' + newUser.FirstName + ', welcome to our Salesforce platform!');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
}