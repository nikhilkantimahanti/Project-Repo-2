public class TrainingValidator {

    // Method to convert Celsius to Fahrenheit
    public static Double convertCelsiusToFahrenheit(Double celsius) {
        if (celsius == null) {
            throw new IllegalArgumentException('Temperature cannot be null');
        }
        return (celsius * 9 / 5) + 32;
    }
}