@isTest
private class LeaveRequestValidatorTest {
    
    // Test method for valid conversions
    @isTest
    static void testConvertWeight() {
        // Test conversion from kg to lbs
        Decimal weightKg = 10;
        Decimal resultLbs = LeaveRequestValidator.convertWeight(weightKg, 'kg', 'lbs');
        System.assertEquals(22.0462, resultLbs, 'Conversion from kg to lbs is incorrect');
        
        // Test conversion from lbs to kg
        Decimal weightLbs = 22.0462;
        Decimal resultKg = LeaveRequestValidator.convertWeight(weightLbs, 'lbs', 'kg');
        System.assertEquals(10, resultKg, 'Conversion from lbs to kg is incorrect');
        
        // Test conversion from kg to grams
        Decimal weightKg2 = 5;
        Decimal resultGrams = LeaveRequestValidator.convertWeight(weightKg2, 'kg', 'g');
        System.assertEquals(5000, resultGrams, 'Conversion from kg to grams is incorrect');
        
        // Test conversion from grams to kg
        Decimal weightGrams = 1000;
        Decimal resultKg3 = LeaveRequestValidator.convertWeight(weightGrams, 'g', 'kg');
        System.assertEquals(1, resultKg3, 'Conversion from grams to kg is incorrect');
        
        // Test conversion from lbs to grams
        Decimal weightLbs2 = 1;
        Decimal resultGrams2 = LeaveRequestValidator.convertWeight(weightLbs2, 'lbs', 'g');
        System.assertEquals(453.592, resultGrams2, 'Conversion from lbs to grams is incorrect');
        
        // Test conversion from grams to lbs
        Decimal weightGrams2 = 1000;
        Decimal resultLbs2 = LeaveRequestValidator.convertWeight(weightGrams2, 'g', 'lbs');
        System.assertEquals(2.20462, resultLbs2, 'Conversion from grams to lbs is incorrect');
    }

    // Test for negative weight input (invalid input)
    @isTest
    static void testInvalidWeight() {
        try {
            LeaveRequestValidator.convertWeight(-5, 'kg', 'lbs');
            System.assert(false, 'Expected exception for negative weight');
        } catch (Exception e) {
            System.assertEquals('Weight must be a positive number', e.getMessage(), 'Unexpected exception message');
        }
    }

    // Test for unsupported unit conversion
    @isTest
    static void testInvalidUnitConversion() {
        try {
            LeaveRequestValidator.convertWeight(10, 'abc', 'kg');
            System.assert(false, 'Expected exception for unsupported unit conversion');
        } catch (Exception e) {
            System.assertEquals('Unsupported unit conversion', e.getMessage(), 'Unexpected exception message');
        }

        try {
            LeaveRequestValidator.convertWeight(10, 'kg', 'xyz');
            System.assert(false, 'Expected exception for unsupported unit conversion');
        } catch (Exception e) {
            System.assertEquals('Unsupported unit conversion', e.getMessage(), 'Unexpected exception message');
        }
    }
    
    // Test for invalid "from" and "to" units (same unit, should return same value)
    @isTest
    static void testSameUnitConversion() {
        Decimal weight = 100;
        Decimal result = LeaveRequestValidator.convertWeight(weight, 'kg', 'kg');
        System.assertEquals(weight, result, 'Conversion with the same unit should return the same value');
    }

    // Test for boundary cases (smallest positive non-zero weight)
    @isTest
    static void testBoundaryWeight() {
        Decimal weight = 0.0001; // A very small weight value
        Decimal resultLbs = LeaveRequestValidator.convertWeight(weight, 'kg', 'lbs');
        System.assertEquals(weight * 2.20462, resultLbs, 'Conversion from kg to lbs with small weight failed');
        
        Decimal resultGrams = LeaveRequestValidator.convertWeight(weight, 'kg', 'g');
        System.assertEquals(weight * 1000, resultGrams, 'Conversion from kg to grams with small weight failed');
    }

    // Test for handling edge cases with large weights
    @isTest
    static void testLargeWeight() {
        Decimal weight = 1000000; // A large weight value (1 million)
        Decimal resultLbs = LeaveRequestValidator.convertWeight(weight, 'kg', 'lbs');
        System.assertEquals(weight * 2.20462, resultLbs, 'Conversion from kg to lbs with large weight failed');
        
        Decimal resultGrams = LeaveRequestValidator.convertWeight(weight, 'kg', 'g');
        System.assertEquals(weight * 1000, resultGrams, 'Conversion from kg to grams with large weight failed');
    }
    
    // Test isValidUnit helper method
    @isTest
    static void testIsValidUnit() {
        System.assert(LeaveRequestValidator.isValidUnit('kg'), 'kg should be a valid unit');
        System.assert(LeaveRequestValidator.isValidUnit('lbs'), 'lbs should be a valid unit');
        System.assert(LeaveRequestValidator.isValidUnit('g'), 'g should be a valid unit');
        
        System.assert(!LeaveRequestValidator.isValidUnit('abc'), 'abc should not be a valid unit');
        System.assert(!LeaveRequestValidator.isValidUnit('xyz'), 'xyz should not be a valid unit');
    }
}