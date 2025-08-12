public class ContractStartDateValidator {

    // Method to convert meters to kilometers
    public static Double convertMetersToKilometers(Double meters) {
        if (meters == null) {
            throw new IllegalArgumentException('Length cannot be null');
        }
        return meters / 1000;
    }

    // Method to convert kilometers to meters
    public static Double convertKilometersToMeters(Double kilometers) {
        if (kilometers == null) {
            throw new IllegalArgumentException('Length cannot be null');
        }
        return kilometers * 1000;
    }

    // Method to convert inches to feet
    public static Double convertInchesToFeet(Double inches) {
        if (inches == null) {
            throw new IllegalArgumentException('Length cannot be null');
        }
        return inches / 12;
    }

    // Method to convert feet to inches
    public static Double convertFeetToInches(Double feet) {
        if (feet == null) {
            throw new IllegalArgumentException('Length cannot be null');
        }
        return feet * 12;
    }

    // Method to convert miles to kilometers
    public static Double convertMilesToKilometers(Double miles) {
        if (miles == null) {
            throw new IllegalArgumentException('Length cannot be null');
        }
        return miles * 1.60934;
    }

    // Method to convert kilometers to miles
    public static Double convertKilometersToMiles(Double kilometers) {
        if (kilometers == null) {
            throw new IllegalArgumentException('Length cannot be null');
        }
        return kilometers / 1.60934;
    }
}