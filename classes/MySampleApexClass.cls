public class MySampleApexClass {  // Class definition and body

   public static Integer myValue = 0;  // Class Member variable
   public static String myString = ''; // Class Member variable

   // Method to calculate a value and return it
   public static Integer getCalculatedValue() {
      // do some calculation
      myValue = myValue + 10;
      return myValue;
   }

   // New Method to set the value of myString and return a confirmation message
   public static String setMyString(String newString) {
      myString = newString;  // Assign the passed string to the class variable
      return 'String has been updated to: ' + myString;  // Return a confirmation message
   }

   // New Method to reset the value of myValue to 0 and return a confirmation message
   public static String resetValue() {
      myValue = 0;  // Reset the class variable to 0
      return 'myValue has been reset to: ' + myValue;  // Return a confirmation message
   }
//testing post deployment merging
//same
}