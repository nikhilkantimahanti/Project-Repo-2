@isTest
public class autoPopulateTest {
    @isTest
    static void testConvertMetersToCentimeters() {
        // Test with 1 meter
        Decimal meters = 1;
        Decimal expectedCentimeters = 100;
        Decimal result = autoPopulate.convertMetersToCentimeters(meters);
        System.assertEquals(expectedCentimeters, result, 'Conversion from meters to centimeters failed.');

        // Test with 0 meters
        meters = 0;
        expectedCentimeters = 0;
        result = autoPopulate.convertMetersToCentimeters(meters);
        System.assertEquals(expectedCentimeters, result, 'Conversion from meters to centimeters failed for 0 meters.');

        // Test with negative value
        meters = -1;
        expectedCentimeters = -100;
        result = autoPopulate.convertMetersToCentimeters(meters);
        System.assertEquals(expectedCentimeters, result, 'Conversion from meters to centimeters failed for negative value.');
    }

    @isTest
    static void testConvertMetersToMillimeters() {
        // Test with 1 meter
        Decimal meters = 1;
        Decimal expectedMillimeters = 1000;
        Decimal result = autoPopulate.convertMetersToMillimeters(meters);
        System.assertEquals(expectedMillimeters, result, 'Conversion from meters to millimeters failed.');

        // Test with 0 meters
        meters = 0;
        expectedMillimeters = 0;
        result = autoPopulate.convertMetersToMillimeters(meters);
        System.assertEquals(expectedMillimeters, result, 'Conversion from meters to millimeters failed for 0 meters.');

        // Test with negative value
        meters = -1;
        expectedMillimeters = -1000;
        result = autoPopulate.convertMetersToMillimeters(meters);
        System.assertEquals(expectedMillimeters, result, 'Conversion from meters to millimeters failed for negative value.');
    }
}