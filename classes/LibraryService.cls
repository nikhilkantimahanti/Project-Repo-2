public class LibraryService {

    // Create a Book record
    public static Id addBook(String name, String author, Decimal price) {
        Book__c b = new Book__c(Name = name, Author__c = author, Price__c = price);
        insert b;
        return b.Id;
    }

    // Create a Borrower record (independent of Book)
    public static Id addBorrower(String name, String email, Date borrowDate) {
        Borrower__c borrower = new Borrower__c(
            Name = name,
            Email__c = email,
            Borrow_Date__c = borrowDate
        );
        insert borrower;
        return borrower.Id;
    }

    // Fetch all books
    public static List<Book__c> getAllBooks() {
        return [SELECT Name, Author__c, Price__c FROM Book__c];
    }

    // Fetch all borrowers
    public static List<Borrower__c> getAllBorrowers() {
        return [SELECT Name, Email__c, Borrow_Date__c FROM Borrower__c];
    }
}