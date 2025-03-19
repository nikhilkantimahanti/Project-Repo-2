public class Pencil {
    // Properties of a Pencil
    public String brand { get; set; }
    public String color { get; set; }
    public Boolean isSharpened { get; set; }
 
    // Constructor
    public Pencil(String brand, String color, Boolean isSharpened) {
        this.brand = brand;
        this.color = color;
        this.isSharpened = isSharpened;
    }
 
    // Method to write with the pencil
    public String write(String text) {
        if (!isSharpened) {
            return 'Cannot write. The pencil needs sharpening.';
        }
        return 'Writing: ' + text;
    }
 
    // Method to sharpen the pencil
    public void sharpen() {
        isSharpened = true;
    }
}