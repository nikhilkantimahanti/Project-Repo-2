public class MathUtility4 {

    // Method to calculate the factorial of a number
    public static Integer factorial(Integer num) {
        if (num == null || num < 0) {
            throw new IllegalArgumentException('Input must be a non-negative integer.');
        }

        Integer result = 1;
        for (Integer i = 1; i <= num; i++) {
            result *= i;
        }
        return result;
    }

    // Method to check if a string is a palindrome
    public static Boolean isPalindrome(String input) {
        if (String.isBlank(input)) {
            return false;
        }

        String reversed = '';
        for (Integer i = input.length() - 1; i >= 0; i--) {
            reversed += input.substring(i, i + 1);
        }
        return input.equalsIgnoreCase(reversed);
    }

    // Method to find the greatest common divisor (GCD) of two numbers
    public static Integer gcd(Integer a, Integer b) {
        if (a == null || b == null || a <= 0 || b <= 0) {
            throw new IllegalArgumentException('Input numbers must be positive integers.');
        }

        while (b != 0) {
            Integer temp = b;
            b = a;
            a = temp;
        }
        return a;
    }
}