@isTest
public class TrainingValidatorTest {

    @isTest
    static void testConvertCelsiusToFahrenheit() {
        // Test case 1: Convert 0 Celsius to Fahrenheit
        Double celsius1 = 0.0;
        Double expectedFahrenheit1 = 32.0;
        Double actualFahrenheit1 = TrainingValidator.convertCelsiusToFahrenheit(celsius1);
        System.assertEquals(expectedFahrenheit1, actualFahrenheit1, '0 Celsius should be equal to 32 Fahrenheit');

        // Test case 2: Convert 100 Celsius to Fahrenheit
        Double celsius2 = 100.0;
        Double expectedFahrenheit2 = 212.0;
        Double actualFahrenheit2 = TrainingValidator.convertCelsiusToFahrenheit(celsius2);
        System.assertEquals(expectedFahrenheit2, actualFahrenheit2, '100 Celsius should be equal to 212 Fahrenheit');

        // Test case 3: Convert -40 Celsius to Fahrenheit
        Double celsius3 = -40.0;
        Double expectedFahrenheit3 = -40.0;
        Double actualFahrenheit3 = TrainingValidator.convertCelsiusToFahrenheit(celsius3);
        System.assertEquals(expectedFahrenheit3, actualFahrenheit3, '-40 Celsius should be equal to -40 Fahrenheit');
        
        // Test case 4: Handle null input (should throw exception)
        try {
            TrainingValidator.convertCelsiusToFahrenheit(null);
            System.assert(false, 'An exception should have been thrown for null input');
        } catch (Exception e) {
            System.assertEquals('Temperature cannot be null', e.getMessage(), 'Expected exception message for null input');
        }
    }
}