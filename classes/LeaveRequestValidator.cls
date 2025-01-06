public class LeaveRequestValidator {
    
    // Method to convert weight between different units
    public static Decimal convertWeight(Decimal weight, String fromUnit, String toUnit) {
        // Validate the input parameters
        if (weight == null || weight < 0) {
            throw new IllegalArgumentException('Weight must be a positive number');
        }
        
        // Validate units
        if (!isValidUnit(fromUnit) || !isValidUnit(toUnit)) {
            throw new IllegalArgumentException('Unsupported unit conversion');
        }
        
        // Convert the weight to the target unit
        if (fromUnit == 'kg' && toUnit == 'lbs') {
            return weight * 2.20462; // 1 kg = 2.20462 lbs
        } else if (fromUnit == 'kg' && toUnit == 'g') {
            return weight * 1000; // 1 kg = 1000 grams
        } else if (fromUnit == 'lbs' && toUnit == 'kg') {
            return weight / 2.20462; // 1 lb = 0.453592 kg
        } else if (fromUnit == 'lbs' && toUnit == 'g') {
            return weight * 453.592; // 1 lb = 453.592 grams
        } else if (fromUnit == 'g' && toUnit == 'kg') {
            return weight / 1000; // 1 g = 0.001 kg
        } else if (fromUnit == 'g' && toUnit == 'lbs') {
            return weight / 453.592; // 1 g = 0.00220462 lbs
        } else {
            throw new IllegalArgumentException('Unsupported unit conversion');
        }
    }

    // Helper function for validating the weight units
    public static Boolean isValidUnit(String unit) {
        return unit == 'kg' || unit == 'lbs' || unit == 'g';
    }
}