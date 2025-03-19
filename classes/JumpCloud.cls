public class JumpCloud {

    public static void sayHello(String name) {
        if (String.isBlank(name)) {
            System.debug('Hello, JumpCloud!');
        } else {
            System.debug('Hello, ' + name + ', from JumpCloud!');
        }
    }

    public static Integer addNumbers(Integer num1, Integer num2) {
        if (num1 == null || num2 == null) {
            System.debug('Please provide valid numbers.');
            return null;
        }
        Integer sum = num1 + num2;
        System.debug('The sum is: ' + sum);
        return sum;
    }
}