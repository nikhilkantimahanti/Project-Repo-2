public class BookHandler {
    public static void insertBook(String bookName, Decimal price) {
        try {
            Book_vin__c newBook = new Book_vin__c();
            newBook.Name = bookName;
            newBook.Price__c = price;
            
            insert newBook;
            System.debug('Book record inserted successfully: ' + newBook.Id);
        } catch (Exception e) {
            System.debug('Error inserting Book: ' + e.getMessage());
        }
    }
}