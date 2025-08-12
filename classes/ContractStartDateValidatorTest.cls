@isTest
public class ContractStartDateValidatorTest {

    @isTest
    static void testConvertLengthUnits() {
        // Test case 1: Convert 1000 meters to kilometers
        Double meters = 1000.0;
        Double expectedKilometers = 1.0;
        Double actualKilometers = ContractStartDateValidator.convertMetersToKilometers(meters);
        System.assertEquals(expectedKilometers, actualKilometers, 0.0001);

        // Test case 2: Convert 1 kilometer to meters
        Double kilometers = 1.0;
        Double expectedMeters = 1000.0;
        Double actualMeters = ContractStartDateValidator.convertKilometersToMeters(kilometers);
        System.assertEquals(expectedMeters, actualMeters, 0.0001);

        // Test case 3: Convert 24 inches to feet
        Double inches = 24.0;
        Double expectedFeet = 2.0;
        Double actualFeet = ContractStartDateValidator.convertInchesToFeet(inches);
        System.assertEquals(expectedFeet, actualFeet, 0.0001);

        // Test case 4: Convert 2 feet to inches
        Double feet = 2.0;
        Double expectedInches = 24.0;
        Double actualInches = ContractStartDateValidator.convertFeetToInches(feet);
        System.assertEquals(expectedInches, actualInches, 0.0001);

        // Test case 5: Convert 5 miles to kilometers
        Double miles = 5.0;
        Double expectedKilometersFromMiles = 8.0467;
        Double actualKilometersFromMiles = ContractStartDateValidator.convertMilesToKilometers(miles);
        System.assertEquals(expectedKilometersFromMiles, actualKilometersFromMiles, 0.0001);

        // Test case 6: Convert 10 kilometers to miles
        Double kilometersForMiles = 10.0;
        Double expectedMiles = 6.2137;
        Double actualMiles = ContractStartDateValidator.convertKilometersToMiles(kilometersForMiles);
        System.assertEquals(expectedMiles, actualMiles, 0.0001);
        
        // Test case 7: Handle null input (should throw exception)
        try {
            ContractStartDateValidator.convertMetersToKilometers(null);
            System.assert(false, 'An exception should have been thrown for null input');
        } catch (Exception e) {
            System.assertEquals('Length cannot be null', e.getMessage());
        }
    }
}