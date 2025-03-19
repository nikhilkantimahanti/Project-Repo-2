public class TempConverter {
    
    // Convert Celsius to Fahrenheit
    public static Decimal cToF(Decimal c) {
        return (c * 9/5) + 32;
    }
 
    // Convert Fahrenheit to Celsius
    public static Decimal fToC(Decimal f) {
        return (f - 32) * 5/9;
    }
}