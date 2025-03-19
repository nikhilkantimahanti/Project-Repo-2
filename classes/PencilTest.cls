@isTest
public class PencilTest {
    @isTest
    static void testPencilBehavior() {
        // Create a pencil instance
        Pencil pencil = new Pencil('Staedtler', 'Yellow', false);
 
        // Verify the initial properties
        System.assertEquals('Staedtler', pencil.brand, 'Brand mismatch');
        System.assertEquals('Yellow', pencil.color, 'Color mismatch');
        System.assertEquals(false, pencil.isSharpened, 'Initial sharpening status mismatch');
 
        // Test writing with an unsharpened pencil
        String writeResult = pencil.write('Test text');
        System.assertEquals('Cannot write. The pencil needs sharpening.', writeResult, 'Writing should not be possible with an unsharpened pencil');
 
        // Sharpen the pencil
        pencil.sharpen();
 
        // Verify the pencil is sharpened
        System.assertEquals(true, pencil.isSharpened, 'Sharpening did not update the status correctly');
 
        // Test writing with a sharpened pencil
        writeResult = pencil.write('Test text');
        System.assertEquals('Writing: Test text', writeResult, 'Writing should work with a sharpened pencil');
    }
}