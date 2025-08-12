public class CopilotExampleClass {
    
    // Define a variable
    public String name;
    
    // Constructor method
    public CopilotExampleClass(String inputName) {
        this.name = inputName;
    }
    
    // Method to print a greeting
    public void greet() {
        System.debug('Hello, my name is ' + name + '!');
    }
    
    // Method to add two numbers
    public Integer addNumbers(Integer num1, Integer num2) {
        return num1 + num2;
    }
    
    // Method to display a farewell message
    public void farewell() {
        System.debug('Goodbye from ' + name + '!');
    }
}