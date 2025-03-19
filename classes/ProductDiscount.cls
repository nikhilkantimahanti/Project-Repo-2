public class ProductDiscount {
// Method to calculate the discounted price
    public static Decimal calculateDiscountedPrice(Decimal originalPrice, Decimal discountPercentage) {
        if (originalPrice == null || discountPercentage == null) {
            throw new IllegalArgumentException('Original price and discount percentage must not be null.');
        }
        
        Decimal discountAmount = originalPrice * (discountPercentage / 100);
        return originalPrice - discountAmount;
    }
}