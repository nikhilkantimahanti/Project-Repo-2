public class Tourist {
    // Properties to store tourist information
    public String name { get; set; }
    public String destination { get; set; }
    public Decimal accommodationCost { get; set; }
    public Decimal travelCost { get; set; }
    public Decimal foodCost { get; set; }

    // Constructor to initialize tourist information
    public Tourist(String name, String destination, Decimal accommodationCost, Decimal travelCost, Decimal foodCost) {
        this.name = name;
        this.destination = destination;
        this.accommodationCost = accommodationCost;
        this.travelCost = travelCost;
        this.foodCost = foodCost;
    }

    // Method to calculate the total cost of the trip
    public Decimal calculateTotalCost() {
        return accommodationCost + travelCost + foodCost;
    }

    // Method to update accommodation cost
    public void updateAccommodationCost(Decimal newCost) {
        accommodationCost = newCost;
    }

    // Method to update travel cost
    public void updateTravelCost(Decimal newCost) {
        travelCost = newCost;
    }

    // Method to update food cost
    public void updateFoodCost(Decimal newCost) {
        foodCost = newCost;
    }
}