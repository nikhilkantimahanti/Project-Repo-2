public class sfTest{
    // Properties to store vehicle information
    public String make { get; set; }
    public String model { get; set; }
    public Integer year { get; set; }
    public Decimal purchasePrice { get; set; }
    public Decimal maintenanceCost { get; set; }
    public Decimal fuelCost { get; set; }

    // Constructor to initialize vehicle information
    public sfTest(String make, String model, Integer year, Decimal purchasePrice, Decimal maintenanceCost, Decimal fuelCost) {
        this.make = make;
        this.model = model;
        this.year = year;
        this.purchasePrice = purchasePrice;
        this.maintenanceCost = maintenanceCost;
        this.fuelCost = fuelCost;
    }

    // Method to calculate the total cost of ownership
    public Decimal calculateTotalCost() {
        return purchasePrice + maintenanceCost + fuelCost;
    }

    // Method to update maintenance cost
    public void updateMaintenanceCost(Decimal newCost) {
        maintenanceCost = newCost;
    }

    // Method to update fuel cost
    public void updateFuelCost(Decimal newCost) {
        fuelCost = newCost;
    }
}