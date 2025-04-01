public class SimpleApex {
    public static String greet(String name) {
        if (String.isBlank(name)) {
            return 'Hello, World!';
        }
        return 'Hello, ' + name + '!';
    }

    public static Integer doubleNumber(Integer num) {
        return num * 2;
    }
}