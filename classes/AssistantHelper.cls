public class AssistantHelper {

    // Method to add two numbers
    public static Integer addNumbers(Integer a, Integer b) {
        return a + b;
    }

    // Method to subtract two numbers
    public static Integer subtractNumbers(Integer a, Integer b) {
        return a - b;
    }

    // Method to reverse a string
    public static String reverseString(String input) {
        String reversed = '';
        for (Integer i = input.length() - 1; i >= 0; i--) {
            reversed += input.substring(i, i + 1);
        }
        return reversed;
    }

    // Method to capitalize the first letter of each word in a string
    public static String capitalizeWords(String input) {
        List<String> words = input.split(' ');
        for (Integer i = 0; i < words.size(); i++) {
            words[i] = words[i].capitalize();
        }
        return String.join(words, ' ');
    }
}