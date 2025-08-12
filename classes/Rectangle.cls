public class Rectangle {
    // Properties
    public Double length { get; set; }
    public Double width { get; set; }

    // Constructor
    public Rectangle(Double length, Double width) {
        this.length = length;
        this.width = width;
    }

    // Method to calculate area
    public Double calculateArea() {
        return length * width;
    }
}