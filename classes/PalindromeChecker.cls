public class PalindromeChecker {
	public static Boolean isPalindrome(String input) {
        String reversed = input.reverse();
        return input.equalsIgnoreCase(reversed);
    }
}