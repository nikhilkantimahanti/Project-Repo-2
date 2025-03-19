@isTest
public class BookHandlerTest {
    @isTest
    static void testInsertBook() {
        Test.startTest();
        
        BookHandler.insertBook('The Great Gatsby', 19.99);
        
        Test.stopTest();
        
        Book_vin__c insertedBook = [SELECT Id, Name FROM Book_vin__c WHERE Name = 'The Great Gatsby' LIMIT 1];
        System.assertNotEquals(null, insertedBook, 'Book record should be inserted');
    }
}