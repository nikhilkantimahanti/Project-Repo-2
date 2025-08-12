@isTest
public class SoundConverterTest {

    @isTest
    static void testDecibelsToBels() {
        Decimal result = SoundConverter.decibelsToBels(100);
        System.assertEquals(10, result);
    }

    @isTest
    static void testBelsToDecibels() {
        Decimal result = SoundConverter.belsToDecibels(10);
        System.assertEquals(100, result);
    }

    @isTest
    static void testDecibelsToNeper() {
        Decimal result = SoundConverter.decibelsToNeper(8.686);
        System.assertEquals(1, result.setScale(2));
    }

    @isTest
    static void testNeperToDecibels() {
        Decimal result = SoundConverter.neperToDecibels(1);
        System.assertEquals(8.686, result.setScale(3));
    }

    @isTest
    static void testNegativeValues() {
        Decimal result = SoundConverter.decibelsToBels(-100);
        System.assertEquals(-10, result);
        
        result = SoundConverter.belsToDecibels(-10);
        System.assertEquals(-100, result);

        result = SoundConverter.decibelsToNeper(-8.686);
        System.assertEquals(-1, result.setScale(2));
        
        result = SoundConverter.neperToDecibels(-1);
        System.assertEquals(-8.686, result.setScale(3));
    }
    
    @isTest
    static void testZeroValues() {
        Decimal result = SoundConverter.decibelsToBels(0);
        System.assertEquals(0, result);

        result = SoundConverter.belsToDecibels(0);
        System.assertEquals(0, result);

        result = SoundConverter.decibelsToNeper(0);
        System.assertEquals(0, result);

        result = SoundConverter.neperToDecibels(0);
        System.assertEquals(0, result);
    }
}