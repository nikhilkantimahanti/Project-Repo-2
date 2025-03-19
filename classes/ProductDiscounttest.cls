@isTest
public class ProductDiscounttest {

    // Test the calculateDiscountedPrice method with valid inputs
    @isTest
    static void testCalculateDiscountedPrice() {
        Decimal originalPrice = 100.00;
        Decimal discountPercentage = 10.00;

        Decimal result = ProductDiscount.calculateDiscountedPrice(originalPrice, discountPercentage);

        // Expected discounted price after applying 10% discount
        Decimal expectedPrice = 90.00;

        // Assert that the discounted price is correct
        System.assertEquals(expectedPrice, result, 'The discounted price should be 90.00.');
    }

    // Test the method with null inputs to ensure it throws an exception
    @isTest
    static void testCalculateDiscountedPriceWithNullInputs() {
        try {
            ProductDiscount.calculateDiscountedPrice(null, 10.00);
            System.assert(false, 'Expected an exception to be thrown when the original price is null.');
        } catch (IllegalArgumentException e) {
            System.assert(true, 'Exception was successfully thrown for null original price.');
        }

        try {
            ProductDiscount.calculateDiscountedPrice(100.00, null);
            System.assert(false, 'Expected an exception to be thrown when the discount percentage is null.');
        } catch (IllegalArgumentException e) {
            System.assert(true, 'Exception was successfully thrown for null discount percentage.');
        }
    }
}