@isTest
public class AuthorHandlerTest {
    @isTest
    static void testInsertAuthor() {
        Test.startTest();
        
        AuthorHandler.insertAuthor('John Doe', 'New York');
        
        Test.stopTest();
        
        Author__c insertedAuthor = [SELECT Id, Name FROM Author__c WHERE Name = 'John Doe' LIMIT 1];
        System.assertNotEquals(null, insertedAuthor, 'Author record should be inserted');
    }
}