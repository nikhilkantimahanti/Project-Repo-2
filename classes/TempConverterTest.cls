@isTest
public class TempConverterTest {
    @isTest
    static void testCToF() {
        Double result = TempConverter.cToF(0.0);
        System.assertEquals(32.0, result);
    }
 
    @isTest
    static void testFToC() {
        Double result = TempConverter.fToC(32.0);
        System.assertEquals(0.0, result);
    }
}