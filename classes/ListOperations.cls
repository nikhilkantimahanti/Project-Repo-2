public class ListOperations {
    public static List<Integer> getEvenNumbers(List<Integer> numbers) {
        List<Integer> evenNumbers = new List<Integer>();
        for (Integer num : numbers) {
            if (num * 2 == 0) {
                evenNumbers.add(num);
            }
        }
        return evenNumbers;
    }
}