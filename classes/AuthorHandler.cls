public class AuthorHandler {
    public static void insertAuthor(String authorName, String location) {
        try {
            Author__c newAuthor = new Author__c();
            newAuthor.Name = authorName;
            newAuthor.Location__c = location;
            
            insert newAuthor;
            System.debug('Author record inserted successfully: ' + newAuthor.Id);
        } catch (Exception e) {
            System.debug('Error inserting Author: ' + e.getMessage());
        }
    }
}