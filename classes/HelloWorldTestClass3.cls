@IsTest 
private class HelloWorldTestClass3 {
    @IsTest
    static void validateHelloWorld() {
       Book__c b = new Book__c(Name='Behind the Cloud', Price__c=100);
       System.debug('Price before inserting new book: ' + b.Price__c);

       // Insert book
       insert b;
    
       // Retrieve the new book
       b = [SELECT Price__c FROM Book__c WHERE Id =:b.Id];
       System.debug('Price after trigger fired: ' + b.Price__c);

       // Test that the trigger correctly updated the price
       System.assertEquals(90, b.Price__c);
    }
}